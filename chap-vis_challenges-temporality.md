# Dealing with temporality

visualisation overviews (don't go to detail, just mention):
@muller2003visualization
@andrienko2003exploratory
https://datavizproject.com/
@dykes2003seeking -- visualisation challenges

@bach2014review -- space-time cubes https://hal.inria.fr/hal-01006140/document -- see e.g Khronos projector --  video time-space cube... 
TODO -- check ^ for timespace taxonomies, operations ... etc, (maybe for appendix)

Beware of change blindness -- @nowell2001change

mocking 
--------
 -- one approach, get a timeline, historical dataset, treat it like it was a datastream and test your visualisateon assumptions
-- secnd approach -- emulate data

value of real time, value of comparison with older states
-------------
Parallel to family photography -- value rises with time


how to measure velocity
----------

-- thickenss of durative code in wood's terms
-- other assessment -- events per unit of map time
-- time scale, time resolution


visual variables for animated maps
--------------------
Video on visiulal variables in animation and more research in this topic -- mac eachran
- not much of these variations is actually useful

opseorafia vs kinematografia
----------------------------

@weibel1996kurt v preklade @vcihak2013ponorna -- "Muybridgea následovali ti umělci kterí se zajímali o pohyb, dynamiku, montá6 a imitaci reálného života; Mareye ti, kterím záležalo na vidění, přerušní a konstrukci filmové reality. Kinematografie nakonec využila aparátem poskytnutou iluzi pohybu aby film postavila do služeb literatury, divadla a opery. Opseografie chce naproti tomu film rozvíjet dále jako outonomní umění a udělat z něj umění vidění (vnímání)."


@bollier2010promise
--------------------
-- Many innovative uses of Big Data could be called “now-casting,”
said Varian. This term refers to the use of real-time data to describe contemporaneous activities before official data sources are available. “We’ve got a real-time variable, Google search queries, which are pretty much continuous,” said Varian.  “Even if all you’ve got is a contemporaneous correlation, you’ve still got a six-week lead on the reported values” for certain types of data.

--  “To make money, you’ve got to predict two things—what’s going to happen and what people think is going to happen."


Thoughts on time in infovis
---------------------------
@kriglestein2014pep

Two ways of representing time: -- repr. time with space (e.g. time lines), rep. time with time (animation)

Time classifications: linear/cyclical, time points/time intervals, oredered time/branching time

small multiples vs animation
-----------------------------
-- small multiples good for longer time periods -- empirical research:boyandin2012qualitative (We observed that with animation the subjects tended to make more findings concerning geographically local events and changes between subsequent years. With small-multiples more findings concerning longer time periods were made. Besides, our results suggest that switching from one view to the other might lead to an increase in the numbers of findings of specific types made by the subjects which can be beneficial for certain tasks.) and  irina2008novel (eye tracking)

--small movement of clusters are hard to detect with s.m. --griffin2006comparison (We found that map readers answer more quickly and identify more patterns correctly when using animated maps than when using static small-multiple maps. We also found that pace and cluster coherence interact so that different paces are more effective for identifying certain types of clusters (none vs. subtle vs. strong), and that there are some gender differences in the animated condition.)

-- limited number s.m. to be effective -- dransch2010assessing

@tufte1998visual
-- on multiples: "Multiples represent and narate sequences of motions. Multiples amplify, intensify, and meaning in images. Multiples difectly depict comparisons, the essence of statistical thinking." --          for example of multiples think Muybridge.

Some show parallelism, some depict motion -- in such case "viewers must interpolate between images, closing up  gaps." "Space replaces time as the sequencing dimension. ... Sequences of still images suffer the obvious (though no less important in being so) loss of the experiance of the passage of time, the loss of the rates and rythms of the actual motion," -- often aggravated by omitting any explicit time scale.
-- on confections: "...confection is an assembly of many visual events, selected (...) from various Streams of Story {quote from Rhushdie -- Haroun and the sea of stories}, than brought together and juxtaposed on the still flatland of paper. By means of multiplicity of image-events, confections illustrate an argument, show and enforce visual comparisons, combine the real and imagined and tell us yet another story.
-- Dataviz can roll-back the time variously tinker with data representations thus bypassing the need to use metaphors and verbal descriptions.


taxonomy of temporal events
---------------------------
To define the possibilities of visualisation of time, a taxonomy of temporal events is needed. From the perspective of location, three types of changes can be proposed - appearance or disappearance, mutation, and movement [20] @blok2005dynamic. From the perspective of the temporal domain, it is possible to distinguish moment, sequence, duration, pace, and frequency. Single events can also interact with each other and occur or partially overlay within the same space or/and time.



@ott2001time
------------

taxonomic model of time (based on @frank1998different)

|        |            | Total Order       | Partial Order       | Branching      | Multiple                        |
|--------|------------|-------------------|---------------------|----------------|---------------------------------|
| Linear | Ordinal    | Single experience | Multiple experience |                |                                 |
|        |------------|-----------------------------------------|                |                                 |
|        | Continuous | Continuous time                         | Branching time | Time with multiple perspectives |
|--------|------------|-----------------------------------------|                |                                 |
| Cyclic | Ordinal    | Cyclic time                             |                |                                 |
|        |------------|                                         |                |                                 |
|        | Continuous |                                         |                |                                 |
|--------|------------|-----------------------------------------|----------------|---------------------------------|

Both linear and cyclic time can have different granularities, (unit 1 chronon can have different values (1 year, 1day...))
Changing granularity (through aggregation or conversly decomposition)

bi-directional time structure (branching time) (based on @hazelton1992developments)

past --> future
     |---> future worlds modelled from past
     |
 <---|---> present
 <---|
retrospectivelly
modelled worlds


Relations between time intervals (after @allen1985common):

before
.....
      .....

starts
......
.........

finishes
..........
    ......

meet
........
      ............

equals
..........
..........


overlaps
......
  .....

during
............
  .......

notes from pelekis2004literature 
---------------------------------

space time cubes and dimensionality
---------------------------------
@richards2004individuals

Space-time cube -- maybe a simplistic view of time, but also a rich source for interpreting the world as we normally experience it.

Dimensionality -- x-y-z-t, speaking of "absolute" space is doubtfull, althought instristically time and space may be absoulute, they are always measured in some arbitrary and subjective coordinate systems. 

Euler vs Langrange -- Eulerian approach: making observations at fixed spaital locations (time series, etc.), which are used to infer the time-space structure of the phenomenon under investigation. Lagrangian representation: a finite unit is tacked along its course -- coordinate frame is static and dynamic phenomena are measured relative to iths course as it moves through the space (buoy).

Collapse of dimensionality (e.g. transformation from 3D to 2D) can lead to loosing information, decreasing reliability.

(And even the) brain has a difficulty coping with systems whose 4-D evolution destroys much of the evidence of their prior states...

Large scale and long term require simplification. ...when high-dimensional system behaviour can be well described, it may be possible to identify consistent low-dimensional behavior patterns that can be represented more simply without direct reference to the underlying 4-D process.

Phase space, in. geography e.g. Melton -- four dimensional phase space of drainage basin properties...
Structure vs agency: The spatially distributed feedback between the form (structure) and process (agency) is therfore a broadly relevant conceptual framework for analysis of the dynamics of the systems...
Agent based modelling -- Regions are essentially aggregates - of smaller entities, of common characteristics -  which in turn are are 'constructed' by the Lagrangian behaviour of the individuals within them. Places are therefore emergent properties of large-sample individual behaviour in 4-D space-time.


On space-time cubes -- is a useful concept for imagining the relations between spatial, temporal and non-spatial dimensions (@guo2006visualization). Even though our spatial imagination is limited by 3-dimensionality of our everyday experience, data cubes allows us to assing visual clue to otherwise abstract database queries such as slicing and dicing. On the other hand intracting with the cube itself feels not user friendly, so intractive UIs typically use maps as slices of the cube -- so the spatial metaphor is always coherent timewise (true? maybe traces are an exception). 

Unused potential of s-t cubes becomes clear when considered together with searching for cyclical time patterns in spatial subsets (collumns of a cube) or when spatially correlating two phenomena with time delay (comparing slices). (TODO some picture of cubes to make it more clear)


absolute vs relative views of space and time -- useful?
----
from andrienko:
The possibility of treating space and time both as referrers and as attrib-
utes is reflected in the reasoning concerning the absolute and relative
views of space and time (Peuquet 1994, 2002, Chrisman 1997). According
to the absolute view, space and time exist independently of objects and
form a framework, or a container, where objects are placed. According to
the relative view, both space and time are properties attached to objects
such as roads, rivers, and census tracts.

^
peuquet1994s
peuquet2002representations
peuquet2008multi


# Case Study: Pandemics traffic exploration

## 1. data sources and transformations
## 2. app architecture (react redux mapbox)
## 3. user interface design
## 4. interesting findings
- what spatio-temporal queries are enabled by this kind of visualisation? Which are not? (see chapter 2)
## 5. possible extensions


