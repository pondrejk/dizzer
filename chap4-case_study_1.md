## 3.6 Case Study: Urban recommendation system

Throughout the previous chapter we took a rather winding path trough various concepts -- data processing pipelines, hexagonal aggregation, rendering technologies, vector tiles and user interface design. In this concluding section, we present a case study that aims to bring the previously described concepts and ideas together, hopefully to demonstrate how they could enrich thematic cartography in practice.

The origins for this case study stem from a 2018's demonstration application for a hackathon competition that this author attended. The intent was to develop an urban recommendation system that would help dwelling seekers to identify areas in the Brno city that best match their needs and expectations. The original implementation using Leaflet front end has been fully reworked by the author into Mapbox based application for the purpose of this thesis. Aside from the primary goal of spatial optimization tool, the application aims to demonstrate the ideas presented earlier in this chapter — the use of hexbin grid and layer entanglement to battle visual clutter, some recommendations for map UI design are also showcased. In terms of software implementation, the benefits of the React front-end framework for creating interactive maps are discussed, and comparison of solutions based on Leaflet and Mapbox map rendering libraries is provided.

### 3.6.1 Data sources and transformations

- data from osm
- interpolation to the grid
- leaflet + db vs mapbox
- data for buildings

The application allows users to select several parameters and assign weights to them. Based on the selected parameters and weights a map is rendered dividing the city to areas of high to medium to low desirability. Changes to weights and parameters is reflected in the map as the desirability surface is recalculated on the fly.

The parameters include both attractive and repulsive factors: proximity to schools and nurseries, parks and greenery, places of worship,  healthcare, sport, cultural and social facilities on one side, noise, crime and prices on the other side. The majority of the source layers is taken from the OpenStreetMap database, that allows for easy automated updates via it's API. The input data were harvested for the area of the city including a 5 Km buffer to prevent undesirable interpolation effects on the area borders. The table outlines the input layers with sources.

(TODO table) — name, group, source, what is incueded (notes), spatial reference
— todo — check the actual data

culture
health
church
parks
social
sport
transport
crime
prices
noise

Sources come with both point and polygon spatial reference. To harmonize the sources into one common spatial format that would allow to apply weights and would allow dynamic re-classification based on scaled we created a 100 m point grid covering the area of Brno (the grid was spread in such a fashion that the spatial coordinates of individual points are rounded — so that the storage footprint is minimized). The point layers where then used to create distance surfaces using IDW interpolation in QGIS desktop tool. Data from these interpolations where then combined with existing zonal layers (noise, crime, property prices) to generate input for the attribute table of the point grid. This was done using the standard spatial join feature in QGIS (illustrated on fig). In the resulting point grid, each point contains an attribute containing a distance from the given point to a nearest facility of interest, or the given index for some layers (crime, noise...). Furthermore, these attributes have been normalized to fit into 0-1 scale across the city area.

![**Fig.** Data preparation process.](imgs/img-cs1-dataprep.png)

This allows for meaningful comparison of data and application of weights. (TODO — another tables — what means zero, what means one for various layers).

TODO — how weights are applied

3rd section — some dimensionality reduction
- only if used — PCA vs t-SNE, autoencoders for spatial data
https://lvdmaaten.github.io/tsne/
https://en.wikipedia.org/wiki/T-distributed_stochastic_neighbor_embedding


### 3.6.2 App architecture (react redux mapbox)

Old version:
posgres + node on backed — React + Leaflet + Turf on the frontend

New version
Mapbox for layer storage — React + Mapbox on the frontend

Why react-redux? -- modularity and global state management -- useful for web map apps eg. for dynamic legend, inset maps, etc.

Data processing for vector tiles -- static tiles created with tippecanoe (exact command?), then uploaded to mbstudio for hosting
https://geovation.github.io/build-your-own-static-vector-tile-pipeline

-- future -- tegola? better for "real-time publishing"

### 3.6.3 User interface design

Type 1 - see comopound livability score
map field:
- ability to 'prepend' transport layer for orientation
- same for brno districts layer (optional dotted overlay with labels)
- select building mask
- histogram on Legend (TODO)
.. think of something else...

controls:
- select groups, select layers, change weights

Type 2 - see the distribution of selected layers both separately and together
map field:
- various types of symbol sizing within the grid

controls:
- inset map TODO
- dynamic legend brackets

Type 3 ? — square or triangle grid, better smooth appearance?

### 3.6.4 Notable findings
- what spatio-temporal queries are enabled by this kind of visualisation? Which are not? (see chapter 2)

### 3.6.5 Possible extensions

Possibility of regular updates to keep the content true to reality.
Possible Extensions to other cities .. automated data processing pipeline
-- vector tile pipeline:
https://medium.com/nyc-planning-digital/using-the-new-mvt-function-in-postgis-75f8addc1d68
https://geovation.github.io/build-your-own-static-vector-tile-pipeline
https://github.com/addresscloud/serverless-tiles


notes:

— sdf icons required for recolorable icons,
notes: https://github.com/mapbox/mapbox-gl-style-spec/issues/97
https://halisavakis.com/my-take-on-shaders-ui-sdf-icon-shader/ (creating in pdf)
https://habr.com/en/post/215905/
https://github.com/elastic/kibana/issues/39715

https://github.com/mapbox/mapbox-gl-js/issues/1817#issuecomment-497446984 (workaroud to enable coloring by editing the sprite's json)
— sprite editing via api

https://weekly-geekly.github.io/articles/215905/index.html

— problems — how to create, how to tell if it was created?
— how to upload — studio doesn't support it
— only single-color icons

— pros: can define color dynamically
— can set halo
— solution add programmatically as one time import:
https://stackoverflow.com/a/53998098


- nakoniec som nepouzil — normalne prefarbene svg

———
- aleterntativa — iba high wedge pre vsetky kategorie ale zmeny opacity... to nie
- zmeny sirky, alebo odsadenie od stredu

to research:
JS streams API
https://developer.mozilla.org/en-US/docs/Web/API/Streams_API


do záveru?

WebGL truly seems to be a promising platform for connecting (carto)graphic excellence, dynamic spatial data visualisation and user-friendly interaction.

