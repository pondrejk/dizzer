Outline
---------

# Introduction

# Defining big data
- Ontological characteristics
- Other ways of understanding big data
  - Vs and keywords
  - A challenge for technical infrastructure
  - Showing example sources and quantities
  - Metaphoric accounts
  - Holistic accouts
- Spatial big data 
- Assessing impacts, threats and opportunities

# Making sense of big data
- Spatial big data classification: stations, events, and agents
- Spatio-temporal knowledge discovery and visual analytics 
  - Spatio-temporal relations 
  - From data mining to visualisation for human interpretaton 
- The role of cartography
  - Map reading and interpretation
  - What next? Research challenges
  - How next? Challenges in collaborative practice
  - Who cares? Building engagement
- Objections
  - Hiding system complexity
  - Misinterpretation
  - Non-human decision makers

# Dealing with density in spatial big data
- Visualisation challenges:
  - design constraints
  - data processing pipelines 
- Density reduction methods
  - avoiding aggregation (data vs visual aggregation, bad practices)
  - study of hexbin aggregation
- Density vs attribute visualisation
- Rendering spatial data
  - SVG, Canvas, WebGL
  - GLSL and GPU renering pipeline
  - Tour of vector tiles
- Figure vs ground
- Web cartography as a UX problem
  - design constraints in map UI
  - dealing with density in ux controls -- smaller versions, combining legends and controls 
- CASE STUDY - urban recommendation system
 - PCA/t-SNE
 - why react-redux is good (shared state etc., front-end frameworks, (other ways of sharing state) -- urobiť to nejak nadčasovo, spomenut neustále zmeny v tejto oblasti - porovnanie: vue, angular, mobx...)
 - inset map: https://react-leaflet.js.org/docs/example-react-control

# Dealing with velocity:
- time depictions in cartography
- Bayes?
- an aside on UX, using interaction and feedback in ux controls
- Case study - traffic trough the pandemic

# Future trajectories:
- Software testing map-based applications --  (isqtb) ideas form sw testing in cartography, visual testing neeeded, google analytics? 
- Simulating data load -- mocking data, preparing fake data with right properties for systems prototyping data emulation 
- Vector tiles standard -- new era of spatial data distribution (contextual imformation in layers)
- Machine learning -- realistic -- first to take on manual tasks, then for map design related tasks? (down to earth assesment :P)

# Discussion & Conclusion

# Appendices

- Case study outlines:
-- data sources and transformations
-- app architecture (react redux mapbox)
-- user interface design
-- interesting findings 
-- possible extensions
