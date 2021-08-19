# Introduction

The main goal of this thesis is to explore the possibilities of cartographic visualization of big data sets using practical examples based on real data from the city of Brno. We aimed to thoroughly asses the big data related limitations as well as the unfulfilled potential across the whole process of creating a digital interactive map. This includes the challenges of data processing, data analysis, choosing cartographic visualization methods, designing interaction modes and user experience, and developing the final web application. Besides the findings offered in the text, two interactive web applications are presented to demonstrate some of the outcomes.  

The motivation for writing this thesis stemmed from the unprecedented global increase in generated and stored data, together with related societal implications that are only starting to unfold. Another, more personal motivation was to channel the author's long time interest in cartographic visualization and to summarize his practical experience with design and development of map-based web applications.

We can argue that there are three main shifts that started to alter how digital maps are produced, disseminated and interacted with. We believe that these tendencies will continue to have a growing influence and will gradually transfer digital mapmaking into new realities. Scientists and practitioners in fields of Cartography and Geoinformatics should not overlook these trends, in order to maintain the future relevance of these disciplines. At the same time, Cartography and Geoinformatics are uniquely positioned to take part in these efforts to work towards greater spatial enablement of general society. 

The mentioned shifts are threefold:

1. Changes in the characteristics of mapped data 
2. Changes in how maps are distributed over the network
3. Changes in how maps are rendered for users

These three points are reflected in the structure of the thesis. 

*Changes in the characteristics of mapped data* refer to the onset of big data sets. Chapter 1 looks at the definition of big data and provides a thorough literature review of various ways how this concept is understood. Special consideration is given to the notion of spatial big data and the related works from the spatial fields.

Chapter 2 further considers spatial big data from the point of analysis. The possible role of Cartography is also discussed, be it in fulfilling big data related research agendas, developing user engagement with applications or in facilitating collaboration in greater teams.

The topic of spatial big data extends also to Chapter 3. Here we discuss how the defining properties of big data translate to cartographic challenges of high spatial and temporal density, and how we can address them within the design constraints of digital mapping environments. We look more closely on the method of hexagonal aggregation and its advantages in addressing the spatial density of big data sets. Issues of user interactions with digital maps are also discussed.    

*Changes in how maps are distributed over the network* refer to the growing adoption of the vector tile exchange format. In Chapter 3 we discuss the specifics of the format compared to raster tiles. We describe the technical specifics of vector tile creation, dissemination, rendering and styling. 

*Changes in how maps are rendered for users* is closely connected to the capabilities of WebGL rendering environments. In Chapter 3 we thoroughly discuss how the combination of WebGL and vector tiles enables new options of cartographic visualization as well as new modes of interaction for users.

The advantages and limitations of transforming spatial big data into vector tiles for visualization in WebGL-based environments are exemplified in two case studies in Chapters 4 and 5.

Chapter 4 describes the design and development of an urban recommendation system for the city of Brno. This prototype application shows the potential of dynamic visualization based on hexagonal grid. Two modes of cartographic visualization are showcased and evaluated.

Chapter 5 describes an application for viewing traffic patterns in the city of Brno during the eight weeks of the spring lockdown. Here we test how vector tiles accommodate the temporal density of a dataset originally published as a live stream. Also we 

The concluding chapter of the thesis synthesizes the results, lists the next research avenues and presents an outlook of the future developments in spatial data processing and visualization.

