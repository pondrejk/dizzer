# Dealing with density

The vast majority of what is presently understood as spatial big data has point spatial reference. This prevalence comes as natural if we consider that the "datapoint" location is described basically as a coordinate pair -- two digits that can be easily stored in standard database systems witout the need to concern topological rules and other constraints that GIS vector data model enforces on line and polygon geometries. Point data are spatial data that are easily created and handled by non-spatial (meaning not GIS-enabled) systems that account for majority of data production. For this reason we will almost exclusively focus on visualisation issues related to point data^[We'll use point data as a shorthand for data with point spatial reference.]. This doesn't mean that those point locations can't or shouldn't be transformed to other kinds of representation -- as we'll see further, for massive datasats there's not much other choice.

Point spatial data are not a homogenous group -- there are three types of point data objects of interest, for convenience we can nickname them as *sensors*, *agents* and *events*. These three classes are differntiated by their bahaviour in space and time, more precisely by how dynamic is their *existence*, *location* and *attributes*.

- stationary objects (codename "sensors") have static position and presence, meaning that they don't move and they don't usually dissapear during the course of observation in short or medium timespans. What is dynamic is a set of attributes attached to the object -- in big data world these attributes can come as a continuous datastreams. Basic example is a weather station.
- moving objects (codename "agents") move around, so their position changes during observation, also their existence can be dynamic, meaning they can enter or exit the area of interest. Various kinds of dynamic attributes can be attached. We can reconstruct the history of movement of these objects, which  particulary invites conversion to linear representation. Examples are vehicles or pedestrians carying GPS devices. 
- episodic objects (codename "evnets") have presence limited to a specific point in space and time. As they are short-lived, we can say that position and associated attributes are static. Prominent example are data collected from social networks. 

This destinction is naturally dependent on frames of reference, for example objects seen as stationary in shorter observation perionds can become mere events if timeframe is significantly extended. Similarly if events can be reimagined as moving objects with discrete presece across observation timeframe, for example when social media "tweets" dislocated in space and time poit to a single moving source device. 

![**Fig.** Three types of point spatial objects in a timespace cube. Stations, actors and events generate diffierent atribute histories.](imgs/bd-diagrams-joke.png)
  
From the above images events seem as least data-rich though the analytic potential stems from their acummulated high number. Clusters of goreferenced point events are at the core of social media analysis.  


## Intro on difficulties
-- some survey on visualisation pipelines @moreland2013survey
-- my own vis pipeline simply showing how data reduction occurs and for what reasons (technological reasons / cognitive reasons) -- technological may be diminishing, but cognitive will still pose limitations. Machine learning could bypass the need for cognitive limitations (what kinds of task are mlearnable, also what are the tasks/questions that can be meaningfully answered? -> via negativa), how the design of ineractions could help with cognitive limitations

data -> technological filter -> coginitive filter -> idea/decision

TODO: image - dataflow via those filters (later).

processing difficulties ... technological filter - screen resolution limits, infrastructure limits -- not all datapoints can be shown.
cognitive filter -- not all can be processed, how to define and check automatically? 

![**Fig.** Big data scatterplot on the left and big data parallel coordinate plot on the right. A tongue-in-cheek reflection on human perceptual limits, modified after @fischer2015why.](imgs/bd-diagrams-joke.png)

# Congestions + Data reduction methods

## Avoiding aggregation

- resolving conflicts -- long tradition in cartography, but how scalable and automatable? Spatial displacement techniques (non-cartographical) -- jittering @trutschl2003intelligently, topological distortion @keim2010generalized -- expanding (like cartogram for scatterplots)
- minification of symbols + downplaying or reducing the backgroud
- pixel-orientation -- maximizing screen utilization @keim2000designing 
- spatial distortions -- cartograms -- affects other spatial layers -- common distortion rule is needed to make sense for all layers -- population?
- filtering and sampling (below)
- alpha blending -- transparency (pros and cons)
- resigning on spatial presentaton: visualisaton of 1D event streams (using coordinated views: linking/brushing)
- 3rd dimension -- interaction and exploration of a time-space cube


@correll2017surprise:

One  approach  to  event  visualization  is  to  visualize  individual
streams  of  event  density  [@beard2008framework (no access, probably some coordinated views for explor. analysis),  @krstajic2011cloudlines -- multiple time series, density estimation in text streams].   While  streams  of  1D  event  den-
sity data are useful,  they require careful layout and sorting in order
to illustrate spatial patterns. Where both the temporal and spatial com-
ponents of the event data are important, other approaches seek to vi-
sualize the “space-time cube” [@bach2014review -- see for review of timespace cube approaches] directly, mapping events to points in
3D space [@gatalsky2004interactive -- just an description of an implementato of some 3D cube observer, @tominski20053d -- time-space cube inspired catographic symbols (pencil/helix icons) observable in the 3D space].  For many cases, we find this approach unsatisfac-
tory; projection and occlusion issues require interaction and 3D spatial
reasoning in order to discover patterns of interest. 


Other stuff to check:
@janetzko2018pixel

## Aggregation 

Cartographic generalization model by McMaster and Shea (?) recognizes the following types of aggreation -- TODO

The type of priary interest for us is the one using the equal-shape tesallerations. This type appears to be most flexible as data are aggragated to the standardized shape that is defined *ex ante* and therefore not dependent on the character of aggregated data. Unlike (e.g. interpolation methods, heatmaps, etc.) the referential geometry does not adjust to the changed data, which makes the computation performace quite scalable and predictable across higher data loads.

When it comes to the shape of the referential geometry, we can chose from three types of tessaleration that completely divide space into units of same regular shape^[In fact there are x complete (currently known) shapes that produce complete tessaleration, but only regular convex shapes are interesting for cartographic use.]: square, hexagonal and triangular shapes.

--- ease of creation
Square grid is the simplest division of space.

- hexagonal -- centroids in hexagonal binning form a triangular grid, so an individual hexagon has the same distance from all it's neighbours (why is that good? not th case of rectangular grid).
- rectangular -- can create pyramids for hierarchical aggregation, that is a higher level shape can fully contain shapes of lower level wihch is not a case for hexagons. Rectangular shapes are also better fit for proportional scaling in two dimensions (width and height) which unlocks potential for displlaying an additional vable.

-- some literature with discussion: @unwin2006graphics -- compare 3 schemes, @carr1987scatterplot hexbins -- reduced bias in density estimation, but @scott2015multivariate -- showing marginal differences  

from https://www.meccanismocomplesso.org/en/hexagonal-binning/?fbclid=IwAR2IDJGQGed1rtLsoe0M_NVHqxZp6rdGfvUD370ccaO7_XsJmG989JqjQbQ

'''
The most evident is that hexagons are more similar to circle than square. This translates in more efficient data aggregation around the bin center. This can be seen by looking at some particular properties of hexagons and, especially, of the hexagonal tessellation.

Hexagon is the polygon with the maximum number of sides for a regular tessellation of a 2D plane.

This makes the hexagonal binning the most efficient and compact division of 2D data space.
hexibins-patterns

Fig.6: the hexagonal tessellation

In fact, although you can create many pattern using two or more types of polygons,  this is not possible if you are using the same polygon if this has more than 6 sides. Only triangles, squares and hexagon can create them.

    In an hexagonal binning, adjacent hexagons shares edge borders and not only vertex borders.

Instead in square and triangular binning, triangles and square share only a vertex border with some adjacent.
hexbins-patterns2

Fig:7. sharings of the borders in different tessellations

Considering polygons with equal area, the more similar to a circle this polygon is, the closer to the center the border points are (especially vertices).

Thus any point inside a hexagon is closer to the center of any given point in an equal area square or triangle would be. This is because square and triangles have more acute angles.
'''

## density vs. attribute visualisation
- implanation - classification techniques: classical, new: yiang - fractal breaks, bayesian surprise, uncertainty-adjusted scales
- shape, position, other options for multiple vis -- indiemaps article, other tesallerations

liu2013immens (done)
---

*Scalability of visual encodings* (how visualized) vs *interactive scalability* (how interaction works) -- both should be limited by the chosen resolution of visualized data not the number of records.

Aggregation methods ~= Data reduction methods:
- bridge to previous chapters regarding sampling: bd analytics may no longer require it, though visualisation needs it (unfortunately?)

a.) filtering & sampling: Subset of data is selected to wich we apply visualisation techniques. The key problem of sampling is selecting a subset that is representative of the whole dataset. Several types of sampling were designed to increcase the likelihood that a sample genralizes well to the whole population.

With simple random sampling each point has the same probability of being selected. Members of population are uniquely identified by consecutive positive integers and then pseudo-random number generator is used to select the subset of required size. As no other variables are considered, this technique can produce wildly unrepresentative samples from heterogeneous sets, where important structures or outliers can be omitted.
 
Systematic random sampling tries to avoid some limitations of the purely random approach to ensure main groups present in the population don't get omitted or oversampled in the subset. A random component is maintained by selecting randomly within the specified groups; the number of elements picked from each group doesn't have to be uniform, as groups can be weighted to preserve the relative importance of groups in the source dataset. Spatial equivalent of this approach is called geographically *stratified* sampling where we divide the area of interest into sub-areas (for example quadrat or hexagonal tessellation) and perform random selection within each cell. This is useful when we want an even coverage of the area of interest in the sample. Furthermore, for spatially uneven populations, we can employ *cluster* sampling, where we pick more samples from certain areas, for example from metropolitan areas -- which is effectively weighting the areas by population. The third class of spatial sampling, *systematic* spatial sampling, that takes samples from evenly distributed locations, is more suited for sampling from continuous data rather than from discrete point clouds that mainly interest us in this chapter.

A straightforward way to evaluate the sampling design is comparing distribution and basic statistics such as mean and variance of population and sample. @chun2013spatial compared random, systematic and stratified sampling on three kinds of simulated trend surfaces: linear (gradual increase from one side to another), quadratic (highest value in the centre gradually lowering radially to the sides) and oscillating (several sinusoidal bumps and pits). According to their findings, stratified spatial sampling generally better preserves mean of the population, systematic spatial sampling performs better at preserving variance.

Spatial sampling differs from regular sampling, often breaks i.i.d. (independent and identically distributed) assumption, see @wang2012review for review of spatial sampling.

Sampling has many uses to speed up analysis, when avoiding assessing the entire population is feasible. Advances of big data infrastructure reduce the need for sampling out of necessity. Not only a data reduction technique, but often (esp. in spatial sciences) a data collecting convenience (collecting data at discrete locations and interpolating). Also resampling techniques (bootstrap, jacknife, off-by-one ... others) are useful for testing and validating spatial models, Bootstrap is better for distribution estimation, jacknife is superior for variance estimation  @chun2013spatial. See @kleiner2013general for evaluation of the bootstrap techniques from the performance standpoint.

Elaborate sampling methods require specific dimensions are chosen ahead of time, requiring prior knowledge and often costly pre-processing (@liu2013immens). Moreover, in vast datasets the reduction would have to be too significant. Sampling to ease point cloud visualisation doesn't seem as an adequate approach.

b.) binned aggregation -- Binning aggregates data and visualizes density by counting the number of data points falling into each bin. (TODO terminology from the generalizaiton pov)

c.) model-based abstraction - describing data in terms of mathematical models or statistical summaries. -- basically meaning interpolation techniques in spatial world

d.) hybrid reduction methods -- combinations, eg. binning with displayed outliers in dataset as well as binned density (@novotny2006outlier use it in parallel coordinate plots), no reason not to apply in bins.
-- research on combining sampling and aggregation: BlinkDB -- builds fast approximate queries a multi-dimensional and multi-resolution stratified samples and computes aggregates over this reduced data. BlinkDB -- queries with bounded errors and bounded response times @agarwal2013blinkdb
-- online aggregation -- showing continuously updating aggregates and confidence intervals in response to a stream of samples -- hellerstein1997online, fisher2012trust

###Designing binned plots 

Why binned plots?
-- conveys to both global patterns (densities) as well as local features (e.g outliers)
-- multiple levels of resolution via varying cell size
-- they refrain from using additional visual variables such as texture or size as they believe it can interfere with interpretation (I don't). Mulitdimensional displys can solve it -- coordinated views, trellis plots ++ brushing and linking


###Interaction with binned plots

### Point aggregation
-- mostly don't like it -- difference between current applications and what should be acheived
-- loss of orientation between zoom levels -- smoother transition of collapsing/grouping ponts -- show paths/traces? 
-- point aggregation -- basically sampling with information on how many points are represented ...

## Tasks
* anderienko on tasks: (andrienko2003exploratory, and andrienko2006exploratory -- TODO revisit and compare how these accounts differ -- probably apply above)
- ultra brief @andrienko2003exploratory: 
Analytical tasks ivolving event data can be characterized at some combination of *what* + *when* + *where* 
To support these tasks, event visualisation must, at a minimum, *illustrate spatial patterns*, and, if a temporal axis is present, *afford navigation or summariaztion through time*.

- notes from hierarchical aggregation paper @elmqvist2010hierarchical
- inmems papaer -- interactive scalability for panning, zooming, brushing and linking.

mulitple attributes
figure vs. ground - comparison with spatial context


# parameters of binned visualisation

Cell sizes: staisticians proposed several heurisics to select bin sizes -- applicability to big data unclear (some explanation and critique on Sturges in @hyndman1995problem): Struges's formula @sturges1926choice, Scott's reference rule @scott1979optimal 
Color encodings --density can be encoded to hue, luminance or opacity

@liu2013immens use frumula for hue intensity in bins: y = alpha + ((x - xmin)y/xmax-xmin)(1-alpha)
Y comes betw 0 and 1, x is the data value
-- what other libraries use?

# more
https://www.microsoft.com/en-us/research/project/user-experience-with-big-data/#!publications

@correll2017surprise
Biases in thematic maps:
- base rate bias
- sampling error bias
- renormalization bias

# app -- binning playgound
-- timeline to simulate movement
-- bins / hexagons
-- varying size of bin -- some statistics for size selection
-- moving the bin around area
-- couple/decouple bin resize with map zoom
-- various color shemes -- for density
-- usage of transparency

-- multidimensional:
-- using relative size, in squares use two size changes
-- inscribe proportional circles (both), squares -- only rectangular grid

-- more dimentions:
-- inscribe marimekko charts / pie charts - split charts for 2 densities
-- hachures over bins ...
-- outlier in bins, etc...
-- try selfhosted mapbox for 3D view? -- or check uber glsl wrapper
 
 A friendly introduction to Bayes Theorem and Hidden Markov Models
-----------------------------------------------------------------
<https://www.youtube.com/watch?v=kqSzLo9fenk>

example of hidden markov model
-- from one variable (persons mood) we infer the other "hidden" variable (weather)
-- we have to have some training dataset of previous runs of both variables from which we calculate transition probabilities (change from one state to another in the hidden var, e.g. from sunny weather to rainy) and emisshin probabilities (probability of a state in hiiden var causing state in other var -- e.g. sunny weather makes me happy in 80% of cases)
-- bayes theorem -- calculating the probability of a state in hidden var based on -- prior probability (percentage of sunny days in training set) + emission probabilties + state of known variable --- this calcualtes posterior porbability of a state of hidden var

-- also we can calculate the transition in hidden var based on transition of known var -- this gets more complicated in longer sets -- *Viterbi algoritm* simplifies by storing just the most probable path throughout the run


figure-ground
-------------
density/overlay vs spatial context
