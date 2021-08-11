# 4 Case Study: Urban recommendation system

Throughout the previous chapter we took a rather winding path trough various concepts: data processing pipelines, hexagonal aggregation, rendering technologies, vector tiles and user interface design. In this and the next chapter we present two experimental case studies that aim to bring the previously described concepts and ideas together, hopefully to demonstrate how they could enrich thematic cartography in practice.

The first case study is a prototype of an urban recommendation system — a map-based web application that could help dwelling seekers to identify areas in the city that best match their needs and expectations^[Live demo of the application is accessible at <pondrejk.eu/hex>, screenshots of the interface can be found in Appendix B.]. Such system would allow users to assign weights to different spatial factors to recalculate a simple preference map to show which areas in the city could be desirable for them.

The benefits of interactive preference controls are manifold: users can reason about various alternative scenarios, observe how even slight changes in their preferences influence their potential action area, they can seek compromise between conflicting views, or model how their options would alter should their life situation change. The selected spatial factors are aiming to suit civic user, however, inclusion of additional parameters could extend the target group to municipal planners or property developers^[The origins of this idea date back to the 2018's hackathon that the author attended as a member of a competing team. The original demo application has been fully reworked by the author for the purpose of this thesis, though the input spatial data pre-processed at that time have been reused here.].

Aside from its primary use, the application also aims to demonstrate the ideas presented earlier in this thesis — the use of hexbin aggregation and layer ordering to battle visual clutter, the benefits of vector tile technology, or the power of scale-based styling. Some recommendations for map interface design are also showcased. In terms of software implementation, the benefits of the React front-end framework for creating interactive maps are discussed.


## 4.1 Data sources and transformations

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


## 4.2 Application architecture 

The vector tile sets were stored on the Mapbox tile server and accessed from the client, mapbox-gl library was used for tile rendering. The interface was build using React library with Redux for state management.

There are several advantages in using React for modularizing front end development, map-based applications benefit from this too.

Why react-redux? — modularity and global state management — useful for web map apps eg. for dynamic legend, inset maps, etc.

Redux -- ^[react hooks -- note, redux might not be needed -- learn more] 

Problems of selecting the grid density -- zoom level limitation tile layer in Mapbox infrastructure (500 KB per tile max).

## 4.3 Cartographic decisions

To showcase the potential use of hexagonal grids to visualize complex datasets, we designed two visualisation modes for the resulting application. 

*Mode 1*

The first mode uses a color range to visualize the "livability score", which is a compound metric composed from the selected theme layers. The resulting layer is a weighted average of the proximity layers. As the values for each layer span from zero to one, the compound layer is also limited by these bounds. The variance of the values in the compound layers depends on the number of topics included in the average calculation. When viewing just a single layer, the whole variance tends to be exploited (with the exception of layers not calculated from proximity surfaces, which is affordability and crime stats). However, with inclusion of more layers the resulting variance tends to shrink and concentrate more around the average (see fig). This is due to the fact that the individual layers have often dissimilar spatial patterns, so the highs and lows tend to cancel each-other out in the final calculation. Lowering weight for a layer further contributes to flattening out of its variance.

![**Fig.** The variance of the compound layer depends on the number of layers included. From left to right: parks & greenery layer; average of parks, sports and children facilities layers; and the average of all eleven layers.](imgs/)

In such a situation we are unable to adhere to the cartographic rule saying that all legend items should be visible in the map field. The color scheme needed to be granular enough and have sufficiently versatile hues to show the spatial pattern in different variances. Even in small variance the color hue needs to communicate clearly if the area leans toward the more or less favourable end of the diverging spectrum. All hues needed to to sufficiently stand out from the background, which is even more necessary when the building mask is applied (see below).

Within the confinement of the hexagonal grid it is straightforward to re-calculate the average value per each hexagon once user selects or deselects a topic or adjusts weights. Technically, the calculation of the average is defined in the mapbox-gl style definition language that consumes the weight attributes from the application's state, an is recalculated and re-rendered upon any state change (once user interacts with the interface). This process does not require pulling any additional data from the tile server, it is working solely with data already available on the client.

Additional layers were added for spatial context: road network, water bodies and green spaces. All these layers sit on top of the hexagonal grid in the layer structure. This demonstrates one of the advantages of using vector tiles in WebGl-based rendering environment: the order of base layers can be freely chosen freely by the application developer. Had we been using a raster tile base layer, we would not be able select which layers we wanted to include, plus we would have to lower the opacity of the thematic layer even visible, with all implications to overall legibility.

The supplementary layers not only ease the orientation in the area, but also help to understand the spatial patterns of some layers, e.g. the dependence of the noise or public transport layers on the road network is obvious, also the development potential in the area south to the center in apparent on many compound layers in the application. 

Styling the supplementary layers is also impacted by the changing variance of the mapped values, the legibility of road network suffers in compound layers (see fig). While not currently available in mapox-gl, assigning a  transparency blend mode to the top layers could help here, e.g. the difference blend mode would make sure would stand out on any background, however this might distract the viewer from the main theme.   

Additional spatial clues are provided by an overlay district layer with labels that can be enabled on demand. Another on demand layer provides a building mask. This comes from the original intent of the application to support dwelling seekers -- by reducing the geographic field of the hexagon grid to the built area we provide a more realistic picture of where the potential home-seeking opportunities are. The building mask  effectively turns the map dominated by the hexagon grid to a dasymetric map. The building layer is however impacted by the rendering efficiency measures that hide smaller buildings and drop vertices at smaller scales. As such, the building mask fits more to exploring the city at the district level, especially when the user can still tweak the hexagon layer parameters with the mask on.


*Mode 2*



sdf
image comparison

## 4.4 User interface design

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

## 4.4 Notable findings
- what spatio-temporal queries are enabled by this kind of visualisation? Which are not? (see chapter 2)

*issues*
— road structure not equally visible on dynamic data layers 
— css blending style (difference?) for the rescue — not implemented in (mapox.gl), leaflet allows it? surely tree.js or pixi.js support it, however it would bring too much attention to the road network + other issues — how to choose the main color so that the overlay produces meaningful scale, building a legend
— TODO some illustrator image about this?


## 4.5 Evaluation and possible extensions

Possibility of regular updates to keep the content true to reality.
Possible Extensions to other cities .. automated data processing pipeline
— vector tile pipeline:
https://medium.com/nyc-planning-digital/using-the-new-mvt-function-in-postgis-75f8addc1d68
https://geovation.github.io/build-your-own-static-vector-tile-pipeline
https://github.com/addresscloud/serverless-tiles


— future — tegola? better for "real-time publishing"
https://geovation.github.io/build-your-own-static-vector-tile-pipeline

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

