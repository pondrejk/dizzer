# Discussion and conclusions

Issues in vector tiles

Hard to use tools
WebGL hard to learn and write vs. Wrapper libraries provide a limited set of functions

React Redux component library (storybook design system), with testing. Btw testing a challenge in cartography (compare with UI tests)

# Conclusions

Bright future in vector tiles -- if standardization across implemetnations
tight coupling of tile layer definition and schemas with style definition and client libraries. Some standardized style language?  Across gl contexts we can use shaders...

Mature cross operational tools missing

More variance in schemas -- not only basemap display -- analysis, machine learning input, routing etc, serverless spatial analysis capabilites (offline)

Clever encoding and decoding of attributes -- protobuff capabilites, using data in shaders

For something like figure 26 -- own shaders?

Other opportunities stemming from vector tiles:
- new modes of data desiminaiton - new modes of urban planning (examples)
- mapbox data model -- API -- inspiration for public offices 
- new businesses 


Future of cartography -- possibility to break out from the desktop web environment and ocassionaly mobile to greater use in iot, embedded devices and whatever comes next.

Transferability of cartographic work across rendering contexts.

For that we need to thing of map as an interaction mode, extend interest to science of interactions...

- Is cartography fully exploiting the digital medium?
- What inspiration can digital cartography take from the heritage of pre-digital mapping?

need to put own imput into crated tools -- point clustering is an example of the method where computational considerations precede cartographic reasoning

Get their hands dirty with the tools

Getting back to questions from section  2.3.2

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

A valid data sharing option for public offices () and open source projects

TODO -- share projects -- new streets, cublr
^ And businesses based on this data model -- morphcode, 

Along with tile standardization:

Greater standardization efforts:
https://github.com/Maps4HTML/MapML-Proposal
https://maps4html.org/MapML/spec/#abstract

