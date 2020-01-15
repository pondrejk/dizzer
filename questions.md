# title?

This chapter will look more closely on the properties of data with point spatial reference that count for the majority of spatial big data.
Then we will outline the tendencies in spatio-temporal knowledge discovery, and we will discuss general ways how cartography can support understanding the world trough the lens of big data. Then we will discuss some recent objections to the idea of insight generation (or rather of the fashion in which data is interpreted) and speculate on how cartographic practice could fit to such objections. 


# Spatial big data classification

The vast majority of what is presently understood as spatial big data has point spatial reference. This prevalence comes naturally if we realize that the "data point" location is described basically as a coordinate pair -- two digits that can be easily stored in standard database systems without the need to observe topological rules and other constraints that GIS vector data model enforces on line and polygon geometries. Point data are spatial data that are easily created and handled by non-spatial (meaning not GIS-enabled) systems that account for majority of data production. For this reason, and due to the scope limits of this thesis, we will almost exclusively focus on visualisation issues related to point data^[We'll use the term *point data* as a shorthand for "data with point spatial reference".].

Point spatial data are not a homogeneous group. We can describe three classes representing three kinds o objects differentiated by their behaviour in space and time, more precisely by the by how dynamic their *existence*, *location* and *attributes* are over the course of observation. These properties are determined largely by the source of data, so for convenience we can nickname the three types as *stations*, *agents* and *events*:

- stationary objects (*stations*) have static position and existence, meaning that they don't move or disappear during observation. What is dynamic is the set of attributes attached to the object -- in big data world these attributes can come as a continuously updated streams. Basic examples include weather stations, traffic cameras, and any kind of stationary sensors.
- moving objects (*agents*) move around, so their position changes during observation, also their existence can be dynamic, meaning they can enter or exit the area of interest. Various kinds of dynamic attributes can be attached. We can reconstruct the history of movement of these objects, which invites conversion to linear representation. Examples are vehicles or pedestrians carrying GPS devices and sensors. 
- episodic objects (*events*) have existence limited to a specific point in space and time. As they are short-lived, we can say that position and associated attributes are static. Prime example are data collected from social networks. 

Think of this distinction as a convenience model fit for the majority of big data related use cases that expect short time frame for data utilization. Technically speaking, the difference between stations and events is dependent on the frame of reference, as objects seen as stationary in shorter observation periods can become mere events if the observation time frame is significantly extended. The existence of a building usually spans over a long time period, though if we stretch the perspective to a century or a millennium, most buildings will become mere glimpses existing a tiny fraction of time (see https://waitbutwhy.com/2013/08/putting-time-in-perspective.html). Geographers would note that also the location of seemingly static environmental features doesn't hold over time (think of a meandering riverbed or a volcanic landscape). Judging by the real data samples we can say that stations are usually physically present in the environment while events are mainly records of something that happened at the given location, either physically expressed in the environment and observable by onlookers (I was at a restaurant) or not (I was shopping online while waiting at the bus stop). 

Also, some events can be reimagined as moving objects with discrete presence across observation time frame, for example if social media events dislocated in space and time are traced back to a single moving source device. 

![**Fig.** Three types of point spatial objects in a timespace cube. Stations, actors and events generate diffierent atribute histories.](imgs/img-cube.png)

         existnece (records of spatial and temporal reference) | attribute collection      | location  
station  continuous                                            | continuous or discrete    | static
agent    continuous or discrete (can reappear)                 | continuous or discrette   | dynamic
event    discrete                                              | discrete                  | static

In the above image and a table we assume that the attribute collection is happening continuously for stations and agents, this doesn't have to mean that the attributes are collected at any given point of time. The temporal scale has also its granularity and the recording of events either has a regular time interval or is event based. Depending on the type of phenomenon being recorded the station can record 'no data' for the attribute, or even record just in the case of an event. It then depends on the goal of the analysis how such data are conceptualized. For example a traffic camera is a stationary object but it's data collection is episodic -- a photo is taken just when a speeding vehicle drives by). The model with three types we introduced strictly differentiates between existence of the object and the act of recording data by the object, which is useful in most cases.

From this classification, events seem to be least data-rich, but the analytic potential here stems from their acummulated high number. Clusters of goreferenced point events are at the core of spatial analysis based on data from mobile devices. (https://www.nytimes.com/interactive/2019/12/19/opinion/location-tracking-cell-phone.html). 

The gaps in data collection and the absence of abrupt changes hints how to optimize data storage from such sources. Storage optimizations are not within the scope of this thesis, but they can pose a certain lesson for cartographic visual analysis. For cartographers, the resource whose utilization needs to be optimized is a map plane, that can only holds a certain visual load to remain useful. The graphic fill is an aspect that can enhance the knowledge discovery at the end of the visualisation pipeline (more about it in the practical part of thesis).

Let's look deeper at the concept of spatio-temporal knowledge discovery, that is what kinds of questions can our interactive maps help to ask?

# Spatio-temporal knowledge discovery

The term *data mining* is often used to describe exploring databases using low-level algorithm to find patterns. *Knowledge discover* is then described as a higher-level extension of data-mining techniques that requires human-level intelligence and domain knowledge to guide the process and interpret the results (@miller2015spatio).

In this section we will briefly discusses techniques for exploring spatio-temporal data, with emphasis on practices that would benefit from enhanced cartographic visualisation.

On the general level we can query *spatial* and *temporal* properties for all theree types of point objects mentioned above. In addintion, moving objects have specific set of properties.

Major classes of spatial realtions are *set-oriented* (union, difference, intersecton, complement, etc.), *topological* (connectivity, interior, exterior, boundary relationships), *directional* (cardinal, object-centered, ego-centered directons) and *metric* (e.g. Euclidean or network-based distance) relations (@worboys2004gis). 

1. Spatial relations are at the very basis of map-reading for orientation clues, but are also vital for interpreting thematic information. 
We check these relations between the dominant topics (e.g. weather maps of precipitation and pressure zones) or between the topic and the topographical base (). 
Point spatial data of large extent complicate obsrvng such relations, and we rarely as about a single specific point from the set, more often we seek to extract some tendency of the whole point cloud. Naturally, the data source can dictate some spatial relationships (such as cars being on the roads). 

As we are dealing mosty with point data clouds in two dimensional space it is worth to say that topological relations between such sets are more complex than with polygonal features and can be elaborated into 16 actual relations (9 if reduced to spatial regions relevant in GIS .. see table 2 in https://www.researchgate.net/publication/276959705_Point_Set_Topological_Spatial_Relations note -- could be drawn?) in two dimensional space (@egenhofer1991point).

Geostatistics as an extension of the basic spatial relations more fit to point clouds (what is the intersection of two point clouds?). TODO elaborate more. Point: geostatistical analysis could inform the visualisation-related decisions e.g. when doing aggregaiton.
^ Spatial metrics that look at the dataset in isolation -- its spatial properties

2. Temporal relations -- mrssure of coincidence, 13 possivle relations between two intervals (@allen1984towards -- note: make a picture). Linear conceptialization of time can be supported with cyclical and branching time (if-then scenarios). 
Finding cyclic properties in dataset and comparing these cyclic properties via *periodic pattern mining*

3. Moving objects have a specific set of properties comming from the combination of their spatiotemporal circumstances. These can be *instantenious* (actual position and speed), *interval-based* (e.g. travel distance from departure), *episodic* (related to extenal event) or *total* (related to entire trajectory) properties (@laube2007movement, andrienko2008basic). 

On conept hieraries -- hierarchies can exist in spatial (state > province > disctrict ...), temporal (month > week > day) and attribute relations .. changes in level of hierarchical aggregation is reffered to as *roll-up* or *drill-down* (@elmqvist2010hierarchical). 

On space-time cubes -- is a useful concept for imagining the relations between spatial, temporal and non-spatial dimensions (@guo2006visualization). Even though our spatial imagination is limited by 3-dimensionality of our everyday experience, data cubes allows us to assing visual clue to otherwise abstract database queries such as slicing and dicing. On the other hand intracting with the cube itself feels not user friendly, so intractive UIs typically use maps as slices of the cube -- so the spatial metaphor is always coherent timewise (true? maybe traces are an exception). 

Unused potential of s-t cubes becomes clear when considered together with searching for cyclical time patterns in spatial subsets (collumns of a cube) or when spatially correlating two phenomena with time delay (comparing slices).

Association rule mining -- searning for conditions ocurring together frequently: x => y (s%,c%). x,y - conditions, s,c -- levels of support and confidence. parl > school (4%, 55%) -- 55 percent of parks are near schools, for 2% of items in the database (@han2011data).
Space time association rules -- describing how objects move among a set of regions over time (@verhein2008mining) -- rules for identifying high-traffic regions etc.

Sequence mining -- seraching for patterns in time and other sequences. Similar to association rules, searching for events occuring frequently together: 3 parameters: *duration* of time sequence, *event window* (time-horizon for considering events as temporally coincident) and the *time interval* between events (@miller2015spatio).

Periodic pattern mining (type of sequence mining) searches for recurrent patterns, that include: *full periodic patterns*, *partial periodic p.* (e.g. just on mondays), *cyclic or periodic association rules* -- associate events that occur periodically together (@han2011data).
Finding such patterns in movement data -- conceptual framework @bleisch2014mining

# The role of cartography

Cartography has a long traditon of making big data sets comprehensible for our visual minds. Beautiul and authoritative maps in school atlases explaining the formtion of air masses affecting world's climate, or the positions of ocean streams have an air of definitiveness but were build upon a loads of messy data. These data had to be collected, brushed and analyzed for the presence of meaningful patterns, and than visualised in a way that would appeal to human comprehension. The process for creating such maps was by no mans real-time but allowed for fine tunnning all aspects of a map (from the appropriate method to visualise the ...TODO insert topic... to making the street connections visually pleasing). Analog map making allowed for perfectionism.

For digital cartography, it took a long time to come any closer to the visual quality of the best atlas works. There is still some unmined potential towards the graphic excellence in web mapping^(I will use therms digital cartography, web and interactive maps interchangebely) (though there are tools to get us there -- see later). Web mapping has though the obvious advatage of allowing interaction -- so the user can zoom, pan, change, filter and combine the displayed data. The second big advatage is allowning for displaying data real-time as the data source is updated. This is feature is used maybe surprisingly less then expected, not all interactive maps are dynamiclly updated, which is ok if the topic is historic (like medieval monasteries in France or 1991 election results in Yugoslavia). But this thesis focuses on interactive map interfaces based on dynamically updated data, which poses a new set of challenges on a poor cartographer. Not only does he need to ensure cartographic excellence in the map field (excellent map provides answers, helps to ask queations, supports understanding in an engaging way), but also to pertain this excelence for the changing data and user-induced modifications.

In other words, cartographer needs to design the map well, but also design it well for the data he din't see yet, and desing interactions and the map's behavior under various (countable but vast) number of states induced by these interactions. A hard task. 

The atlas maps mentioned above surved for presentation of knowledge, were confirmatory. Digital cartography allowed for exploratory cartography (or more precisely moved the exploratory part in the visualisation pipeline from before map creation to after, and from the map author to the map user). Visual analytics based on spatial data (definitions below) provide interfaces to process and visualise data. On the one hand it allows users to mine novel infomation, on the other hand it leaves him to create his own narration about, prone to owevhelming visual clutter, misinterpration, false correlations, lack of engagement and guidenance on where to start. Data manipulation interface, a window to the database is useful for those who know what questions they want to ask. Hypothesis formation support that these tools aim to provide is a property that is hard to measure (hard to prove it works, hard to compare which interface is better).

*Visual analytics* is a science of data-driven reasoning facilitated by interactive visual interfaces to data management and analysis techniques (@thomas2005illuminating). Not just insight to data, also insight to how we process data (@keim2008visual).
*VA for spatio-temporal data* includes interlinked techniques in interfaces with map as a central metaphor (@guo2006visualization)

User is left with a spiffy-looking front-end to a database, with no sense of narrative or framework for interpretation. Simmilar situation occuring in business analytic dashboards proliferating in enterprises that fail to make sense to users, or worse simulate insight with vaguely understood and hardly interpretable metrics.

Consither this somewhrere <http://norvig.com/experiment-design.html>

Here we need probably some inspiration from other fields. Aim is moving somewhere inbetween the presentation and exploratory interfaces, possibly to get the best of the both. Exploratory interfaces with some hinting, notifying which findings make sense and which not. 
Designers of exploratory interfaces could give greater thought to what questions users might want to ask about the portrayed data.

dynamic data examples:
Global fishing watch

See also: https://www.researchgate.net/publication/236993632_Illuminating_the_Path_An_RD_Agenda_for_Visual_Analytics 

# General questions

(notes on cartographic manifestos on Big Data)

1. What inspiraton can interactive web cartography take from the heritage of pre-digital mapping? What was lost in transition to digital? Are there methods and practices from tradition that could be used but aren't (because cartographers usually aren't software developers, and software developers are usually unaware of old map stocks). Danger: the perceived mantinels of the new technologies limit us in imaginig what we could do (e.g. what visualisation possibilities are provided by APIs like Leaflet).

2. limits of old media. Danger: processes of old media are transfered to new media, leaving possibilities in new tools unexplored.

3. Cartography and UX, designing an interactive map is also designing ways to interact with data. Saving space: coupling legends with controls.
Problematizing UX research, problems of cognitive testing (verification crisis in psychology) vs. A/B testing,  (data on tile usage from big providers)

4. Inspirations from product design (praktika lens, beat machines), photography (Muybridge and Marey), cinematography, video (youtube, other video services :P)

5. What is entirely specific and unique in map design apropriating the above inspirations?


# Recent objections to geospatial knowledge discovery

What is the role of cartography if:

1. It is not humans that make the decision (harrari, mayer-zukier)
2. Beyond the rational naivity about the models (taleb) -- prediction is not a goal, unpredictable events... risk mgmt...


Mail pre Mapbox:

Dear Mapbox,

Brno (zoomlevel 7) quadkey: 12021233312
Brno greater vicinity (zoomlevel 9) quadkey: 120212333

Subject: Sample of Mapbox Traffic Data for research purposes

Dear Mapbox,

My name is Peter Ondrejka, I am a PhD student of cartography at Masaryk University in Brno, Czech Republic. I am also a huge fan of Mapbox, I really enjoy both the map design and development experience, impressive work with that! Most recently I used Mapbox within the ElWar mapping project (available at https://mapdat.uni.lu/).

In my dissertation I explore methods for visual investigation of spatial big data sets. The goal is designing interfaces to help finding spatial and temporal regularities and correlations in data. 

With that in mind, I would like to ask about the possibility of obtaining a sample of Mapbox Traffic Data for the area of Brno, Czech Republic (quadkey: 12021233312). Even though Czech Republic is not listed as a supported country, I hope that some coverage exists here. The sample does not need to be up to date, I would use it solely for the demonstartaion of cartographic techniques within the dissertation. I am prepared to declare that it won't be used for any other purpose.  

Would it be possible to obtain such a sample?

Thank you,
Best regards

Peter Ondrejka
