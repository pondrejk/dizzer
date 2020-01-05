# General questions
(notes on cartographic manifestos on Big Data)

1. What inspiraton can interactive web cartography take from the heritage of pre-digital mapping? What was lost in transition to digital? Are there methods and practices from tradition that could be used but aren't (because cartographers usually aren't software developers, and software developers are usually unaware of old map stocks). Danger: the perceived mantinels of the new technologies limit us in imaginig what we could do (e.g. what visualisation possibilities are provided by APIs like Leaflet).

2. limits of old media. Danger: processes of old media are transfered to new media, leaving possibilities in new tools unexplored.

3. Cartography and UX, designing an interactive map is also designing ways to interact with data. Saving space: coupling legends with controls.
Problematizing UX research, problems of cognitive testing (verification crisis in psychology) vs. A/B testing,  (data on tile usage from big providers)

4. Inspirations from product design (praktika lens, beat machines), photography (Muybridge and Marey), cinematography, video (youtube, other video services :P)

5. What is entirely specific and unique in map design apropriating the above inspirations?


## Geospatial knowledge discovery 
(what it even is, what questions can an interactive map answer and how this evolves with big data)
Miller in Geocomputation. 

Spatial, temporal and mobile objects data:

Spatial relations: set-oriented (intersection, union, difference and complement), topological (connectivity, interior, exterior, boundary), directional (cardinal (to the west), object-centered (behind the factory), ego-centric (on yor left)) and metric (euclidean, network-based distance).

Temporal relations -- measures of coincidence -- 13 possible temporal relations between two time intervals -- meets, equals, starts, finishes...()
Time -- linear, cyclical (natural cylces), branching time (several possible futures).

Moving object -- movement properties based on time scale: moment, interval-based, episodic, global (andrejenkoviny)
Temporal and spatial granularity, MAUP ... tiez Andrejenko...

Exploring .. time-space cubes -- slicing and dicing, roll-up, drill down -- movement in hierarchy.

Spatio-temporal associations:
association rule: X => Y (s%c%), coocurrence of objects, support (percent of the whole database) and confidence (percent of coocurrence)
STARs (spatio temporal association rules) -- see Verhein and Chawla (2008) @verhein2008mining

Sequence mining -- search based on three parametes: duration of the sequence, event window (hyperparameter, treshold for temporal coincidence), interval between events

Periodic pattern mining -- full periodic patters, partial pp, cyclic or periodic association rules (Han and Kamber 2012) @han2006data -- see chapters 6 and 7

Visual analytics ... definitions:
Visual analytics is the science of data-driven reasoning facilitated by interactive visual interfaces to data management and analysis techniques (Thomas and Cook 2004). @thomas2005illuminating
Visual analytics is more than just information visualisation: while visualisation provides insights into data, visual analytics provides insights into how we *process* data during exploration and analysis. (Keim et al 2008) @keim2008visual
Visual analytics of spatio-temporal data uses links together data-mining techiques in visual interface with map as a central metaphor (Guo).


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
