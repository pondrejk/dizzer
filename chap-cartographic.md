Carto
-----

  *This chapter examines the propeties of Big Data from the point of view of cartographic tradition, theory, and practice. We will focus on challenges that these properies pose to cartographic visualization, as well as on the knowledge cartography can offer to wider data-related practice*



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

