# 5 Case Study: Lockdown traffic 


The visual analysis tool should work equally well regardless of the velocity of data generation or the cadence of change. For that matter, the temporally dense dataset should serve well for designing a cartographic interface even though the dataset is not itself consumed "real-time". We use this approach in the concluding case study about changes in traffic speeds during the first two months of pandemic restrictions in Brno.

We explore the possiilites and limitations of vector tiles to accomodate the temporal density of a dateset originally published as a live stream. 


## 4.3 Spatial and temporal correlations

Causation-related questions for cartography:
- finding spatio-temporal co-location that would support causation hypothesis is in currently realized by comparing spatial patterns. The causal delays may hamper such comparison, one approach is extend the time range of records (e.g. comparing cumulative data within two choropleths can smooth the volatility in favor of the overall tendency). 
- Another approach is in looking for some general similarities between two sets of snapshots (spatial patterns) – if there is some similarity occurring at some interval then we have identified the delay interval. This is spatial but not temporal collocation. Problem: this assumes causal relationships across the whole area of pattern – how to search for delay in just a sub area? Also e.g. in networks the cause and the effect are spatially secluded -- in networks the temporal delay points to source location in the network
- Temporal but not spatial collocation – is map a good tool for displaying this (rather a bar chart? Yes e.g moving air masses – we infer the future state in place from the state in past elsewhere)
- What amount of apparent spatio-temporal collocation allows to rule out epiphenomena? Can map alone rule out a hidden common variable?
- How to map causal-like relationships, e.g. potential for causation to happen via variations of state across the area?
- overall, the ability of dynamic maps to find these collocations and link them to causation is to be assessed, but how? :)


## 4.4 Representing time in digital maps

@kriglestein2014pep

Two ways of representing time: -- repr. time with space (e.g. time lines), rep. time with time (animation)


### 4.4.1 Small multiples

-- small multiples good for longer time periods -- empirical research: boyandin2012qualitative (We observed that with animation the subjects tended to make more findings concerning geographically local events and changes between subsequent years. With small-multiples more findings concerning longer time periods were made. Besides, our results suggest that switching from one view to the other might lead to an increase in the numbers of findings of specific types made by the subjects which can be beneficial for certain tasks.) and irina2008novel (eye tracking)

-- small movement of clusters are hard to detect with s.m. --griffin2006comparison (We found that map readers answer more quickly and identify more patterns correctly when using animated maps than when using static small-multiple maps. We also found that pace and cluster coherence interact so that different paces are more effective for identifying certain types of clusters (none vs. subtle vs. strong), and that there are some gender differences in the animated condition.)

-- limited number s.m. to be effective -- dransch2010assessing

@tufte1998visual
-- on multiples: "Multiples represent and narate sequences of motions. Multiples amplify, intensify, and meaning in images. Multiples difectly depict comparisons, the essence of statistical thinking." --          for example of multiples think Muybridge.

Some show parallelism, some depict motion -- in such case "viewers must interpolate between images, closing up  gaps." "Space replaces time as the sequencing dimension. ... Sequences of still images suffer the obvious (though no less important in being so) loss of the experiance of the passage of time, the loss of the rates and rythms of the actual motion," -- often aggravated by omitting any explicit time scale.
-- on confections: "...confection is an assembly of many visual events, selected (...) from various Streams of Story {quote from Rhushdie -- Haroun and the sea of stories}, than brought together and juxtaposed on the still flatland of paper. By means of multiplicity of image-events, confections illustrate an argument, show and enforce visual comparisons, combine the real and imagined and tell us yet another story.
-- Dataviz can roll-back the time variously tinker with data representations thus bypassing the need to use metaphors and verbal descriptions.

### 4.4.2 Animation 

-- time interval for animation -- immediate expression, cummulative, something between

opseorafia vs kinematografia

@weibel1996kurt v preklade @vcihak2013ponorna -- "Muybridgea následovali ti umělci kterí se zajímali o pohyb, dynamiku, montáž a imitaci reálného života; Mareye ti, kterím záležalo na vidění, přerušní a konstrukci filmové reality. Kinematografie nakonec využila aparátem poskytnutou iluzi pohybu aby film postavila do služeb literatury, divadla a opery. Opseografie chce naproti tomu film rozvíjet dále jako outonomní umění a udělat z něj umění vidění (vnímání)."


### 4.4.3 Space time cubes and dimensionality

@richards2004individuals

Space-time cube -- maybe a simplistic view of time, but also a rich source for interpreting the world as we normally experience it.

Dimensionality -- x-y-z-t, speaking of "absolute" space is doubtfull, althought instristically time and space may be absoulute, they are always measured in some arbitrary and subjective coordinate systems. 

Euler vs Langrange -- Eulerian approach: making observations at fixed spaital locations (time series, etc.), which are used to infer the time-space structure of the phenomenon under investigation. Lagrangian representation: a finite unit is tacked along its course -- coordinate frame is static and dynamic phenomena are measured relative to iths course as it moves through the space (buoy).

Collapse of dimensionality (e.g. transformation from 3D to 2D) can lead to loosing information, decreasing reliability.

(And even the) brain has a difficulty coping with systems whose 4-D evolution destroys much of the evidence of their prior states...

Large scale and long term require simplification. ...when high-dimensional system behaviour can be well described, it may be possible to identify consistent low-dimensional behavior patterns that can be represented more simply without direct reference to the underlying 4-D process.

Phase space, in. geography e.g. Melton -- four dimensional phase space of drainage basin properties...
Structure vs agency: The spatially distributed feedback between the form (structure) and process (agency) is therfore a broadly relevant conceptual framework for analysis of the dynamics of the systems...
Agent based modelling -- Regions are essentially aggregates - of smaller entities, of common characteristics -  which in turn are are 'constructed' by the Lagrangian behaviour of the individuals within them. Places are therefore emergent properties of large-sample individual behaviour in 4-D space-time.


On space-time cubes -- is a useful concept for imagining the relations between spatial, temporal and non-spatial dimensions (@guo2006visualization). Even though our spatial imagination is limited by 3-dimensionality of our everyday experience, data cubes allows us to assing visual clue to otherwise abstract database queries such as slicing and dicing. On the other hand intracting with the cube itself feels not user friendly, so intractive UIs typically use maps as slices of the cube -- so the spatial metaphor is always coherent timewise (true? maybe traces are an exception). 

Unused potential of s-t cubes becomes clear when considered together with searching for cyclical time patterns in spatial subsets (collumns of a cube) or when spatially correlating two phenomena with time delay (comparing slices). (TODO some picture of cubes to make it more clear)


## 4.5 Time series data compression

how to encode and decode time based rles to vector tiles
- rle - will save memory?
-- TODO popísať ako a prečo to nevyšlo

time series compression algs -- https://blog.timescale.com/blog/time-series-compression-algorithms-explained/
možno do todos -- pg + timescale + tegola

 

## 4.7 Case Study: Pandemics traffic exploration


Two aspects:
- data processing: how to use vector tiles to present historical overview of data primarily intended for real time consumption? (compression should allow adding new data, shouldn't preclude the real-time scenario)
- interactive cartographic visualisation: how to present data in variable time granularity, so that user can observe it smoothly, make assumptions and comparisons?


draft classification:

- high average speeds, low variability (highways)
- low speeds and variability (tiny segments)
- variable speeds throughout the day (inner city alleys)

^ how this all changed during the lockdown?

caveats
Traffic speed does not bear information on car density? -- what is the relation? in pandemic it should be higher?

### 4.7.1 Data sources and transformations

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


### 4.7.2 app architecture

(describe database solution and other options)

- timescaledb?
- influxdb?
- geomesa?
- geotrellis?

- pipeline for generating vector tyles from these data?
- analytical schema for vector tiles used for trafic display?

tegola for tile creation + serving real time from the postgres database?
https://tegola.io/documentation/getting-started/

### 4.7.3 User interface design

TODO: note on scale levels in mapbox streeets layer (example with live traffic screening)

https://api.mapbox.com/styles/v1/ppeettoo/ck4yfkusp1ejb1cmnpfnwvecc.html?fresh=true&title=view&access_token=pk.eyJ1IjoicHBlZXR0b28iLCJhIjoiY2loN21nMTBuMHQ1YXVta2l6YjJzbHM4YSJ9.cpjhFrPRqzOF037dktUgBw#11.06/49.1846/16.6589

Images: img-live-mb-traffic-1,2,3.png


### 4.7.4 Notable findings

- what spatio-temporal queries are enabled by this kind of visualisation? Which are not? (see chapter 2)

### 4.7.5 Possible extensions
