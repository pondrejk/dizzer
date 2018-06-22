Figures and grounds
-------------------

Two tautologic definitions:

"Topographic map is a set of entangled thematic maps"
"Thematic map is a topographic map with one layer disproportionally enhanced"

In this chapter, and actually in the whole thesis, I explore how to create thematic maps from Big data.
Lets (reiterate) start with the distinction between the topographic and thematic cartography, as those arise from different practical motivations that translate into different design implications.

The starting point for a **topographic map** is a given territory, that is to be interpreted on a blank page/screen. In topographic maps we create a model of the surface, and we want to include all environmental characteristics that we believe to be relevant to the task -- and the task is usually to help with orientation in the given territory. The real alchemy of the topographic practice is to depict all layers without clutter -- the layers must be equally separable/retrievable. This is because we do not know beforehand which features or combination of features will become useful for orientation. Map creates a *taxonomic space* of what is to be known about the territory (let us set aside the power-related difficuties of what is being omitted and who does the selection on who's benefit) and puts these species to relationships. This synthetic aspect is for @wood2010rethinking one of the most important features of the map -- the sign systems (layers) are in constant dialog, allowing us to extract meaning from those relations that would be hardly obtainable without using the map. Here, "the whole is greater than the sum of its parts.” -- Aristotle.

In **thematic maps**, the starting point is is a phenomenon. We want to learn something about it by studying its spatial distribution, by searching spatial correlations with other features, and also by mapping how the internal structure of the phenomenon changes across space. 

Find the distinction in bertin... 

In both cases we overlay comprehensive sign systems (rivers, settlements, mountains...), though what differs is their relative visual prominence: we can say a thematic map is a topographic map that gives asymetric prominence to one layer of interest (though often richly differentiated in its cartographic presentation) and pushing the remaining layers to the role of toned down "base" merely aimed to provide geographical context for the reading of the topic. Sometimes things go as far as the base is reduced to the minimum (often administrative boundaries) or omitted alltogether (in such case the topographic context stems from the distribution of the signs in thematic layer -- from what @wood2010rethinking calls a *tectonc* code of the map). 

Let us make an aside about the limitations of the concept of layers (succesfully used in graphic programs such as Illustrator or Photoshop) in cartography. Example of railroads and highways -- when working with raw spatial data in a mapmaking system, say qGIS, we can easily switch the order of layers, however on all intersections the same layer will be the one overlaying/crossing the other -- we can switch the order but we can not treat the intersections differently per instance. So its ether *all* railroads passing over *all* highways or the other way around, but of course in reality both situations are likely. Of course, cartography has its ways to deal with this -- to entangle (mostly line) layers with each other (some more manual than others -- cituj prezentaciu švajčiarov s ich generovanými národnými mapami), but this points us to the fact that layers of the real world are not cleanly separable -- our experience of reality creeps in to remind us we are playing with a model.

So the layers in a topographic map are not merely overlayed, they are entangled, integrated with each other. We can turn the definition around and say the topographic map is woven from a collection of collection of thematic maps.

In Wood's words if the *sign systems are talking to each other* and *each sign system is potentially figure and every sign system is potentially a ground*. The thematic cartography is reducing the dialog, toning down the base layers in favor of the dominant voice of the main layer.   

In thematic maps, the thematic layer *is* overlayed on the base, no entangling is done. For years before we could rather say the topic is overprinted. The alchemy of the thematic cartography is to make the topic in its complexity stand out, and paradoxically this is done by manipulating the base. For example, if we look at subtle palette of 6 colour tones used in Czech ZM maps, it's clear that future thematic overlays were considered (and done, as overprints or web map overlays). There is a clear and solid border between topic and base, partly due to the technical limitations but also given by understanding base as something solid and rather fixed and the topic as abstract, fluid and driven by data with high frequency of change.  

The border between the topic and the base has transcended also to modern web cartography. Here, the standard around year 2010 is a base given by some pluggable tile service (predominantly stored remotely and not open to style changes) overlayed by some SVG vector shapes. WMS services are often designed as topographic maps, though there are examples of toned down style fit for a base map.

The interplay between the topographic base and the thematic overlay is at scrutiny on the following lines. The question is whether there is any value in breaking this border, now the technology that could facilitate this has arrived.

This means trasferring from the SVG overlay to canvas or webGL. Canvas allows for filtering of the overlayed matter -- so it is possible to "manipulate" the coloring of the external base maps -- it should be possible to extend those filters to make them more selective. Recently emerged base maps based solely on WebGL provide options for figure and ground.



Rendering technologies. A comparison
------------------------------------

How is the cartographic design influenced by the rendering technology applied? 
What technology (or combination of technologies) is suitable for cartographic visualization of dynamic data sets?

# SVG vs. Canvas vs. WebGL

- table of parameters (cartographic standpoint)
- graphic -- browser to GPU continuum (see Dominikus Baur) 
- history see @williams2012learning, chapter on HTML5 drawing APIs

## SVG
pros:
- vector
- accessability of elements trough DOM
cons:
- not suitable for large number of elements and animations ()

## canvas
pros:
cons:

## WebGL
pros:
- speed - uses client's GPU
cons:
- raster
- programmer's experience


Visualisation strategies
-------------------------

1. how to aggreate
2. pusing a theme to the base
3. how not to aggregate

-- one approach, get a timeline, historical dataset, treat it like it was a datastream and test your visualisateon assumptions
-- scnd approach -- emulate data

Iteraction strategies
----------------------
Andrejenko's view of tasks
-- how to support them in bd environment
