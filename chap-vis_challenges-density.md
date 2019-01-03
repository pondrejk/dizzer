# Dealing with density

The vast majority of what is presently understood as spatial big data has point spatial reference. This prevalence comes as natural if we consider that the "datapoint" location is described basically as a coordinate pair -- two digits that can be easily stored in standard database systems witout the need to concern topological rules and other constraints that GIS vector data model enforces on line and polygon geometries. Point data are spatial data that are easily created and handled by non-spatial (meaning not GIS-enabled) systems that account for majority of data production. For this reason we will almost exclusively focus on visualisation issues related to point data^[We'll use point data as a shorthand for data with point spatial reference.]. This doesn't mean that those point locations can't or shouldn't be transformed to other kinds of representation -- as we'll see further, for massive datasats there's not much other choice.

Point spatial data are not a homogenous group -- there are three types of point data objects of interest, for convenience we can nickname them as *sensors*, *agents* and *events*. These three classes are differntiated by their bahaviour in space and time, more precisely by how dynamic is their *existence*, *location* and *attributes*.

- stationary objects (codename "sensors") have static position and presence, meaning that they don't move and they don't usually dissapear during the course of observation in short or medium timespans. What is dynamic is a set of attributes attached to the object -- in big data world these attributes can come as a continuous datastreams. Basic example is a weather station.
- moving objects (codename "agents") move around, so their position changes during observation, also their existence can be dynamic, meaning they can enter or exit the area of interest. Various kinds of dynamic attributes can be attached. We can reconstruct the history of movement of these objects, which  particulary invites conversion to linear representation. Examples are vehicles or pedestrians carying GPS devices. 
- episodic objects (codename "evnets") have presence limited to a specific point in space and time. As they are short-lived, we can say that position and associated attributes are static. Prominent example are data collected from social networks. 

This destinction is naturally dependent on frames of reference, for example objects seen as stationary in shorter observation perionds can become mere events if timeframe is significantly extended. Similarly if events can be reimagined as moving objects with discrete presece across observation timeframe, for example when social media "tweets" dislocated in space and time poit to a single moving source device. 

TODO: image three types of objects in a timespace cube 

Intro on difficulties
data -> technological filter -> coginitive filter -> idea/decision

TODO: image - dataflow via those filters 

processing difficulties ... technological filter - screen resolution limits, infrastructure limits -- not all datapoints can be shown.
cognitive filter -- not all can be processed, how to define and check automatically? 

TODO: image - joke: big data scatterplot, etc.


# Congestions

density vs. attribute visualisation
- implanation - classification techniques: classical, new: yiang - fractal breaks, bayesian surprise, uncertainty-adjusted scales
- shape, position, other options for multiple vis -- indiemaps article, other tesalleration

mulitple attributes
figure vs. ground - comparison with spatial context



