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


