# Dealing with temporal aspect of big data

Aside from graphic density that causes illegibility of map symbolization, another direct impact of big data on cartographic visualisation stems from real-time changes in data. The problems lie not so much in adjusting visualisation to the most recent change but rather in enabling historical analysis and reasoning about the importance of changes in digital map interfaces.

Challenges of dynamic data lie both in the data space -- where it is a question of efficient encoding, storing, transferring and decoding long time series of data, and in the visual spaces -- where we are interested in depicting evolving spatio temporal relations and correlations. Naturally, the nature of temporal-analytic features designed for the map interface have impact on the data processing pipeline. We will touch this matter in discussion of time series encoding for vector tiles. But the majority of this chapter will focus on visualisation and interaction design stressing the temporal aspect of big spatial data. 

The visual analysis tool should work equally well regardless of the velocity of data generation or the cadence of change. For that matter, the temporally dense dataset should serve well for designing a cartographic interface even though the dataset is not itself consumed "real-time". We use this approach in the concluding case study about the changes in municipal traffic during the pandemic lock down in the city of Brno.



@dykes2003seeking -- visualisation challenges

@bach2014review -- space-time cubes https://hal.inria.fr/hal-01006140/document -- see e.g Khronos projector --  video time-space cube... 
TODO -- check ^ for timespace taxonomies, operations ... etc, (maybe for appendix)

Beware of change blindness -- @nowell2001change

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


spatial and temporal correlations
-----------------------------
Causation-related questions for cartography 
- finding spatio-temporal co-location that would support causation hypothesis is in currently realized by comparing spatial patterns. The causal delays may hamper such comparison, one approach is extend the time range of records (e.g. comparing cumulative data within two choroplets can smooth the volatility in favor of the overall tendency). 
- Another approach is in looking for some general similarities between two sets of snapshots (spatial patterns) – if there is some similarity occurring at some interval then we have identified the delay interval. This is spatial but not temporal collocation. Problem: this assumes causal relationships across the whole area of pattern – how to search for delay in just a sub area?
- Temporal but not spatial collocation – is map a good tool for displaying this (rather a bar chart? Yes e.g moving air masses – we infer the future state in place from the state in past elsewhere)
- What amount of apparent spatio-temporal collocation allows to rule out epiphenomena? Can map alone rule out a hidden common variable?
- How to map causal-like relationships, e.g. potential for causation to happen via variations of state across the area?
- overall, the ability of dynamic maps to find these collocations and link them to causation is to be assessed, but how? :)



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



@thomas2005illuminating
----------

Navigation and other problems that involve reasoning about space are well studied; however, reasoning
about sequence of events is not as well understood.

Levels of interaction: human time constants

Analysis of human time constants for human-computer interaction was initially discussed by Card et al. [1983], considered from a cognitive science point of view by Newell [1990], and discussed from an information visualization point of view by Card et al. [1999]. Newell describes four bands of time scales for human action (biologi- cal, cognitive, rational, and social) ranging from 100 microseconds to months. For purposes of a science of interaction for analytical reasoning, the two bands of greatest focus are Newell’s cognitive (100 milliseconds to 10 seconds) and rational (minutes to hours) bands. Card describes three distinct bands within Newell’s cognitive band. Note that these time constants represent approximate time ranges. That is, when we say ~100 milliseconds, we mean somewhere in the range of 50 to 300 milliseconds. 

~100 milliseconds. Card refers to this as the perceptual fusion time constant, while Newell refers to it as the deliberate act time constant. This time constant is the rate necessary to produce the perception of a smooth animation. In animation, 10 frames per second equates to 100 milliseconds per frame. In interaction design, this time constant is the rate necessary to create the perception of an immediate response. Users expect to see an immediate response when they move a dynamic query slider [Ahlberg, 1994]. Likewise, as users brush over items of interest, they expect to see immediate corresponding highlighting of the linked items [Cleveland, 1999]. This time constant is also important because minimum human motor response time is around 250 milliseconds.

~1 second. Card refers to this as the unprepared response time, while Newell refers
to it as the operation time. For our purposes, this constant represents the necessary rate
of response to simple user actions. For example, clicking a web link should produce
the display of the next web page within 1 second to be effective. If the response might
take more time, it is important to provide some kind of feedback in the 1-second
timeframe to reassure the user that something is happening. This time constant is also
important for interactive animation, like user-initiated transition animations (tran-
sitions from one complex structure to another or one viewpoint to another). It has
been demonstrated that providing a 1-second transition animation can reduce user
task performance time compared to providing no transition animation [Robertson
et al., 2002].

~10 seconds. Both Card and Newell refer to this as the unit task time. This is
the time within which users expect more complex user-initiated activities to com-
plete (e.g., a complex search). Again, if an activity of this kind will take more than
10 seconds to complete, it is important to provide the user with feedback within this
10-second timeframe.

~100 seconds (minutes to hours). This is referred to as the rational band. Higher-
level reasoning processes, including the analytic reasoning and human-information
discourse processes described in Chapter 2, take place in this band. Interaction tech-
niques in this timeframe rely heavily on complex cognitive processing and are greatly
affected by attentional resource demands such as interruptions and shifts in focus.
These techniques are the least well understood and developed.

Develop visual representations and new analysis techniques for streaming
data, including data collected by sensors. Develop visual analytic techniques
that detect and show changes in the streams and that integrate with predictive
modeling tools.

The research challenge is to create a new class of visualizations for streaming data.
Three significant problems must be addressed for streaming data visualizations:
1. Provide situational awareness for data streams.
2. Show changes in the state of the system and help users identify when the
changes are significant.
3. Fuse various types of information to provide an integrated view of the
information.
Visual representations by themselves are insufficient to answer many analytic
questions and must integrat

# A friendly introduction to Bayes Theorem and Hidden Markov Models
<https://www.youtube.com/watch?v=kqSzLo9fenk>

example of hidden markov model
— from one variable (persons mood) we infer the other "hidden" variable (weather)
— we have to have some training dataset of previous runs of both variables from which we calculate transition probabilities (change from one state to another in the hidden var, e.g. from sunny weather to rainy) and emisshin probabilities (probability of a state in hiiden var causing state in other var — e.g. sunny weather makes me happy in 80% of cases)
— bayes theorem — calculating the probability of a state in hidden var based on — prior probability (percentage of sunny days in training set) + emission probabilties + state of known variable —- this calcualtes posterior porbability of a state of hidden var

— also we can calculate the transition in hidden var based on transition of known var — this gets more complicated in longer sets — *Viterbi algoritm* simplifies by storing just the most probable path throughout the run

# Bayesian surprise maps
@correll2017surprise
Biases in thematic maps:
- base rate bias
- sampling error bias
- renormalization bias


# Case Study: Pandemics traffic exploration

## 1. data sources and transformations

- description of initial data source from mapbox
<https://docs.mapbox.com/traffic-data/overview/data/>

# typical file content
In their uncompressed form, each CSV file contains one line per road segment: segment_identifier,speed_1,speed_2,…,speed_2016
 - segment_identifier: Either a comma-separated pair of OpenStreetMap node IDs or an OpenLR string.
 - speed_1,speed_2,…,speed_2016: *2,016* comma-separated integer speeds in kilometers per hour, starting at 0:00 Sunday in the file’s time zone. Each value shows the usual speed during a five-minute period of a typical week within that road segment.

Files (prague) at large zoomlevel:
1 086 958 lines (segment pairs)
2016 rows


process so far 
- get just the first 2 collumns from one traffic files
- extract unique node IDS from traffic data (form these 2 cols) -- script https://github.com/pondrejk/scripts/blob/master/data/unique-nodes.py
- find coordinates for unique nodes -- https://github.com/pondrejk/scripts/blob/master/data/get-node-coordinates.py
- load point coordinates to qgis, get intersection with buffered brno area
- done Brno-selected_nodes.csv
brno points length
38293
- then find all the segments that contain the said points (form the first 2 colls of the initial file, than deduplicate)
brno segments length:
131 257

celkový rozsah dat pro brno
131257 x 2016 x 14 = :

- now the challenge is to extract the data lines for brno, this time with attributes (2016 cols) -- which means comparing and finding 131257 in 1086958 lines for 14 files.


### out-of-core computation (small tools for big data)

- quick notes on manifesto
https://smallbigdata.github.io/manifesto.html
https://pythonspeed.com/memory/ -- mainly section on Data management techniques -- first estimaton, then basic techniques

https://pythonspeed.com/articles/estimating-memory-usage/
https://pythonspeed.com/articles/data-doesnt-fit-in-memory/

- code changes (not our case)
- compression 
- chunking 

basically map reduce
So here’s how you can go from code that reads everything at once to code that reads in chunks:

    Separate the code that reads the data from the code that processes the data.
    Use the new processing function, by mapping it across the results of reading the file chunk-by-chunk.
    Figure out a reducer function that can combine the processed chunks into a final result.

- indexing with sqlite 
problem is the limitation to number of collumns (2000 in sqlite), it can be increased by setting a parameter at compile time, though using a custom compiled database makes the related code specific to it and not portable. Other solutions are data warehouses, alternative databases -- TODO check

- parallelism -- dask (even with chunked storage, computation can become a bottleneck)

Dask isn’t a panacea, of course:
    Parallelism has overhead, it won’t always make things finish faster. And it doesn’t reduce the CPU time, so if you’re already saturating your CPUs it won’t speed things up on wallclock time either.
    Some tuning is needed. Larger block sizes increase memory use, but up to a point also allow faster processing.

Dask work -- final scrpt combining chunking and parallelization:
 https://github.com/pondrejk/scripts/blob/master/data/select-segments-03-dask.py

Runing on i7 8 cores, 30 gb ram, 1 select:
[########################################] | 100% Completed |  3min 32.8s


- *inset* gpu utilization (coda??)
- reading from disk mmap() vs. Zarr/HDF5 -- doesn't help much

extra: GPU utilizaiton in computation:
https://www.geeksforgeeks.org/running-python-script-on-gpu/ numba (only NVIDIA GPUs supported)
- computation heavy solutions https://pytorch.org/docs/stable/notes/cuda.html
- https://www.tensorflow.org/guide/gpu

### how to encode and decode time based rles to vector tiles
- rle - will save memory?
- split to files per week?
- split spatially to districts?
- connect to database? (good for additional diagrams)
- change z axis and camera view
- 


## 2. app architecture (describe database solution and other options)

- timescaledb?
- influxdb?
- geomesa?
- geotrellis?

- pipeline for generating vector tyles from these data?
- analytical schema for vector tiles used for trafic display?



## 3. user interface design
## 4. interesting findings
- what spatio-temporal queries are enabled by this kind of visualisation? Which are not? (see chapter 2)
## 5. possible extensions


