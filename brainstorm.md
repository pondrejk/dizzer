Cartographic (Visual) Analysis of Big Data Sets

Previous work:

-- techonlogy space (state of art) - emerging possibilities
-- analytical issues -- data for machines 
-- visualisation considerations -- data for humans (final vs exploratory)
-- cognitive limits
-- cartographic reflection

Possible directions:

-- indexing of large data sets? -- spatial indices
-- geolocalizing rss feedas -- in local context (czech, brno)
-- generative computing?
-- visualisation -- impacts on back-end infrastructure?
-- neural network for cartographic processes (what are those?)
-- usability of interacrive maps

Serialization formats:
-- protobuff vs. BSON
-- geo mutations of above? (geobuff exists, BSON takes Spatial versions too)
-- plain JSON (Geo, Topo?), WKB?
-- yaml?

Tile formats (for presentation of complex (bg/supporting)) datasets

Data translators/convertors
-- FME desktop + Arcgis plugin
-- Geokettle (open source)
-- Koop (opensource) https://github.com/koopjs/koop

Model applications
-- cartodb https://cartodb.com/deep-insights (bd + exploratory)
-- geotrellis http://geotrellis.io/ (raster + analytical)
-- mapbox https://www.mapbox.com/studio/signup/ (visualisation of vector tiles, hosting)
-- mapzen tangram https://mapzen.com/projects/ (3D out of osm, webgl + geocoding) playground  http://mapzen.com/tangram/play

Machine learning section?
-- Tensor flow + tensor flow playground
-- Terrapattern -- give it a try, possible to fork? citation: Levin, G., Newbury, D., McDonald, K., Alvarado, I., Tiwari, A., and Zaheer, M. "Terrapattern: Open-Ended, Visual Query-By-Example for Satellite Imagery using Deep Learning". http://terrapattern.com, 24 May 2016.

Vector tiles for in-browser data analyisis?
-- elaborate on the similarity of analysis and rendering issues (building the vector tiles, data-driven styling, aggregate/summarize data)

Kibana? -- Logstash? -- Graylog? -- WebGlayer?

Streamed data 
-- visualisation
-- storage (only diffs?) -- logging -- visualisation of changes? (a plug-in --for qgis? that takes checks if the input data is from a git repository -- shows history, shows visual history --color-code changes from particular commits, git history of a selected feature, git blame on click -- something usable also in web apps? Also spatial diff)
-- do the research, geogig? gitk? mapnik/osm?
-- separate attrbute from geometry changes?
-- GeoJSONs for a start 
-- confguration files for visualisation

Creating an app in electron/photon? -- for testing stuff

DESIGN (+ cognition + science)
-- cartographic parameters of unknown data (can be MLearned?)
-- overall wireframing
-- designer mode -- how to play with symbols -- dashboard
-- how to assess cognitive efficiency 

