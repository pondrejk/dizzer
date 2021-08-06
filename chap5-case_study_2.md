# 5 Case Study: Lockdown traffic speeds

In this case study we explore the possibilities and limitations of vector tiles to accommodate the temporal density of a dataset originally published as a live stream. For this purpose we chose to visualize changes in traffic speeds in the city of Brno. The temporal range of the source dataset e period form the 16th of March to the 10th of May 2020^[The author would like to thank Mapbox, Inc. for generously providing the traffic data sample for the purpose of this case study.]. This time period coincidentally matches with the first period of government restrictions in Czech Republic to prevent the spread of the COVID-19 pandemic. The size, spatial and temporal detail of the dataset posed a challenge both in terms of data processing as well as in terms of designing the interactive cartographic visualisation^[Live demo of the application is accessible at <pondrejk.eu/traffic>, screenshots of the interface can be found in appendix c.].

## 5.1 Data sources and transformations

- description of initial data source from mapbox
<https://docs.mapbox.com/traffic-data/overview/data/>

**Typical file content**

In their uncompressed form, each CSV file contains one line per road segment: segment_identifier,speed_1,speed_2,…,speed_2016
 - segment_identifier: Either a comma-separated pair of OpenStreetMap node IDs or an OpenLR string.
 - speed_1,speed_2,…,speed_2016: *2,016* comma-separated integer speeds in kilometers per hour, starting at 0:00 Sunday in the file’s time zone. Each value shows the usual speed during a five-minute period of a typical week within that road segment.

Files (prague) at large zoomlevel:
1 086 958 lines (segment pairs)
2016 rows

process so far 
- get just the first 2 collumns from one traffic files
- extract unique node IDS from traffic data (form these 2 cols) -- script https://github.com/pondrejk/scripts/blob/master/data/unique-nodes.py
- find coordinates for unique nodes -- https://github.com/pondrejk/scripts/blob/master/data/get-node-coordinates.py
- load point coordinates to qgis, get intersection with buffered brno area
- done Brno-selected_nodes.csv
brno points length
38293
- then find all the segments that contain the said points (form the first 2 colls of the initial file, than deduplicate)
brno segments length:
131 257

celkový rozsah dat pro brno
131257 x 2016 x 14 = :

- now the challenge is to extract the data lines for brno, this time with attributes (2016 cols) -- which means comparing and finding 131257 in 1086958 lines for 14 files.


*out-of-core computation (small tools for big data)*

- quick notes on manifesto
https://smallbigdata.github.io/manifesto.html
https://pythonspeed.com/memory/ -- mainly section on Data management techniques -- first estimaton, then basic techniques

https://pythonspeed.com/articles/estimating-memory-usage/
https://pythonspeed.com/articles/data-doesnt-fit-in-memory/

- code changes (not our case)
- compression 
- chunking 

basically map reduce
So here’s how you can go from code that reads everything at once to code that reads in chunks:

    Separate the code that reads the data from the code that processes the data.
    Use the new processing function, by mapping it across the results of reading the file chunk-by-chunk.
    Figure out a reducer function that can combine the processed chunks into a final result.

- indexing with sqlite 
problem is the limitation to number of collumns (2000 in sqlite), it can be increased by setting a parameter at compile time, though using a custom compiled database makes the related code specific to it and not portable. Other solutions are data warehouses, alternative databases -- TODO check

- parallelism -- dask (even with chunked storage, computation can become a bottleneck)

Dask isn’t a panacea, of course:
    Parallelism has overhead, it won’t always make things finish faster. And it doesn’t reduce the CPU time, so if you’re already saturating your CPUs it won’t speed things up on wallclock time either.
    Some tuning is needed. Larger block sizes increase memory use, but up to a point also allow faster processing.

Dask work -- final scrpt combining chunking and parallelization:
 https://github.com/pondrejk/scripts/blob/master/data/select-segments-03-dask.py

Runing on i7 8 cores, 30 gb ram, 1 select:
[########################################] | 100% Completed |  3min 32.8s


- *inset* gpu utilization (coda??)
- reading from disk mmap() vs. Zarr/HDF5 -- doesn't help much

extra: GPU utilizaiton in computation:
https://www.geeksforgeeks.org/running-python-script-on-gpu/ numba (only NVIDIA GPUs supported)
- computation heavy solutions https://pytorch.org/docs/stable/notes/cuda.html
- https://www.tensorflow.org/guide/gpu


How to encode time series into vector tiles
- split to files per week?
- split spatially to districts?
- connect to database? (good for additional diagrams)
- change z axis and camera view


## 5.2 app architecture

(describe database solution and other options)

- timescaledb?
- influxdb?
- geomesa?
- geotrellis?

- pipeline for generating vector tyles from these data?
- analytical schema for vector tiles used for trafic display?

tegola for tile creation + serving real time from the postgres database?
https://tegola.io/documentation/getting-started/

## 4.3 Cartographic decisions

@kriglestein2014pep

Two ways of representing time: -- repr. time with space (e.g. time lines), rep. time with time (animation)


## 4.4 User interface design

TODO: note on scale levels in mapbox streeets layer (example with live traffic screening)

https://api.mapbox.com/styles/v1/ppeettoo/ck4yfkusp1ejb1cmnpfnwvecc.html?fresh=true&title=view&access_token=pk.eyJ1IjoicHBlZXR0b28iLCJhIjoiY2loN21nMTBuMHQ1YXVta2l6YjJzbHM4YSJ9.cpjhFrPRqzOF037dktUgBw#11.06/49.1846/16.6589

Images: img-live-mb-traffic-1,2,3.png


## 4.5 Notable findings

- what spatio-temporal queries are enabled by this kind of visualisation? Which are not? (see chapter 2)

draft classification:

- high average speeds, low variability (highways)
- low speeds and variability (tiny segments)
- variable speeds throughout the day (inner city alleys)

^ how this all changed during the lockdown?

caveats
Traffic speed does not bear information on car density? -- what is the relation? in pandemic it should be higher?

## 4.6 Possible extensions

The visual analysis tool should work equally well regardless of the velocity of data generation or the cadence of change. For that matter, the temporally dense dataset should serve well for designing a cartographic interface even though the dataset is not itself consumed "real-time". 
