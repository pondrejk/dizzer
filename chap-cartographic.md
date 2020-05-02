Carto
-----

  *This chapter examines the propeties of Big Data from the point of view of cartographic tradition, theory, and practice. We will focus on challenges that these properies pose to cartographic visualization, as well as on the knowledge cartography can offer to wider data-related practice*


## Big Mapping vs Deep Mapping
@bodenhamer2015deep

## Big Data and cartographic theories
-- system
-- language
-- cognitve
-- critical

## Wood and Eco
-- 10 cartographic codes -- intrasignification / extrasiginification
-- content / expression pane
-- focus on intrasignification codes (iconic, linguistic, tectonic, temporal (tense & durative) presentational) and how BD properties can be translated to those codes.
-- for some theoretical part think of signification levels -- elemental, systemic, syntehtic (!!! -- draw on this: "map sign systems talk to each other"), presentational

#More notes from @wood2010rethinking:
Intrasignification codes:

* Iconicity -- signs: plan information vs plan-free information -- "continuum between and beyond" these (to which extent is sign dependent on a real extent of phenomenon)
-- plan free is "disengaged from direct spatial correspondence"
* Linguistic -- map text -- "not also naming but also illuminating" (in sense of medeival illuminations?)
-- text has also iconic parameters (size for importance etc.)
* Tectonic -- map projections
-- does not produce material imagery, only apparent through iconic signs,
-- provides "syntactic superstructure for iconic code"
* Temporal -- 2 subcodes: tense -- temporal topology, duration -- temporal scale. Duration can be thick or thin -- my note: how about measuring it by the number of events per time unit?
* Presentational -- marginálie "perimap"

Levels of signification: (interpreted by the reader simultaneously, not in sequence):
* elemental -- not meaningfully-separable elements, functional vs. sign construct interpretations
* syntactic -- elemental signs in geographical context, structuring the space, percievable as a whole but despite the variety in signs -- e.g. road map
* synthetic -- sign systems talk to each other, each sign system can be a figure ar a ground at a same time
* presentational

Some direct quotes:

Formalist approach -- Klee, Kandinski, Dondis (A primer on visual latency), Wong (Principles of two dimensional design) and Bertin. Klee sees medial and active conditions of a same image plane (woods example lake plane and border). Woods alternative *sign-construct* -- lake consists of lake shoreline (a border between two qualities) and lake surface.

Hidden critique of Bertin? "Map signs have to be considered in terms of both expression and content. Formalist postures that regard inly signifiers but not signs don't cut it, since our conceptualizations of phenomena structure, even dictate, the manner in which we discourse about them" -- signifier vs sign?

When reading a map "we attend more to the syntax of the system than to to the semantic import of its components" -- my note: good for big data as individual components often make no sense and there is plenty of it.

"We distinguish blue highways highways from rivers nit because their signifiers are a little wider and a little less sinuous, but because they are striuctured differently sd systms, because htey are manifestly different landcapes" -- my note: what about perceiving the thematic overlay that is not rooted in the real world?

"Maps are about relationships. In other words, they are about how one landscape (...) is positioned in realation to another. The map synthetizes these diverse diverse landscapes, projecting them onto and indto one another, eith less than a subtle hints that one is correlative to anotheror that *this* is an agent or effect of *that*."

"There is nothing in the map that fails to signify."

-----

@van20133v on visulaisation: "Visualizing might not be the most technologically difficult part; it sure is the most challenging part. Telling a complex story in a graph is very difficult but also extremely crucial. Luckily there are more and more big data startups appearing that focus on this aspect and in the end, visualizations will make the difference. One of them is future this will be the direction to go, where visualizations help organisations answer questions they did not know to ask."

notes from @tufte1985visual
----------

data-ink ratio: data-ink non erasable core of the graphic that presents data information.
`data-ink / total ink on graphic` = proportion of ink used to convey non-redundant information -- the number we want to maximize (within reason)

notes from @tufte1998visual
---------------

-- on perils of dequantification of statistical images: "...when scietifiec images become dequantified, the language of analysis may drift toward credulous descriptions of form, pattern and configuration .. rather than answer to questions *How many? How often? Where? How much? At what rate?*".

-- on John Snow's map and method, it was good because of 4 points:
1. Placing data in appropriate context for assesing cause and effect
2. Making quantitative comparisons
3. Considering alternative explanations and contrary cases
4. Assesment of possible errors in the numbers reported in graphics

-- on multiples: "Multiples represent and narate sequences of motions. Multiples amplify, intensify, and reinforce meaning in images. Multiples difectly depict comparisons, the essence of statistical thinking." -- for example of multiples think Muybridge.

Some show parallelism, some depict motion -- in such case "viewers must interpolate between images, closing up the gaps." "Space replaces time as the sequencing dimension. ... Sequences of still images suffer the obvious (though no less important in being so) loss of the experiance of the passage of time, the loss of the rates and rythms of the actual motion," -- often aggravated by omitting any explicit time scale.

-- on confections: "...confection is an assembly of many visual events, selected (...) from various Streams of Story {quote from Rhushdie -- Haroun and the sea of stories}, than brought together and juxtaposed on the still flatland of paper. By means of multiplicity of image-events, confections illustrate an argument, show and enforce visual comparisons, combine the real and imagined and tell us yet another story."

-- Also mentioning tufte quoting whasshisname author comparing life as a stream of stories. dataviz can roll-back the time variously tinker with data representations thus bypassing the need to use metaphors and verbal descriptions.

another tufte sparklines @tufte2006beautiful
---------------
https://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0001OR

A sparkline, as defined by Tufte, is “a small intense, simple, word-sized graphic with 
typographic resolution. Sparklines ... can be everywhere a word or number can be: embedded in a sentence, table, headline, map, spreadsheet, graphic.”

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

maceachren2004maps
-------------------
-- check mindtrees? probably out of my scope

notes from berlin paper on historical spatial data
--------------------

In this work, we will be using the theory of DiBiase[7] @dibiase1990visualization  (later revised by MacEachren and Kraak [8]) @maceachren1997exploratory

The quality of data in general can be evaluated in terms of completeness, consistency, positional and thematic accuracy and temporal quality [10]. <Iso I. 19157: 2013: Geographic Information—Data Quality. International Organization for Standardization (ISO). 2013;>

The reliability of a dataset is then associated with many types of uncertainty. One classification of uncertainty is defined by Fisher [11] @fisher1999models. On a basic level, he recognises three types of uncertainty: probability, vagueness, and ambiguity. We can also specify uncertainty based on the relevant domain - it may be spatial, temporal, or attributional. 

Hunter [15] @hunter1999managing defines two general possibilities. The first one, uncertainty reduction, is based on the idea that it is always possible to prepare a dataset of better quality anyway - for example by obtaining more information, doing further analysis or the model assessment. The second option is uncertainty absorption and consists of many options of how to work with uncertainty, some of which are relevant in the case of historical datasets. The first idea is to sensitively omit it, mainly when a domain expert finds the impact on the outcome minimal. The second option is to modify the visualisation method so this method displays both the features and their certainty - there are many examples of studies that show and compare these methods (see e.g. [16–19]). 
@senaratne2012usability
@maceachren1992visualizing
@kubivcek2012uncertainty
@kinkeldey2014assess

To define the possibilities of visualisation of time, a taxonomy of temporal events is needed. From the perspective of location, three types of changes can be proposed - appearance or disappearance, mutation, and movement [20] @blok2005dynamic. From the perspective of the temporal domain, it is possible to distinguish moment, sequence, duration, pace, and frequency. Single events can also interact with each other and occur or partially overlay within the same space or/and time.

eurovis 2018
------------

Bayesian surprise maps
------
@correll2017surprise


from unifying geography:
------------------------
@richards2004individuals

Space-time cube -- maybe a simplistic view of time, but also a rich source for interpreting the world as we normally experience it.

Dimensionality -- x-y-z-t, speaking of "absolute" space is doubtfull, althought instristically time and space may be absoulute, they are always measured in some arbitrary and subjective coordinate systems. 

Euler vs Langrange -- Eulerian approach: making observations at fixed spaital locations (time series, etc.), which are used to infer the time-space structure of the phenomenon under investigation. Lagrangian representation: a finite unit is tacked along its course -- coordinate frame is static and dynamic phenomena are measured relative to iths course as it moves through the space (buoy).

Collapse of dimensionality (e.g. transformation from 3D to 2D) can lead to loosing information, decreasing reliability.

(And even the) brain has a difficulty coping with systems whose 4-D evolution destroys moch of the evidence of their prior states...

Large scale and long term require simplification. ...when high-dimensional system behaviour can be well described, it may be possible to identify consistent low-dimensional behavior patterns that can be represented more simply without direct reference to the undrlying 4-D process.

Phase space, in. geography e.g. Melton -- four dimensional phase space of drainage basin properties...
Structure vs agency: The spatially distributed feedback between the form (structure) and process (agency) is therfore a broadly relevant conceptual framework for analysis of the dynamics of the systems...
Agent based modelling -- Regions are essentially aggregates - of smaller entities, of common characteristics -  which in turn are are 'constructed' by the Lagrangian behaviour of the individuals within them. Places are therefore emergent properties of large-sample individual behaviour in 4-D space-time.


classification schemes
-----------------------
see @jiang .. 4 citations
jiang https://www.researchgate.net/publication/311509530_Why_should_scaling_be_the_first_law_of_geography
head/tails breaks -- alternative to natural breaks for classification 
3rd definition of fractal -- 1st Koch - geometric, 2nd - Mandelbrot statistical, 3rd - pareto distribution recurses at least in two scales, or with ht-index greater than three


andrienko2006exploratory
------------------------

andrienko2003exploratory
------------------------
