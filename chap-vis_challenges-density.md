# Dealing with density

The vast majority of what is presently understood as spatial big data has point spatial reference. This prevalence comes as natural if we consider that the "datapoint" location is described basically as a coordinate pair -- two digits that can be easily stored in standard database systems witout the need to concern topological rules and other constraints that GIS vector data model enforces on line and polygon geometries. Point data are spatial data that are easily created and handled by non-spatial (meaning not GIS-enabled) systems that account for majority of data production. For this reason we will almost exclusively focus on visualisation issues related to point data^[We'll use point data as a shorthand for data with point spatial reference.]. This doesn't mean that those point locations can't or shouldn't be transformed to other kinds of representation -- as we'll see further, for massive datasats there's not much other choice.

Point spatial data are not a homogenous group -- there are three types of point data objects of interest, for convenience we can nickname them as *sensors*, *agents* and *events*. These three classes are differntiated by their bahaviour in space and time, more precisely by how dynamic is their *existence*, *location* and *attributes*.

- stationary objects (codename "sensors") have static position and presence, meaning that they don't move and they don't usually dissapear during the course of observation in short or medium timespans. What is dynamic is a set of attributes attached to the object -- in big data world these attributes can come as a continuous datastreams. Basic example is a weather station.
- moving objects (codename "agents") move around, so their position changes during observation, also their existence can be dynamic, meaning they can enter or exit the area of interest. Various kinds of dynamic attributes can be attached. We can reconstruct the history of movement of these objects, which  particulary invites conversion to linear representation. Examples are vehicles or pedestrians carying GPS devices. 
- episodic objects (codename "evnets") have presence limited to a specific point in space and time. As they are short-lived, we can say that position and associated attributes are static. Prominent example are data collected from social networks. 

This destinction is naturally dependent on frames of reference, for example objects seen as stationary in shorter observation perionds can become mere events if timeframe is significantly extended. Similarly if events can be reimagined as moving objects with discrete presece across observation timeframe, for example when social media "tweets" dislocated in space and time poit to a single moving source device. 

![**Fig.** Three types of point spatial objects in a timespace cube. Stations, actors and events generate diffierent atribute histories.](imgs/bd-diagrams-joke.png)
  
From the above images events seem as least data-rich though the analytic potential stems from their acummulated high number. Clusters of goreferenced point events are at the core of social media analysis.  


## Intro on difficulties
-- some survey on visualisation pipelines @moreland2013survey
-- my own vis pipeline simply showing how data reduction occurs and for what reasons (technological reasons / cognitive reasons) -- technological may be diminishing, but cognitive will still pose limitations. Machine learning could bypass the need for cognitive limitations (what kinds of task are mlearnable, also what are the tasks/questions that can be meaningfully answered? -> via negativa), how the design of ineractions could help with cognitive limitations

data -> technological filter -> coginitive filter -> idea/decision

TODO: image - dataflow via those filters (later).

processing difficulties ... technological filter - screen resolution limits, infrastructure limits -- not all datapoints can be shown.
cognitive filter -- not all can be processed, how to define and check automatically? 

![**Fig.** Big data scatterplot on the left and big data parallel coordinate plot on the right. A tongue-in-cheek reflection on human perceptual limits, modified after @fischer2015why.](imgs/bd-diagrams-joke.png)

# Congestions + Data reduction methods

## Avoiding aggregation

- resolving conflicts -- long tradition in cartography, but how scalable and automatable? Spatial displacement techniques (non-cartographical) -- jittering @trutschl2003intelligently, topological distortion @keim2010generalized -- expanding (like cartogram for scatterplots)
- minification of symbols + downplaying or reducing the backgroud
- pixel-orientation -- maximizing screen utilization @keim2000designing 
- spatial distortions -- cartograms -- affects other spatial layers -- common distortion rule is needed to make sense for all layers -- population?
- alpha blending -- transparency (pros and cons)

Other stuff to check:
@janetzko2018pixel

## Aggregation 

density vs. attribute visualisation
- implanation - classification techniques: classical, new: yiang - fractal breaks, bayesian surprise, uncertainty-adjusted scales
- shape, position, other options for multiple vis -- indiemaps article, other tesallerations

Shape: two prominents ways: hexagonal and rectangular grid
- hexagonal -- centroids in hexagonal binning form a triangular grid, so an individual hexagon has the same distance from all it's neighbours (why is that good? not th case of rectangular grid).
- rectangular -- can create pyramids for hierarchical aggregation, that is a higher level shape can fully contain shapes of lower level wihch is not a case for hexagons. Rectangular shapes are also better fit for proportional scaling in two dimensions (width and height) which unlocks potential for displlaying an additional vable.

liu2013immens
---

*Scalability of visual encodings* (how visualized) vs *interactive scalability* (how interaction works) -- both should be limited by the chosen resolution of visualized data not the number of records.

Aggregation methods:
- bridge to previous chapters regarding sampling: bd analytics may no longer require it, though visualisation needs it (unfortunately?)

## Tasks
- anderienko
- notes from hierarchical aggregation paper
- inmems papaer -- interactive scalability for panning, zooming, brushing and linking.

mulitple attributes
figure vs. ground - comparison with spatial context


# parameters of binned visualisation
