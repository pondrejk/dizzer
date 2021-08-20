# Discussion and conclusions

This section provides a general discussion of results to complement the evaluation of case studies from sections 4.5 and 5.5. A general conclusion is also provided.

While we argue that the combination of vector tiles and a WebGL based rendering environment is an adequate solution for cartographic visualisation of big data sets, we can still find problem areas where these technologies deemed unsatisfactory.

In light of a big data source that is changing in real time, vector tiles may seem bit inflexible. Once a tile set is generated there are no options to alter it, join attributes from external sources, etc. To accommodate fast-paced changes, the data processing pipeline has to regenerate the data anew. The original of the format was presentational (to show intricate base maps). Analytical features are not too supported within the format specification itself, and the GIS-like operations are also lacking in the client mapping libraries. 

Problems of data spaces

As we have seen with both case studies, tile data size limitations have a profound impact on the final digital map, be it in the achievable zoom ranges or in smoothness of user experience. Currently the limitations can be overcome by slicing the tile layers in various ways, though there are no standard solutions for compression within the tile attribute spaces and decoding on client.
Clever encoding and decoding of attributes -- protobuff capabilites, using data in shaders

Still prove its aptness for analytical use cases.

We have already mentioned the lack of mature standardized tools across creation, serving, rendering and styling. We have a tight coupling of tile schemas with style definitions, which are not interoperable across client libraries. WebGL is a unifying concept of these libraries but writing GLSL code is challenging. Some standardization and cross operational tools would be vital to the future adoption of vector tiles.  



More variance in schemas -- not only basemap display -- analysis, machine learning input, routing etc, serverless spatial analysis capabilites (offline)


React Redux component library (storybook design system), with testing. Btw testing a challenge in cartography (compare with UI tests)


For something like figure 26 -- own shaders?

Other opportunities stemming from vector tiles:
- new modes of data desiminaiton - new modes of urban planning (examples)
- mapbox data model -- API -- inspiration for public offices 
- new businesses 

A valid data sharing option for public offices () and open source projects
traditional data providers (ordinance survey, swisstopo)
TODO -- share projects -- new streets, cublr
^ And businesses based on this data model -- morphcode, 


Future of cartography -- possibility to break out from the desktop web environment and ocassionaly mobile to greater use in iot, embedded devices and whatever comes next.

Transferability of cartographic work across rendering contexts.

For that we need to think of map as an interaction mode, extend interest to science of interactions...

Getting back to questions from section  2.3.2
- Is cartography fully exploiting the digital medium?
- What inspiration can digital cartography take from the heritage of pre-digital mapping?

need to put own imput into crated tools -- point clustering is an example of the method where computational considerations precede cartographic reasoning

Get their hands dirty with the tools


- Should cartography focus more on interaction design?

cartographic principles altered by big data


- Software testing map-based applications --  (isqtb) ideas form sw testing in cartography, visual testing neeeded, google analytics? 
- Simulating data load -- mocking data, preparing fake data with right properties for systems prototyping data emulation 
- Vector tiles standard -- new era of spatial data distribution (contextual imformation in layers)
- Machine learning -- realistic -- first to take on manual tasks, then for map design related tasks? (down to earth assesment :P)

 Vector tiles for in-browser data analyisis?
 44 -- elaborate on the similarity of analysis and rendering issues (building the     vector tiles, data-driven styling, aggregate/summarize data)


Future trajectories
-------------------

WebGL truly seems to be a promising platform for connecting (carto)graphic excellence, dynamic spatial data visualisation and user-friendly interaction.

# future improvements to vector tiles
- incorporating dynamic data sources
- CI -- dynamic tile creation pipelines
- source for ML?

*coordinate conversions within tiles?*
- no more fucking spherical Mercator https://www.maptiler.com/google-maps-coordinates-tile-bounds-projection/

https://github.com/openlayers/openlayers/issues/11142
https://observablehq.com/@fil/reprojecting-vector-tiles
https://observablehq.com/@fil/web-mercator-tile-visibility

TODO — vector tiles + big data (pros/cons now + future extensions) 
VT don't support gis-style database joins post creation, all data processing operations should happen before tile generation (in the db or in gis sw).


Some size limitations on vector tiles — 500 KB per tile. The way the format deals with it (during encoding) may not be optimal — dropping vertices in abrupt simplification, dropping data points. 
-- find more creative options for data compression, encoding or decoding -- inspiration from timescale.db


- how to connect to dynamic data source? Join with db? (just points — dynamic data overlay straight genreation of tiles within pipeline , )
- more could be done on client with the data tile data -- how to allow additional calculations, possibly using js functions directly (not some wierd DSLs with limited capabilities, that have only visualisation in mind).


This thesis aimed to --
