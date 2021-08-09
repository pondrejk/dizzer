# 1 Defining Big Data


> *Small data are slow and sampled. Big Data are quick and n=all.*

> @kitchin2016makes

In this chapter we search for the defining properties of big data with focus on characteristics with possible implications for cartographic practice. We outline the main attitudes towards grasping the concept. Special consideration is given to the notion of spatial big data and the related works from the Cartography and GIS community.

## 1.1 Ontological characteristics

Despite the lively interest in the subject, the explanation of the term *big data* ^[Throughout the text we will treat the term as plural, without capitalization. Although there are strong arguments for "data" as singular (@widman2014when, @nunberg2013data, for counterargument emphasizing the plurality of big data see @wilson2017big) and some authors do capitalize, we chose to match with the majority of big data related literature. This does not apply to direct citations where we preserve the original author's formulation.] remains hazy. The term is often used without clarity, as there is no widely accepted definition to the date. Perhaps the most systematic effort in this matter by @kitchin2014data (refined in @kitchin2016makes) summarizes the key properties attributed to big data. Kitchin critically evaluates these properties and goes on to assign them a relative importance in distinguishing big from "small" data. He also takes care to separate the concept in itself from accompanying social phenomena, hence he speaks of *ontological* characteristics.

Kitchin's taxonomy provides a useful starting point for our thinking of big data from the cartographic standpoint, so let us list the ontological characteristics including some of the Kitchin's comments:

- **Volume** — can be measured in storage requirements (terabytes or petabytes) or in number of records
- **Velocity** — data generation happens in real-time either constantly (e.g. CCTV) or sporadically (e.g. web search); we can distinguish the frequency of generation from the frequency of data *handling*, *recording*, and *publishing*, where all three can be delayed from the time of generation
- **Variety** — data are heterogeneous in nature, though this property is rather weak as various levels of organization are allowed (*structured*, *semi-structured* or *unstructured*)
- **Exhaustivity** — an entire system is captured (*n=all*), rather than working with a subset created by sampling
- **Resolution and indexicality** — fine-grained (in resolution) rather than being aggregated; uniquely indexical (in identification), which enables linking to other datasets
- **Relationality** — containing common fields that enable the conjoining of different datasets
- **Extensionality and scalability** — flexibility of data generation, possibility to add or change new fields easily, possibility to rapidly expand in size

In relation to these characteristics it is important to mention two open questions that for many people make attempts to define big data vague at best, sometimes to the point of questioning the existence of the phenomenon itself.

First, there are no quantitative thresholds that would define exactly how large the "big" volume is, how fast the "big" velocity is, and so on. Some properties would even be hard to describe in quantitative terms (for example extensionality). Other properties sound too general or vague to act as a sound defining parameter (scalability). What is more, one could extend the properties ad absurdum, for example *variety* could refer to differences in structure, origin, quality, or any other property of a dataset. Such multilevel hierarchy of parameters and sub-parameters does not add to the overall comparability of datasets, especially when we consider that data generation procedures may be unique to certain domains and not found in others. Finally, many datasets lack metadata detailed enough to allow to judge all mentioned properties. It is possible that these issues will clear out with time, but parameter thresholds may as well remain blurry and ever in flux.

The second problem is that even if we had a clearly defined set of criteria, in practice we could hardly find a dataset that would fit all of them. Therefore not all properties are deemed mandatory, which in turn leads to confusion and labeling almost anything as big data. To articulate the gist of the term, more work is needed on the relations of the parameters, some might be merged (resolution is a consequence of exhaustivity, indexicality enables relationality) or discarded (extensionality and scalability seem to describe the infrastructure rather than data).

Aware of these problems, @kitchin2016makes argues that *velocity* and *exhaustivity* are qualities that set big data apart and distinguish them from "small" data. We can add that these two characteristics also present the most interesting challenges to cartographic presentation of such data. So even though we will continue to use the established term in the following chapters, the little too simplistic adjective "big" will be meant as a proxy for **generated continuously in real time and containing an unreduced set of elements**.


## 1.2 Other ways of understanding big data

In this section we briefly review the writing of authors seeking to define big data. The term itself was fist used in context of dealing with massive datasets in mid-1990s by John Mashey [@diebold2012personal], but the heaviest circulation of the term in scientific and popular media takes place only in recent years. From the breadth of works, several tendencies can be identified, providing more or less illuminating interpretations of the subject.^[for an alternative summary of definitions see @gandomi2015beyond, for bibliometric analysis of related scientific literature see @nobre2017scientific.]

### 1.2.1 Vs and keywords

Kitchin's taxonomy mentioned in the previous section is based on a review of older definitions, starting with the often-cited three Vs (standing for *volume*, *velocity*, and *variety*) by @laney20013d. The notion of *exhaustivity* was added by @mayer2013big, concepts of *resolution* and *indexicality* came from @dodge2005codes, @boyd2012critical adds *relationality*, and the qualities of *extensionality* and *scalability* were taken from @marz2012big.

Other properties attributed to big data include *veracity* (data can be messy, noisy and contain uncertainty and error) and *value* (many insights can be extracted, data can be repurposed), both brought forward by @marr2014big referring to the messiness and trustworthiness that is usually less controllable in case of big data. One could argue that these properties are just an another aspect of variety, as data vary not only in type and structure, but also in quality. This is can be the case for small data as well, however as @marr2014big hopes, "the volumes often make up for the lack of quality or accuracy", which is sure debatable.

Moreover, *variability* (the meaning obtainable from data is shifting in relation to the context in which they are generated) was identified by David Hopkins in relation to text analysis [@brunnelli2011will]. @li2016geospatial name also *visibility* (efficient access to data via cloud storage and computing) and more curiously *visualistation* as big data properties.

@suthaharan2014big, dealing with a task of early recognition of big data characteristics in computer network traffic, argues that three Vs do not support such early detection in continuous data streams. Instead he proposes three Cs: *cardinality* (number of records), *continuity* (meaning both representation of data by continuous functions, and continuous growth of size with time), and *complexity* (which is again a combination of three parameters: *large varieties of data types*, *high dimensionality*, and *high speed of processing*). One might ask why authors seek to propose parameters in triples, even at the cost of occluding additional properties as sub-parameters. Possible answer might be that such triples allow to create three-dimensional parameter spaces or "cubes" where we can place datasets to create neat visualisations. Humor aside, Suthaharan's approach is interesting in observing the rate of change in parameters in real time.

Laney's 3 Vs were brought into commercial management-speak and became a slogan further powering the hype of big data. Nevertheless, it inspired a number of other authors to extend it quite creatively. For example @uprichard2013focus lists other v-words to be considered, both in positive (*versatility*, *virtuosity*, *vibrancy*...) and negative (*valueless*, *vampire-like*, *violating*...) light. @marr2014big describes five Vs of big data, @van20133v sees seven Vs, @boellstorff2015introduction propose three Rs and @lupton2015thirteen even uses thirteen p-words to describe the subject. But as @kitchin2016makes notes, "these additional v-words and new p-words are often descriptive of a broad set of issues associated with big data, rather than characterising the ontological traits of data themselves".

### 1.2.2 A challenge for technical infrastructure

Several authors understand big data mainly as a management issue, which is probably due to the fact that handling large datasets is challenging. Hence, the computational difficulties of storing and processing a dataset on a single machine often act as a defining measure. Consider for instance @storm2012big quoting Hillary Mason: “Big Data usually refers to a dataset that is too big to fit into your available memory, or too big to store on your own hard drive, or too big to fit into an Excel spreadsheet.” Or similarly @shekhar2012spatial state that “the size, variety and update rate of datasets exceed the capacity of commonly used spatial computing and spatial database technologies to learn, manage, and process the data with reasonable effort”. 

The problem with such definitions is determining exactly what size is "too big to fit" and what is the "reasonable effort". The computational power of hardware accessible for personal use is constantly increasing ^[Gordon Moore's 1965 paper [reprint @moore2006cramming] stated that the number of transistors on integrated circuits will double every two years. The prediction has proven accurate for several decades and became known as *Moore's law*. The pace has slowed down with smaller transistors suggesting that the prediction is reaching its technological limit, though the opinions here vary. The overuse of the idea as a synonym of progress has been criticized as too simplistic for example by @kreye2015moores], not to mention the technical infrastructure accessible to large enterprises and governmental organizations — datacenter construction is steadily growing and is expected to almost double the current capacity in 2021 [@statista2018data; @networking2018cisco].

At the same time, new technologies emerge to address the issue — virtualization of storage, networking, and memory make it possible to rent computational infrastructure from "cloud" providers, or to delegate workloads previously carried out by the operating system to remote platforms ^[*Cloud computing* enables companies to consume a compute resource, such as a virtual machine, storage or an application, as a utility rather than having to build and maintain computing infrastructures in house [@rouse2018cloud]. The cloud models include providing infrastructure, platform or application as a service; main vendors of public cloud solutions are Amazon Web Services, Google Cloud Platform or Microsoft Azure.]. Other innovations take place in data processing algorithms, analytic engines, and in database design (a whole range of No-SQL databases as well as enablement of distributed processing in traditional databases) ^[Processing and analytical frameworks designed for big data include Apache Hadoop, Apache Spark, or Apache Flink. No-SQL databases use a column, graph, document, key-value, or multi-model solution as an alternative to traditional relational database design.]. Some attempts to summarize technical solutions for big data can be found in @paakkonen2015reference, or @jin2015significance.

As we can see, the "too big to fit" definitions are highly dependent on the resources currently available, plus we need to take into account future improvements that are hard to predict. That being said, understanding the subject as *data that prevent local offline processing on common desktop in reasonable time* is a useful shorthand for judging big from "small" data. The border between local (offline) and remote (cloud-dependent) processing exists even though it is a blurry and a dynamic one. As the remote processing may be more widely accessible in the future, it can be best advised to consider the scalability of any data-processing workflows early on. In other words, any workflow designed as a potential big data process will likely have an advantage, as design limitations may prove to be overcome harder than the technical ones. 

One point of confusion for readers of big data related literature that often reoccurs is mixing the characteristics of the subject (stored information) with properties of technologies used to process it (storage, analytics, visualisation, etc.). It is debatable if this is a fallacy, depending on to what degree we consider digital data independent from the technical infrastructure around it^[Real world analogies may not be helpful here: for example the properties of gold are independent of the tools used to mine it. On the other hand, many forms of interaction with digital data are inseparable from the technical infrastructure.]. To illustrate the difference, compare the following two definitions. Fist by @gartner2018what:

*Big data is high-volume, high-velocity and/or high-variety information assets that demand cost-effective, innovative forms of information processing that enable enhanced insight, decision making, and process automation.*

The second by @gantz2011extracting defines big data as:

*A new generation of technologies and architectures designed to economically extract value from very large volumes of a wide variety of data by enabling high-velocity capture, discovery, and/or analysis.*

The understanding of big data as an asset prevails, though the second type portraying big data as an ecosystem is not uncommon (e.g. @demchenko2014defining or @olshannikova2015visualizing). Eventually, this division may lead to dual understanding of big data in narrow sense as a fuel or raw material and in broad sense as an ecosystem, architecture, or  framework. A good example of broader thinking is @demchenko2014defining that proposes a "Big Data Architecture Framework" comprised of big data infrastructure, big data analytics, data structures and models, big data life cycle management, and big data security.^[This is close to holistic definitions discussed later in this chapter, though these tend to be less confined in technology realm and mixing in procedural aspects and wider societal implications.] 


### 1.2.3 Showing example sources and quantities

A very common description of big data goes along the lines of "I will give you some numbers and you will get what I mean". Such writing may not provide an exact understanding of the concept, but can put us into context about the scales we are moving at. Doubtlessly the mass of retained data is growing, as @mcnulty2014understanding put it, "90% of all data ever created was generated in the past 2 years" (that was in 2014). In a notable attempt to estimate the World's overall data generation between 1986 and 2007, @hilbert2011world claim that more then 300 exabytes ^[1 exabyte = 1 000 000 000 gigabytes] of stored data existed in 2007 (for the methodology of reckoning see @hilbert2012measure). The key insight is the growing domination of digital technologies accounting for the majority of the annual growth after year 2000. More recent accounts report on machines potentially capable of processing brontobytes ^[1 brontobyte = 1 000 000 000 exabytes] of data [@bort2014there].

Increasing the storage capacity itself does not speak of any qualitative change in what is stored, therefore some archives could indeed be described as big piles of small data. Under certain circumstances, new quality can arise from increased quantity, for example as @norvig2011unreasonable points out, an array of static images projected at a sufficient frame rate creates an illusion of movement, and hence the new medium also known as film. Multiplication of an old medium creates a new one. The remaining question is under what conditions this change of essence arises, and if such thing occurs or will occur in case of big data. To fast forward a bit, the cartographic version of this question would be: *will a digtal map based on big data (fast and n=all) be essentially different from web maps based on static and sampled data sources?*.

![**Fig.1** Comparison of the World's estimated data storage capacity between years 1968 and 2007 (modified after @hilbert2011world) and the expected storage capacity of large scale data centers in the period from 2016 to 2021 (modified after @networking2018cisco)](imgs/img-storage-capacity.png)

Rather than putting up to a gargantuan task of counting the mass of all existing data items, authors use the available statistics related to operations of large companies (@kambatla2014trends, @mcnulty2014understanding, @marr2014big and others). For example, Facebook was said to process 10 billion messages, 4.5 billion button clicks and 350 million picture uploads each day [@marr2014big]. It goes without saying these numbers are outdated and certainly outgrown today. Other companies prominently mentioned in context of big data are Google, Wallmart, or Amazon. This connection is justified, as these companies have put user (or customer) data analytics to the core of their businesses, thus supporting the progress in the field. Social media, web search and browsing data, online or offline shopping patterns, but also mobile devices, sensors and large scientific projects are mostly named as generators of big data.

Another quantity tying to big data that is surely of interest is, according to estimates potentially huge, market value. For example @kayyali2013big reports on promise in reduced health care costs of 12 to 17 percent thanks to emerging big data related initiatives in USA health care. On the other hand, the use of poor data is also estimated to have vast impacts on businesses, mainly in form of unrealized opportunities (@mcnulty2014understanding). Another financial aspect is the costs incured by creating and maintaining big data itself, it is sound to remind that apart from all the promise, big data also has the potential to cost unlimited amounts of money @fischer2015why.

The type of data source is another classification property. Authors distinct "traditional" ways of collecting data from the new, technology-powered sources. The definition of big data then comes as simple as data coming from these new sources. The United Nations Economic Commission for Europe proposed a taxonomy that recognizes three main sources of big data (@unce2013):

- *Social Networks (human-sourced information)* — this information is the record of human experiences
- *Traditional Business systems (process-mediated data)* — these processes record and monitor business events of interest
- *IoT (machine-generated data)*^[Internet of Things (IoT) can be described as a vision of a network of devices, vehicles and home appliances that can connect, interact and exchange data. Similarly to big data, there are manifold definitions of the concept, for overview see @atzori2010internet] — information is derived from sensors and machines used to measure and record the events and situations in the physical world

Data sources labeled as big differ from traditional sources such as surveys and official administrative statistics — @florescu2014will and @kitchin2015opportunities closely examine those differences as well as the potential for big data to extend the official statistics. Interesting point is that volume is not actually distinctive as governmental offices tend to store large amounts as well. What makes the difference is that classical data sources have statistical products and by-products specified beforehand, big data tend to be reused beyond the original intent. On the other hand, big data sources tend to be volatile and unstructured, therefore their representativeness is harder (if possible) to assess.

The estimation in the fig1 couldn't have predicted the spread of COVID-19 pandemic. According to International Data Corporation (IDC), more than 59 zettabytes (ZB) were to be created, captured, copied, and consumed around the world in 2020. The COVID-19 pandemic contributed to this figure by causing an abrupt increase in the number of work from home employees and changing the mix of data being created to a richer set of data that includes video communication and a tangible increase in the consumption of downloaded and streamed video. IDC also measures the amount of data created and consumed in the world each year. The ratio of unique data (created and captured) to replicated data (copied and consumed) is roughly 1:9, and it is expected to move to 1:10 by 2024. This trend is also fuelled by increased consumption of replicated data due to COVID-19 pandemic. [@idc2020global]


### 1.2.4 Metaphors

Metaphors rely on a notion of analogy between two dissimilar things, but can also become independent verbal objects, aesthetically appealing but not overly revealing. Despite that, we should not ignore metaphoric accounts as they contribute to the mythology surrounding big data that reflects what many people expect. 

@puschmann2014big identified two prevailing ways of imagining the subject: big data seen as a *natural force* to be controlled and as a *resource* to be consumed. 

The utilitarian mindset comparing digital world to excavation of valuable minerals in far from new (think of "data mining" or more recently "cryptocurrency mining") but it is tempting pursue to this analogy further. For example, how to estimate the ratio of valuable information to "debris", and shouldn't such estimation be done before any data "mining" endeavour? The value of real-world analogies may be in provoking some common-sense reasoning often missing in wannabe-visionary proclamations. 

For example mayer2013big: "Data was no longer regarded as static or stale, whose usefulness was finished once he purpose for which it was collected was achieved [...]. Rather, data became a raw material of business, a vital economic input, used to create a new form of economic value. Every single dataset is likely to have some intristic, hidden, not yet unearthed value...". So what is yet to be unearthed is not the data itself but new way of using it.

As @lupton2013swimming notes, by far the most commonly employed rhetorical descriptions of big data are those related to water or liquidity, suggesting both positive and negative connotations. For example @manyika2013open argues for unlocking data sources to become "liquid" in a sense of open and free-flowing, at the same time keeping privacy concerns in mind — what is liquid is also susceptible to unwanted leaks.

Big data has also been described as a *meme* (a unit of cultural transmission) and as a *paradigm* (a set of thought patterns), in both cases not without certain concerns. @gorman2013danger explores big data as a technologic meme: "[t]he reductionist methods of understanding reality in big data produce new knowledge and methods for the control of reality. Yet it is not a reality that reflects the larger society but instead the small minority contributing content." To @graham2013geography "big data could be defined as representing a broader computational paradigm in research and practice, in which automated algorithmic analysis supplants domain expertise".

Of course, big data descriptions are not limited to verbal form, visual means can be much more expressive and informative — not a surprising claim to be found in a thesis on visual analytics. We will discuss cartographic tools later, here we can mention artistic renderings that employ more free-form visual analogies. We should distinguish pursuits like *information visualisation* that are close to graphic design (for good overview see @klanten2010data or @lima2011visual) from artistic projects that use data as a raw material and don't aim to convey information or comfort to general user's cognitive expectations (like some projects at @creative2018). From the cartographer's standpoint, aspects of visual art can be inspiring (graphic quality, employment of computation and rendering software, creative uses of interaction and animation), though artistic means are often too different to be transposed. Without referring back to the source phenomenon, data-driven art becomes unrecognizable from the generative art that uses artificially generated data rather than any existing information.


### 1.2.5 Holistic accounts

Multifaceted phenomena tend to provoke descriptions that narrowly focus on specific components, ignoring other parts as well as relationships between them. Experts of different specializations notice aspects of phenomena that are close to their research interests and priorities, cross-disciplinary definitions then try to combine these views to paint the full picture. 
Naturally, listing holistic accounts will include topics already mentioned, therefore pardon some repetition in this section.

For instance @murthy2014big prepared a taxonomy of big data comprised of:

- *data* — with various levels of temporal latency and structure 
- *compute infrastructure* — batch or stream processing
- *storage infrastructure* — distributed, sql or nosql databases 
- *analysis* — supervised, semisupervised, unsupervised or reenforcement machine learning
- *visualisation* — maps, abstract, interactive, real-time 
- *privacy and security* — data privacy, management, security

As another example, @boyd2012critical define big data as a "cultural, technological, and scholarly phenomenon that rests on the interplay of":

- *technology* — maximizing computation power and algorithmic accuracy to gather, analyze, link, and compare large data sets
- *analysis* — drawing on large data sets to identify patterns in order to make economic, social, technical, and legal claims
- *mythology* — the widespread belief that large data sets offer a higher form of intelligence and knowledge that can generate insights that were previously impossible, with the aura of truth, objectivity, and accuracy
 
As the two taxonomies above illustrate, there are many ways to slice a cake. The fate of overreaching definitions is that they are often too intricate to explain the phenomena crisply, yet they are never complete as there is always a point of view that hasn't been included yet. So here we arrive at a trade-off between preciseness of a definition and its practicality. One way out of this is simply rejecting the view of big data as a singular phenomenon. Big data is then a non-specific covering term that could mean different things to different people. As @helles2013making observes, "[d]ata are made in a process involving multiple social agents — communicators, service providers, communication researchers, commercial stakeholders, government authorities, international regulators, and more. Data are made for a variety of scholarly and applied purposes [...]. And data are processed and employed in a whole range of everyday and institutional contexts." The process, the actor, the purpose and the context then determine what big data "is" in that given constellation. 

We can conclude the section on holistic approaches with a historical view that is rarely taken in commentaries on the nature of big data, probably because the perceived novelty of the concept. For @barnes2013big "[b]ig data has been made possible because of the particular conjuncture of different elements, each with their own history, coming together at this our present moment. But precisely because these different elements have a history, the issues, problems and questions that were there in their earlier incarnation can remain even in the new form". We can add that some issues can get worse in the new incarnation and totally new set of problems can arise. For example, as @mayer2013big note, current anonymization techniques can be rendered ineffective as combining several "data traces" of online activity can still identify the person. Or, as @taleb2012antifragile realizes, if big data come with too many variables but with too little data per variable, it becomes nearly impossible not to find high but spurious correlations, which can tempt researchers to cherry-pick the results that "support" their hypothesis. Considering wider implications of technology can potentially make such unintended effects less surprising, which is certainly a virtue of holistic thinking.


## 1.3 Spatial big data

Apart from the general definitions mentioned above, there have also been field-specific efforts to contextualize big data. The fields include governance [@crampton2015collect], journalism [@lewis2015big], ecology [@shin2015ecological], social sciences [@ovadia2013role], business administration [@wamba2015big], urban studies [@thakuriah2017big], learning analytics [@wilson2017big], education [@kabakchieva2015big], health informatics [@herland2014review] and doubtlessly many others. Authors here consider existing data processing and analytical practices in their respective disciplines in light of possibilities created by big data. Some expect forthcoming changes such as enrichment in available methods (e.g. analysing social networks in epidemiology), others analyze the adaptability of currently used processes to conditions of higher data load. With some generalization, the overall mood of these works seems to be welcoming towards big data as a possible toolbox extension, though doubting that the core scientific methods could be deeply altered by it. When it comes to defining big data, field-specific accounts use one or more of the aforementioned definitions by *keywords*, *constraints*, *examples*, *metaphors* or combination of all in a*holistic* description. 

Within geography, @kitchin2013big highlights possible opportunities, challenges and risks posed by big data, encouraging geographers to engage in big data related case studies. He also lays some groundwork for definitions, he later developed into ontological characteristics cited at the beginning of this chapter. @gonzalez2013big understands big data predominantly as a rich set of observations of intricate and nested social life that can improve theories of human geography, for example by exposing diversity that would otherwise go unnoticed in scientific models. @barnes2013big reminds us of the so called *quantitative revolution* in geography (starting from 1950's) that besides bringing many good to the discipline has also been criticized on various levels. Some of this critique, Barnes argues, "continue[s] to apply to the *über* version of the quantitative revolution that is big data". For @goodchild2013quality geography provides a distinct context for discussion about what kinds of science might be supported by big data. He is also concerned with the potential for building rigorous quality control and generalizability into big data operations, because so far "instead of relying on the data producer to clean and synthesize, in the world of big data these functions are largely passed to the user". We could go on much further with how geographic thought internalizes big data, those interested in the topic may refer to @thatcher2018thinking.

Cartographers and GIS practitioners like to say that 80% of all data is geographic, and even though such claim is hard to prove^[see @morais2012phrase for discussion and @hahmann201180 for a validation attempt], few would doubt that spatial reference can unlock additional value, if only as a platform for joining otherwise un-joinable datasets. Much of data in the world is or can be georeferenced, which underlines the importance of geospatial big data handling.

Cartography and geographic information science have both developed distinct and elaborate notions of data in general. Scientists and practitioners from these fields are in good position to contribute to the way big data is understood and utilized, given their focus on the space as a unifying factor and with visual analysis being at the core of their practice. For these reasons, we will first take an aside to briefly outline how cartography and geoinformatics conceptualize spatial data, before moving on to how the disciplines contended with the adjective big. We consider the following points important:

* Data describing spatial phenomena used in GIS are traditionally divided into *spatial* and *non-spatial* (thematic, attribute) components. Spatial component holds information on location and geographic extent of an entity and can be thought of as a geometry that is visualized on a map or used for spatial analysis (spatial querying, overlay algebra, network analysis, etc.). Attribute information can be used to set visual parameters of geometries on a map as well as in spatial analysis. Visualising attributes lets us observe the variability of a phenomenon across the area of interest. @andrienko2006exploratory offer more general view of data as a correspondence between referential and characteristic components. Referential components (or referrers) are described as independent variables — mostly employed referrers are *location*, *time* and *population*. Referrer or a combination of referrers provides context and unique identification for dependent variables — attributes.

* Literature distinguishes two approaches to representing the spatial component of data in GIS: *object-based* and *location-based* [@peuquet1994s]. The object-based approach arranges spatial and non-spatial information into discrete geographic objects (features). In the location-based approach, attribute information is stored relative to specific locations. With this approach, a territory is divided into same-size elements that represent locations to assign attributes to. Object-based approach is manifested in *vector data model*, location-based approach corresponds to *raster data model*. In vector data model objects have either point, line or polygon representation. Objects are usually grouped into layers of same theme and geometry type. In raster data model, representation is defined by the size of the element (almost always being a rectangular pixel). Raster model suits better for displaying spatially continuous phenomena, whereas vector model tends to be more appropriate for discrete objects, though reverse situation is not uncommon and transformation between models is a frequent practice.  

* Attributes are typically distinguished according to the levels of measurement introduced by @stevens1946theory: *nominal* (named variables), *ordinal* (allow ordering), *interval* (allow measuring difference), and *ratio* (having natural zero). @jung1995knowledge proposed an alternative classification more tailored to spatial data handling: *amounts* (absolute quantities), *measurements* (quantities requiring units of measurement), *aggregated values* (amounts or measurements summarized by area), *proportional values* (normalised by a fixed value), *densities* (divided by corresponding area), *coordinates* (position in some coordinate system). 

* The temporal aspect of a phenomenon includes the existence of various objects at different moments, and changes in their properties (spatial and thematic) and relationships over time [@andrienko2006exploratory]. Including the temporal aspect into the data model is problematic as it is treated separately from spatial and attribute components despite having influence on both. For the attribute part, the time changes can be stored by adding table columns with new values. However, changes in the spatial component are not easily stored, which complicates linking the past forms of geometries with corresponding past values of attributes^[This is most pressing when handling spatial data in discrete files (e.g. in Shapefile or GeoJSON formats). Using versioning systems like Git, which has become incredibly popular for handling software source code and text files, is not suitable for spatial data files as these often exceed repository size limits (though there is a project attempting to solve this called *geogig* <http://geogig.org/>). Handling spatial data within relational database provides more options for spatial data versioning, also there is a range of database project specialized on storing time series like InfluxDB or TimescaleDB.]. Incorporating flexible time changes into GIS data model remains a challenge for spatialization of big data.

* Spatial component of data may be displayed at various scales. The scale along with the purpose of the map influences the level of comprehensible detail in displayed geometry. Cartographic generalisation is the process of adjusting the map geometry to the spatial scale in which the area is displayed. This goes beyond mere simplification, as factors as *highlighting the important*, *maintaining the object relationships* and *preserving the aesthetic quality* come to play. The dynamic change of scale comes naturally to users of digital interfaces, the generalization is however hard to automate as it involves complex reasoning and considerations of object relationships that span through the strict topic-based separation of layers common in spatial datasets^[for more on efforts in automated generalisation see for example @burghardt2016abstracting]. The same phenomenon can be studied at various levels of detail even without changing the scale of the map. Some spatial datasets, such as administrative units, exhibit the nesting property that allows to vary the granularity of the displayed spatial pattern.

The above summary is inevitably simplistic as there are many other research areas in cartography and GIS that are relevant to big data efforts. Some will be touched on later in the thesis, others are unfortunately out of its scope. One such case for all is spatial imagery that is an example of truly big data source that is inherently spatial. "Big" in this case means unprecedented spatial, temporal and spectral resolutions brought about by improvements in global monitoring systems.

In light of big data advent, authors form spatial fields consider what difference does it make to conceptualize a specifically *spatial* big data as opposed to big data per se. Is spatial big data a subset or an extension of big data? From the GIS point of view there are two ways of understanding spatial big data: either as *adding a spatial reference to big data* or as *adjusting the current spatial data models and processes to higher data load*. We can say that these two approaches arrive at the concept of spatial big data form the opposite sides, in the first case the path is *from big data to spatial big data*, whereas in the second case it is *from spatial data to spatial big data*.

Authors from the first group use some of the previously mentioned definition styles. For example to @jiang2017spatial, spatial big data refer to "georeferenced data whose volume, velocity, and variety exceed the capacity of current spatial computing platforms". This combines definitions by V-words and computational difficulties. @lee2015geospatial, on the other hand, combines definition by constraints and by example. In this context we can mention some early critique that condemned narrow understanding of big data, aiming mainly at analyzing geotagged social media content (labeled as "burger cartographies" by @crampton2013beyond and @shelton2017spatialities). As @leszczynski2016introduction note, social media content covers just a limited facet of the data productions, presences, and practices that fall under spatial big data.

Representing the second group, @yao2018big recognizes five categories of spatial big data (while admitting some intersections): *remote sensing data*, *large data from surveying*, *location-based data from mobile devices*, *social network data*, and *Internet of Things (IoT) data*. Yao and Li then focus on a subgroup they name *big spatial vector data* (BSVD), and provide a comprehensive survey of techniques applicable for managing such data. In short, adjusting the vector spatial data model for distributed storage impacts how the data is indexed^[Spatial indices are used to optimize retrieval of spatial data from database. They decrease the time it takes to locate features that match a spatial query.] and queried for processing and application. @yao2018big also provide an overview of other authors' approaches to thinking about GIS in the era of big data. 

In context of transportation, @shekhar2012spatial distinguish between *traditional* and *emerging* spatial big data. Traditional stands for topological vector data representing transportation infrastructure, emerging represents sensor and positional data from large number of vehicles — termed as *spatio-temporal engine measurement data*. @shekhar2014benchmarking call for performance testing of existing and new algorithms to assess proper comparison between spatial big data processing techniques.

To @li2016geospatial, main sources of spatial big data are in *volunteered geographic information (VGI)*^[VGI is defined as "the harnessing of tools to create, assemble, and disseminate geographic data provided voluntarily by individuals" [@goodchild2007citizens]. This description fits for example the contributions to the Open Street Map project very well, but is less applicable to social media, where users are more likely indifferent to their data being collected, rather than contributing data as a primary goal.] and in *geo-sensor networks* (with extended understanding of sensor including CCTV and mobile devices). @li2016geospatial also touches on a wide range of topics, ranging from quality assessment (big data properties challenge the current error propagation methods) to the importance of parallel processing of data streams (where the advantages of functional programming languages are recognized). @van2014spatial mentions the *Internet of Things* concept as a main future source of big data — here understood as a sum of sources from "smart" devices. Geospatial technologies are considered a binding principle that would eventually help to meaningfully combine data from devices to facilitate the rise of smart city^[Smart city is a concept of urban area that uses digital information to make more efficient use of physical infrastructure, engage effectively with people in local governance, and respond promptly to changing circumstances. For more information see @mclaren2015sharing]. 

In relation to big spatial data processing, we should mention the work of Bin Jiang that is somewhat isolated from the categories mentioned above, but provides interesting thought on how the current GIS processes could be altered. @jiang2018spatial recognizes the following dichotomies and potential paradigm shifts: 

- *Gaussian* vs *Paretian statistics*^[Named after Vilfredo Pareto who more than century ago noticed that in 20% of people in Italy owned 80% of land. The ratio of 20% of causes leading to 80% of consequences has been observed in many systems, though the distributions can be far more uneven, like that 99% of Internet traffic is attributable to 1% of sites [@taleb2012antifragile].] — the first suits better for sets with elements of more or less similar size and expects normal distribution, the latter is based on the notion of far more "smalls" than "larges" and expects Poisson or other fat-tailed distribution. 
- *Tobler law* vs *scaling law* — complementary concepts, where the first expects inverted proportionality between the distance and similarity of objects, which is often justified locally but does not attribute to abrupt spatial heterogeneity brought about by fat-tailed distributions. Scaling law, as Jiang formulates it, accounts for uneven distributions across scales. 
- *Euclidean* vs *fractal (natural) geometry* — the first is needed "to measure things", the second can help us to "develop new insights into structure and dynamics of geographic features". (@jiang2016fractal)
- *data quality* vs *data character* — Jiang defines data character mainly as topological relationships between meaningful geographic objects (e.g. connectivity of street network), which for many purposes can be more important than the precision of geometric primitives.
- *mechanistic thinking* vs *organic thinking* — the latter promotes the understanding of geographic space as a living structure shaped by the interaction of elements at various scales.

Though some of Jiang's distinctions may seem unclear and he is silent about how to incorporate organic approaches to GIS data models, he recognises that big data would be vital in changed GIS practices. For example in his notion of natural cities, social media data are used to define the "natural" extent of the city, so a city is understood more as a bottom-up emergence rather than a top-down administrative demarcation.

As we have seen in this section, geospatial authors rarely diverge from general definitions of big data, but when it comes to spatial big data, they consider the topic from the standpoint of pre-existing theory generated in the field. This conscious assessing of current data models and processes and possible creation of new ones can bring interesting developments in the future. 

The potential role of cartography will be examined in more detail later in the thesis, here let us briefly go over the big data properties listed at the beginning of the chapter to see the most obvious cartographic concepts and challenges that could possibly tie to them:

- *Extensionality & Indexicality* — spatial reference in itself is a unifying platform to combine data from various sources and  map is a proven tool to explore spatial interrelations. From the perspective of data processing workflows spatial extensionality poses a challenge for geocoding services to spatialize previously unchartable data. From the map design perspective the task is to support recognition of spatial co-ocurrence in dense displays. Indexicality is a natural prerequisite for thematic mapping.
- *Volume* — from the cartographic standpoint, the number of records is the most interesting measure of volume (compared to storage size or attribute length). Extensive volume does not necessarily present a problem for effective visualisation, especially if it plays out in the attribute space and the spatial reference is static. Maps that use the right visualisation methods naturally support information compression and clarification.
- *Scalability & Resolution* — adjusting visualisation to different scales both in terms of spatial extent and in terms of data load is a domain of cartographic generalization. Effects of varying time, space, and attribute resolution on displayed information has long been studied within cartography.
- *Variety* — digital mapping requires some structure in data, though it is not a requirement for attributes as long as the spatial reference is valid. There is though a gap in incorporating unstructured data to digital mapping, for example in adjusting metadata profiles (e.g. move from hierarchical classification to messier but more flexible methods like tagging), or in determining data quality from spatial context. Cartography is in a good position to search for ways to combine structured and unstructured data in meaningful way. 
- *Velocity & Exhaustivity* — these parameters will be dealt with in chapters 4 and 5, they relate to a large set of topics internal to cartography. Velocity is mainly concerned with rate of visualization update and time span of the depicted theme. Cartography is ideal for depicting time-space regularities and relationships within and between datasets. Exhaustivity then projects into the longtime problem of graphic fill and tailoring cartographic visualisation to human cognitive capabilities.

It is not within the scope of this thesis (and within the author's powers) to consider all directions and areas where cartography and geographic information science may be impacted by big data. The whole project of GIS might need to to be rethinked again, but this is not unprecedented. From the desktop GIS (1960s) to the web GIS (1980s), and the distributed GIS (1990s), to the cloud GIS (2010s), it is well known that the development of GIS is greatly influenced by computer science technology (@yang2010geospatial). Another turn in might come as a response to big data.


## 1.4 Assessing impacts, threats and opportunities

Often times big data are described indirectly by the impacts (real or imagined) they have on the society. For some authors, the debate on the definition of big data may be dismissed as unproductive. The popularity of the term itself may diminish like many other buzzwords that went through the technology hype cycle ^[Hype cycles describe how expectations from emerging technologies evolve with time. Stages in the cycle are:  *innovation trigger*, *peak of inflated expectations*, *trough of disillusionment*, *slope of enlightenment*, and *plateau of productivity*. The expected duration of the cycle differs per technology, and some technologies may not reach productivity in the foreseeable future. Hype cycles are a construction of the Gartner consultancy that issues regular reports, see for example @gartner2018]. Many ideas in the IT industry exist under changing or concurrent names, and big data have indeed a lot in common with concepts such as *data mining*, *business intelligence* or *visual analytics* to name just a few. For many the term is just too underdefined and overused. But we should not forget that even though the technological industry is largely fashion-driven, its societal impacts are real, event though at times unevenly distributed. 

It is beyond the scope of this thesis to consult all of these impacts in detail (for such discussions see @bollier2010promise, @swan2015philosophy, or @mayer2013big), though the puzzle of big data definitions would miss an important piece without touching on some of the consequences in *scientific inference* and *knowledge-based decision making* — the areas cartography aims to support. Closely related are the issues of *surveillance* trough big data and the *emerging digital divides*.

The scientific reflection on big data revolves mainly around the question if the advances in data acquisition change the definition of knowledge. The anticipated mindset changes voiced in mayer2013big can be summarized into the following points:

- Reduced need for sampling with accessibility of n=all datasets
- Loosened requirements for exactitude as minimizing sampling errors would leave room for more relaxed standard for measurement error (will to sacrifice a bit of accuracy in return for knowing the general trend faster)
- Departure from the search for causality: "big data is about *what* not *why*." Multi factor correlation with large data enables decision making even without understanding the mechanisms behind the relationship. In words of @anderson2008end: "Who knows why people do what they do? The point is they do, and we can track it and measure it with unprecedented fidelity. With enough data, the numbers speak for themselves."

Correlation does not necessarily imply causation, though if we do not aim for understanding the phenomenon and just want to obtain some instruction for action, correlation might be enough to provide some backing. For the optimistic commentators, this abandoning of theory can open door to iterative experimentation and building of useful heuristics that are independent of preconceptions and biases of our thought processes. To others, this sounds scary at best, as such naive data appreciation can dangerously rationalize incompetent guesswork. As @silver2012signal puts it, most of the data is just noise, as most of the universe is filled with empty space.

Claims to objectivity and accuracy of big data are often criticized as misleading, numbers obviously never do the speaking, as there is always a need for human interpretation. For such interpretation  bigger data are not always better. For example, multidimensionality of datasets can increase probability of spurious correlations. Data-driven rhetoric can be suspicious as it allows decision makers to evade responsibility or to ignore alternative decisions. Furthermore, in decision making under opacity, over-reliance to historical records can catch us ill-prepared for unprecedented large scale events (so called black swans). Despite the air of progress and innovation @barnes2013big sees big data as an inherently conservative project: "By utilizing the numbers as they are given, big data is stuck with what is rather than what should be". In both innovation and risk management, *imagination* is the vital virtue, that  is something big data cannot supplant. 

The proposition of theory-free science using powerful exploratory potential of big data to opportunistically exploit new avenues as they appear sounds promising to many. Though there is no need to discard hypotheses as they are generated inevitably in some form and can be modified dynamically in the research process. In words of P. Gross: “In practice, the theory and the data reinforce each other. It’s not a question of data correlations versus theory. The use of data for correlations allows one to test theories and refine them.” (@bollier2010promise)
          
Apart from possible fallacies (like *more is better* or *big data = smart data*), there is a philosophical concern of *representational authenticity* (@swan2015philosophy) — the degree to which the representation (in this case big data) corresponds to the represented (onthology) as well as how to measure this correspondence (episthemology). Any mode of interacting with big data is representation and not necessarily reality, and the reality gap may be so big that data however big might not be relevant (@siegfried2013big). In words of uprichard2013focus: "If we are creating a mess by generating so many haystacks of big data that we are losing all the needles, then we need to figure out a different kind of way of doing things, as we cannot sew new cloth without any needles. Whatever else we make of the ‘big data’ hype, it cannot and must not be the path we take to answer all our big global problems. On the contrary, it is great for small questions, but may not so good for big social questions."

The critical accounts however do not negate big data as a tool, rather they dismiss the shallow reflection of its usage. As a good outcome, such discussions can strip bare our conceptual gaps and turn our attention the right direction. Big data can then be leveraged to support an optimistic goal, for to create *overreaching predictive mathematical frameworks for complex systems* (@west2013big). Big global issues in ecology, pandemics or financial markets exhibit traits of complex systems^[Complex system's collective characteristics cannot easily be predicted from underlying components: the whole is greater than, and often significantly different from, the sum of its parts. A city is much more than its buildings and people. Our bodies are more than the totality of our cells. This quality, is called *emergent behavior*. @west2013big]. "The trouble is, we don't have a unified, conceptual framework for addressing questions of complexity. We don't know what kind of data we need, nor how much, or what critical questions we should be asking. 'Big data' without a 'big theory' to go with it loses much of its potency and usefulness, potentially generating new unintended consequences" (@west2013big). All things considered, "[...] the arrival of Big Data should compel scientists to cope with the fact that nature itself is the ultimate Big Data database. Old style science coped with nature’s complexities by seeking the underlying simplicities in the sparse data acquired by experiments. But Big Data forces scientists to confront the entire repertoire of nature’s nuances and all their complexities" (@fan2014challenges).

The aforementioned discussions point to lock-step evolution of science and technology, and most importantly, to strong reflection and self-correcting mechanisms inherent to science that usually set in motion when innovation is accompanied with some troubling signals^[For other examples of such reflections see @lipton2018troubling, @norvig2012warning]. In broader society we also need such a reflection of new realities created by big data and the accompanying ethical issues.

One set of ethical issues revolves around data collection without giving people the choice to opt out, or without asking for explicit and informed consent. Even if consent is solicited, for users it is often impossible to audit the secondary uses that the collected data will cater to. It is hard to track what additional sources and analytical engines will be applied on collected user data and what third parties will get hold of it through reselling. At the time of writing, the legislation to address these issues is catching up^[Legislation varies around the world, for European Union, the General Data Protection Regulation (GDPR), which governs how personal data of individuals in the EU may be processed and transferred came into being in 2018. For overview of digital privacy rules see <https://europa.eu/youreurope/citizens/consumers/internet-telecoms/data-protection-online-privacy/index_en.htm>.], but it is unsurprising that it lags behind the new kinds of abuse stemming from the extending scope of personal information that can be collected. Even with legislation in place, enforceability is low and even learning about misuse is difficult without the rare help from whistleblowers.

Furthermore, the anonymization methods may no longer work as combining digital traces from several sources allows for re-identification of an individual. Another topic is the ability of user to access the collected data, either to use it for own self-analysis, or to issue its removal (tough how to verify is has actually happened?). In an alternative vision of big data economics, individuals may gain power to sell their data themselves of through intermediaries.

Penalties based on propensities — that is a short description of a concern that with increased surveillance and predictive analytics there will be a possibility to issue preventive penalties for offences that did not happen yet solely based on individual's observed tendencies (similarly to the movie Minority report) (@mayer2013big). It is a fact that the technical infrastructure for close personal scrutiny and behaviour enforcing has been already implemented at the scale of a warehouse (Amazon @head2014worse) as well as a country (most (in)famously in China), with little room for individuals to object. At the time of this writing, the global pandemics of COVID-19 created a justification for public scrutiny at unprecedented levels, on the other hand laid bare the inability of some state apparatuses to recast their data stacks into meaningful action.  

Social media has created a new platform that apart from all good created unexpected avenues for illicit actions, sometimes at a scale that can shake up a state. Fake news, troll farms, data breaches used to manipulated election results are all examples of the weaponization of the platform. Data literacy is then one of the prerequisites for defence against malicious effects on one side and to make the most of the data availability on the other. In words of @d2017creative: "[...] although there is an explosion of data, there is a significant lag in data literacy at the scale of communities and individuals. This creates a situation of data-haves and have-nots. But there are emerging technocultural practices that combine participation, creativity, and context to connect data to everyday life. These include citizen science, data journalism, novel public engagement in government processes, and participatory data art." 

The definition of big data is elusive perhaps also because the majority of involved actors, being positioned in the business world, is more focused on building productive big data ventures without much conceptual attention to the subject in itself. Then of course, the underlying technologies become a subject of marketing which often uses inflated overstatements based on expectations rather than reality. So far there is no settled consensus around big data definition in the academia either, but as @kitchin2016makes predict, the "genus" of big data will probably be further delineated and its various "species" identified. The question is if then such an umbrella term will be necessary. Anyways, the lack of common ground in understanding what big data is (illustrated by this chapter) may be a good predictor of the term's future relevance. Problems with definition is exactly what leads @davenport2014big to predict "a relatively short life span for this unfortunate term”. Indeed, looking at the peak of big data excitement in publications that took place around 2014 from the current perspective, the hype moved towards machine learning that gets inflated nowadays. On the other hand, the number of researchers and practitioners willing to invest their time in big data related endeavours is relatively high^[*Journal of Big Data*, *Big Data Research*, *International Journal of Data Science and Analytics*, *Big Data & Society*, *Big Data Analytics*, *Big Data* are examples of scientific journals tracking cross-disciplinary efforts in the field.], which sheds some positive light on the future vitality of the concept. 

To @mayer2013big big data stand for "the ability of society to harness information in novel ways to produce useful insights or goods and services of significant value". Here, more than an exact definition, the importance lies in the real-life impacts that are likely to stay even when the big data hype is over. Even if we dismiss the term as a buzzword, the fact that more digital information gets created and can be linked more easily has many implications on the way we live. Together with that, there are changing attitudes to putting data to work. In the next chapter, we will look at how we can derive insight from big data as well as on the possible role cartography can take in these endeavours.
# 2 Making sense of spatial big data 

> *Technology is the answer, but what was the question?* 

> Cedric Price

In this chapter we classify spatial big data and explore the methods of spatio-temporal knowledge discovery. Then we focus on the possible ways how cartography can support understanding the world trough the lens of big data.

## 2.1 Spatial big data classification: stations, events, and agents

To look closer at the properties of spatial big data, we can recall the two modes of spatial big data generation mentioned in the previous chapter — either as *big data with added spatial reference* or as *spatial data with boosted attribute volume*. The processing and visualisation challenges slightly differ between these modes.

In the first mode, the vast majority of what is understood as spatial big data has *point spatial reference*. This prevalence comes naturally if we realize that the "data point" location is described basically as a coordinate pair – two digits that can be easily stored in standard database systems without the need to observe topological rules and other constraints that GIS vector data model enforces on line and polygon geometries. Point data are spatial data that are easily created and handled by non-spatial (meaning not GIS-enabled) systems that account for majority of data production.

Point spatial data are not a homogeneous group. We can describe three kinds of objects differentiated by their behaviour in space and time. More precisely, the difference is in how dynamic the object's *existence*, *location* and *attributes* are over the course of observation. These properties are largely determined by the data source, so for convenience we can label the three object types as *stations*, *agents* and *events*:

- stationary objects (*stations*) have static position and existence, meaning that they don't move or disappear during observation. What is dynamic is the set of attributes attached to the object – in big data world these attributes can come as a continuously updated streams. Basic examples include weather stations, traffic cameras, or any kind of stationary sensors.
- moving objects (*agents*) move around, so their position changes during observation, also their existence can be dynamic, meaning they can enter or exit the area of interest. Various kinds of dynamic attributes can be attached. We can reconstruct the history of movement of these objects, which invites conversion to linear representation. Examples are vehicles or pedestrians carrying GPS and sensor equipped devices. 
- episodic objects (*events*) exist in a specific point of space and time. As they are short-lived, we can say that position and associated attributes are static. Prime example are data collected from social networks (tweets, posts, comments, etc.) 

The difference between stations and events is dependent on the frame of reference, as objects seen as stationary in shorter observation periods can become mere events if the observation time frame is significantly extended. For example, the existence of a building usually spans over decades, though if we stretch the perspective to a century or a millennium, most buildings will become glimpses existing a tiny fraction of time^[see <https://waitbutwhy.com/2013/08/putting-time-in-perspective.html> for a visualisation of perspectives changing with time frame]. Geographers would note that also the location of seemingly static environmental features doesn't hold over time (think of a meandering riverbed or a volcanic landscape). So again, longer time frame changes our assumptions of static location.

Furthermore, the spatial extent of the observed area and hence the scale of the map influences the distinction between moving and stationary objects – if the movement is too limited to be recognized at a given scale, we can model it as a stationary object. Also, some events can be reimagined as moving objects with discrete presence across observation time frame, for example if social media events dislocated in space and time are traced back to a single moving source device^[See examples of such practice at <https://www.nytimes.com/interactive/2019/12/19/opinion/location-tracking-cell-phone.html>]. 

These notes underline that the distinction to stations, agents and events is just a convenience model that works because most big data sources are temporally and spatially limited to near real time and urban environment)^[There are notable global-scale exceptions like <https://globalfishingwatch.org/map/?locale=en> or <https://www.shipmap.org/>]. Judging by the real data samples we can say that stations are usually physically present in the environment while events are mainly records of something that happened at the location, either physically expressed in the environment and observable by onlookers ("I was at a restaurant") or not ("I was shopping online while waiting at the bus stop"). 

![**Fig.** Three types of point spatial objects in a time-space cube. Stations, actors and events generate different attribute histories.](imgs/img-cube.png)

In the above image we assume that the attribute collection is happening continuously for stations and agents. This does not mean that the attributes have to be collected continuously at all times. Some sensors can record at a regular time interval or only in case of an event. The data output can then contain several "no data" records or even no records at all if the triggering event did not happen. It then depends on the goal of the analysis how such data are conceptualized. For example a traffic camera is a stationary object but some part of its data collection is episodic – a photo is taken just when a speeding vehicle drives by. The  above classification differentiates between the existence of an object and the act of recording data by the object. We assume that the sensor's presence without recording has also some analytical potential as it proves the absence of event, while with no sensor in place we cannot say if the event did take place or not. 

Compared to stations and agents, events with episodic presence seem to be the least data-rich, but their analytic potential stems from their large numbers. Clusters of georeferenced point event (a.k.a. point clouds) are at the core of spatial analysis based on mobile data.

This is not to say that the above is the full extent of spatial big data. Cycling back to the second mode of generation mentioned in the section introduction, the big data properties can be expressed in large attribute volume while the spatial aspect of data remains static. For example, the road network density is not changing very fast in terms of adding and removing new road segments, but our ability to record vehicle speed on these segments in the real time makes handling the attributes attached to these segments a big data problem. So apart from the point spatial reference, we can have line, polygon or complex multipart spatial objects with big data attributes, all open to GIS-powered spatial analysis. However, looking at the three aforementioned aspects (location stability, existence in time, and attribute collection) we can describe these data as stations with other than point spatial reference. Tab 1 than provides a more general view of spatial big data types and their attributes.

**Tab1** Types of objects in spatial big data. Existence is marked by records of spatial and temporal reference. Agent can have discrete existence if exiting and re-entering the area of interest. Objects with other than point spatial reference usually fall under stations, agent and events are usually recorded as points.

| type of object | existence               | attribute collection   | location | spatial reference |
|––––––––––––––––|–––––––––––––––––––––––––|––––––––––––––––––––––––|––––––––––|–––––––––––––––––––|
| station        | continuous              | continuous or discrete | static   | point, line, poly |
| agent          | continuous or discrete  | continuous or discrete | dynamic  | point             |
| event          | discrete                | discrete               | static   | point             |

From the point of cartographic visualisation there are two kinds of challenges tied with spatial big data: the graphic density generated by spatial data and the attribute density caused by frequent change recording. Both of these problems will be further observed in chapter 3.


## 2.2 Spatio-temporal knowledge discovery and visual analytics

The expectation that motivates people engaged in data-related practices is that their work can help to provide some insight into how the world works, that there is some knowledge that can be unlocked, mined, or distilled from otherwise inconceivable piles of data. Such insight seeking is the crux of *data mining*, *spatio-temporal knowledge discovery* and *visual analytics* that we will explore further.

*Data mining* is exploring databases using low-level algorithms to find patterns. *Knowledge discovery* is then a higher-level extension of data-mining techniques that requires human-level intelligence and domain knowledge to guide the process and interpret the results (@miller2015spatio). In the knowledge discovery process, computation is seen as an extension of human force rather than its replacement — the goal is to marry the best of the both worlds. This is in line with the (current) capabilities of information technologies: there are tasks that are very simple for computers and very hard for humans (e.g. calculate the square root of 567789898) and vice-versa (basically any task requiring imagination and improvisation).

If we imagine a continuum ranging from "work done purely in human brain" towards "work done by machines", knowledge discovery places itself somewhere in the middle. *Visual analytics*, the science of analytical reasoning supported by interactive visual interfaces (@thomas2005illuminating), then zooms in at the human-machine frontier in order to find the best tools for *visual* interaction. 


![**Fig.** Human-machine continuum, knowledge discovery as the best from the both worlds (the wording could be different, for example @keim2008visual lists on the "machine" side: statistical analysis, data management, data mining, compression and filtering; on the "human" side: cognition, perception, visual intelligence, decision making theory, information design; and in the "middle": human-centered computing, semantics-base approaches, graphics and rendering, and information visulaisation). With emphasis on cartography, we summarize the human cognitive tasks as "map reading".](imgs/img-man-machine-continuum.png)

We can very well imagine the human-machine continuum in the field of digital cartography. Here, the human cognitive abilities are applied to seek patterns, explore spatial context or to make decisions, while computational aspects include data management and processing. The computation heavy algorithms like optimal route calculation already step in to unburden people from some decision making so the distinction shouldn't be taken as something rigid. Cartography provides an interface at the human side. Some authors go on to define *visual analytics for spatio-temporal data* as interlinked techniques in interfaces with map as a central metaphor (@guo2006visualization). We can think of it as map reading with robot assistants.

### 2.2.1 Spatio-temporal relations

To develop further on the kinds of interaction with spatial data, we can explore the concept of *spatial* and *temporal* queries. On the general level we can search for spatial and temporal relations in all there types of point objects mentioned in the first section. In addition, moving agents can generate specific relations not innate to stations and events.

**Spatial relations** are at the very basis of map reading for orientation clues, but are also vital for interpreting thematic information. We perceive these relations between the dominant themes (e.g. in weather maps of precipitation and atmospheric pressure zones) or between the theme and the topographical base map. The major classes of spatial relations are: *set-oriented* (union, difference, intersection, complement, etc.), *topological* (connectivity, interior, exterior, boundary), *directional* (cardinal, object-centered, ego-centered directions) and *metric* (e.g. Euclidean or network-based distance) (@worboys2004gis). 

Point spatial data of large extent complicate observing such relations. We rarely ask about a single specific point from the set, more often we seek to extract some tendency of the whole point cloud. The nature of some data sources can dictate some spatial relationships (such as vehicles being spatially bound the road network), but in many cases the density of point cloud obscures the base map and precludes depicting of attribute variability within the set.

Spatial relations between point clusters are harder to conceptualize than it is with polygonal features. @egenhofer1991point describe 16 types of spatial relations (9 if reduced to spatial regions relevant in GIS) in two dimensional space. However, in their approach @egenhofer1991point define the point sets by their exterior boundary and then treat them as polygons. But delineating the exterior boundary is a challenge in itself, for example when dealing with smooth transitions in point density at the border, or when outliers are present. Spatial relations between point clouds in three dimensions are the subject of extensive research in the fields of computer vision and indoor navigation (e.g tran2017extracting or chen2019deep). However, the motivation here is object identification. In these lines of research the point cloud is representing distinct solid objects in the real space that need to be extracted, so the point cloud itself is not an object of research. For cartography, the point sets already come with some assigned attributes, so there is usually no need to label them algorithmically. Large point sets tend to get unruly, and saying anything meaningful about spatio-temporal relations of multiple such clouds is increasingly challenging for the basic set theory (see Fig ). 

![**Fig.** With polygonal features it is usually straightforward to identify the type of spatial relationship in 2D space (a). When replacing point clouds with polygon representations to apply set logic, the problem of meaningful boundary delineation arises (b). For several complex layers it is harder to say anything revealing about their spatio-temporal relationship (c).](imgs/point-cloud-spatial-relationships.png)

**Temporal relations** are measures of coincidence. There are thirteen possible relations between two temporal records described in @allen1984towards. As we have seen with stations, agents and events, the existence and data collection of any entity can be either continuous or discrete in time, it is therefore useful to distinguish between *time point* and *time interval* when investigating temporal relations. Linear conceptualization of time can be supported with cyclical and branching time, there can be discrepancies between the temporal parameters of the base map and the thematic overlay, or between the time interval of existence and representations. We'll untangle these complexities in chapter 4.

**Relations specific to moving objects** – moving objects have a specific set of properties based on their spatio-temporal circumstances. These can be *instantaneous* (actual position and speed), *interval-based* (e.g. travel distance from departure), *episodic* (related to external event) or *total* (related to entire trajectory). (@laube2007movement, andrienko2008basic). 


TODO — move stuff from time section — taxonomy of termporal events:
how to measure velocity (already in chap 1)

— thickenss of durative code in wood's terms (different for real objects and for map layers too)
— other assessment — events per unit of map time
— time scale, time resolution

**Taxonomy of temporal events**

To define the possibilities of visualisation of time, a taxonomy of temporal events is needed. From the perspective of location, three types of changes can be proposed - appearance or disappearance, mutation, and movement [20] @blok2005dynamic. From the perspective of the temporal domain, it is possible to distinguish moment, sequence, duration, pace, and frequency. Single events can also interact with each other and occur or partially overlay within the same space or/and time.



@ott2001time

taxonomic model of time (based on @frank1998different)

|        |            | Total Order       | Partial Order       | Branching      | Multiple                        |
|————|——————|—————————-|——————————-|————————|————————————————-|
| Linear | Ordinal    | Single experience | Multiple experience |                |                                 |
|        |——————|————————————————————-|                |                                 |
|        | Continuous | Continuous time                         | Branching time | Time with multiple perspectives |
|————|——————|————————————————————-|                |                                 |
| Cyclic | Ordinal    | Cyclic time                             |                |                                 |
|        |——————|                                         |                |                                 |
|        | Continuous |                                         |                |                                 |
|————|——————|————————————————————-|————————|————————————————-|

Both linear and cyclic time can have different granularities, (unit 1 chronon can have different values (1 year, 1day...))
Changing granularity (through aggregation or conversly decomposition)

bi-directional time structure (branching time) (based on @hazelton1992developments)

past —> future
     |—-> future worlds modelled from past
     |
 <—-|—-> present
 <—-|
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

Temporal relations

![**Fig.** Temporal relations between time points. Adopted from @aigner2011visualization](imgs/time-relationships-1.png)

![**Fig.** Temporal relations between time point and time interval. Adopted from @aigner2011visualization](imgs/time-relationships-2.png)

![**Fig.** Temporal relations between two time intervals. Adopted from @aigner2011visualization](imgs/time-relationships-3.png)


Time classifications: linear/cyclical, time points/time intervals, oredered time/branching time

![**Fig.** Linear, branching and cyclical time](imgs/img-time-conceptualizations.png)


### 2.2.2 From data mining to visual analytics

Having described the fundamental spatio-temporal relations in big data sets, we can briefly describe some of the methods to uncover them. Recalling the human-machine continuum at Fig., we will start at the machine side with methods from the data mining group to eventually move towards the causality interpretation on the human side.

Several data mining concepts are of interest. *Association rule mining* is searching in databases for conditions occurring together frequently. We can describe an association rule as: 

 *x => y (s%,c%)*

Where *x,y* are conditions, together forming an *itemset* and *s,c* are levels of support and confidence. Support and confidence are basic rule performance measures, support being the measure of how often the itemset occurs in the whole database and confidence being the proportion of x being a member of an itemset x => y. For example: *park => school (4%, 55%)* means that 55 percent of parks are near schools, for 4% of items in the database (@han2011data). The measures of support and confidence allow us to set thresholds for significantly frequent co-occurrence.

*Spatio-temporal association rules* extend association rules to describe how objects move among a set of regions over time (@verhein2008mining). Incorporation of spatiality into association rules takes form of a simple binary conditions telling if the items co-occurred in the same predefined sets of regions or not.

*Sequence mining* is searching for patterns in time and other sequences. Similarly to association rules, we search for events occurring frequently together by considering three parameters: the *duration* of the whole sequence, the *event window* (time-horizon for considering events as temporally coincident) and the *time interval* between events (@miller2015spatio). These parameters allow us to turn the temporal relations between two items into binary parameter telling if the items co-occurred (that is when the time interval between them fits into the event window). 

*Periodic pattern mining* is a type of sequence mining that searches for recurrent patterns in time sequences. Such patterns can be: *full periodic patterns*, *partial periodic patterns* (e.g. just on Mondays), and *cyclic or periodic association rules* that associate events that occur periodically together (@han2011data).

Considering the breadth of possible spatial and temporal relations described earlier, the conceptualization of spatial and temporal co-occurrence in the association rules may seem rather simplistic. Basically, it is reduced to a yes/no parameter. Moreover, moving from the level of individual database entries towards assessing relations between compound entities such as spatial point clusters seems to be out of the scope of these methods. Of course, the way how spatiality is inscribed into association rules could be made more sophisticated, though with inevitable implications for mining performance. With large datasets, mining even the simple rules forces us to consider time constraints. For such tasks, a simple visual exploration is more efficient and reliable then basic algorithmic solutions.

At this point we can step back from mining algorithms to invite some human interpretation and to consider what conclusions we can actually draw from spatial and temporal co-occurrence of events. The usual assumption is that such co-occurrence can point to some form of causality. Drawing from approaches by @allen1995qualitative and @galton2012states; @bleisch2014mining distinguish between the trigger that apparently causes the event and the environmental conditions that have to be fulfilled for the effect to occur.

![**Fig** Ontological model of causation, adopted from @galton2012states. Description in text.](imgs/img-states-events.png)

In this model, *state* is an environmental condition and *event* is a change of state. Events are caused only by other events, while states only affect causation by allowing events to cause other events. Events *initiate* and *terminate* states, while states *allow* causation. The *initiate*, *terminate* and *allow* relationships are then dubbed *causal-like* to distinguish them from the event-to-event causation.

In conceptual framework for finding *candidate* causal relationships in movement patterns @bleisch2014mining distinguish between three kinds of granularity at which we can describe phenomena: *spatial*, *temporal*, and *causal*. While the first two are defined by the smallest spatial and temporal units, causal granularity is given by the kinds of events observed. Spatial and temporal granularities can be easily reduced to "see the bigger picture" (by changing the spatial scale, or extending the time range of observation), but causal granularity is more firmly determined by the data collection design. 

@el2002spatio note that although the general expectation would be that the effect occurs immediately after the cause, some delay between the effect and the cause can occur, possibly because the cause must attain some intensity threshold to trigger the event or because the effect and cause are spatially separated and it takes time until the influence of the cause reaches the location where it takes effect. @bleisch2014mining suggest that these apparent delays result from lower causal granularity of observation, i.e. there is some intermediary chain of effect and cause that happens during the delay but it is not recorded by the observation. Whether we accept the effect delays as real or illusionary might be more of an academic question, tracing down the potential causal link between the initial and the final event can yield predictive potential even when the intermediary causal chain remains undiscovered. 

Discussing the interpretation of spatio-temporal co-occurrence we have moved on the human-machine continuum towards the human end. At this point, visualisation becomes important as an interface between the user and the data. One of the general models describing how knowledge discovery proceeds via inference and interaction is the sense-making loop (fig).

![**Fig** The sense-making loop for Visual Analytics, adopted from @van2005value. User can interactively manipulate the visualisation to gain understanding of both the data and the representation itself.](imgs/img-sense-making-loop.png)

Visual analytics extends the concept of visualisation: not only it provides a visual interface to the database, but also makes the data processing pipelines transparent for an analytic discourse. Keim2008visual in their introductory paper say the goal of visual analytics is the creation of tools and techniques to enable people to:

* Synthesize information and derive insight from massive, dynamic, ambiguous, and often conflicting data
* Detect the expected and discover the unexpected
* Provide timely, defensible, and understandable assessments
* Communicate assessment effectively for action

This is truly a long way from the low-level search for co-occurrences, though it is not clear how should these grand goals materialize in practice. Keim2008visual call for broad inter-disciplinary collaboration between related fields (Visualisation, Data Management, Data Analysis, Perception and Cognition, Human-Computer interaction) and identify a range of application and technical challenges. 

The brief tour we just went trough lets us appreciate the prospect of gaining the best of the both worlds — to support human analytical efforts with algorithmic power doing the heavy lifting around data manipulation. We have seen that inscribing spatiality a and temporality to data mining processes can be both cumbersome and simplistic. Furthermore, the co-occurrence we want to search for needs to be defined beforehand, so in many cases data mining is insufficient to provide the required insight. Search algorithms can be performance heavy, which invites some coordination with human observer that is able to easily gain an overview of clusters beyond individual database entities. Visualization and visual analytics provide this exploratory potential, especially for big data in situation where we don't yet know what questions we want to ask. Visualisation as a sense-making tool gives us a way to find things that we had no theory about and no statistical models to identify and to explore the space of models in more expansive ways (@bollier2010promise).

Many possible data transformations may be applicable to a particular problem, but it is not necessarily clear which ones will be of most value in facilitating insight. Also, because visual analytics is qualitative as well as quantitative, there are no assumptions of exact parameters and well-defined boundaries between what is interesting and what is not. A priori criteria of significance may be manipulated based on the judgment of the analyst (@thomas2005illuminating). As we will see next, digital cartography has great potential and means to dynamically support cognitive tasks in the manner of visual analytics.


## 2.3 The role of cartography

Cartography has a long tradition of making data comprehensible to our visual minds. Beautiful and authoritative maps in school atlases explaining for example the formation of air masses or the flows of ocean streams give off an impression of exactitude and definitiveness. But the fact is that these maps are based on data from loads of observations. These data had to be collected, brushed and analyzed for the presence of meaningful patterns, and than visualised in a way that would appeal to human comprehension. The process for creating such maps is nowhere near "real-time" but allows for fine-tuning of all aspects of the map: from carefully shading the outlines of water bodies to making the street connections visually pleasing. This process allows for perfectionism, and the resulting maps remain beloved by collectors long after their 'utilitarian' function is gone.

For digital cartography^[For brevity, we will use the term *interactive maps* as a shorthand referring to maps based on dynamic data, allowing user interaction, consumed almost exclusively through the web, viewed on screens of various sizes. With the term *digital cartography* we will refer to the theory and practice of creating such maps.] it took a long time to come any closer to the visual quality of the best works of cartography in print. Arguably, there is still some unfulfilled potential in getting towards graphic excellence in web mapping, though recent improvements in available tools open new possibilities for innovation. Digital maps have the obvious advantage of allowing interaction – user can zoom, pan, change, filter and combine the displayed data. The second big advantage is the possibility to update the displayed data real-time as the data source is updated. Sure, many digital maps are not dynamically updated, simply because the theme does not require it (e.g. medieval monasteries in France or 1991 election results in Yugoslavia). But interactive maps based on dynamically updated data are of special interest as they pose a whole new set of challenges to authors. Ensuring cartographic quality now means designing for yet unseen changes in data with user-induced modifications in mind.

School atlases serve as a presentation of knowledge, are *confirmatory*. Digital cartography allowed for *exploratory* mode of map interaction to emerge, or more precisely, the data exploration step moved from *before* to *after* map publication, and from the cartographer/author to the map user. Visual analytics based on spatial data provides interfaces to manipulate and visualize information, or better to say to pick from the pre-designed visualisation modes. This has implications for both the cartographer and the user.

In the following few sections we will describe what kinds of inference digital cartography aims to support, then we will outline big data related research challenges for cartography, as well as issues of collaboration and user engagement.


### 2.3.1 Maps for answering questions, maps for asking them

Interactive map as a data manipulation interface is useful for those who know what questions they want to ask, but also for those who want to find out what they might be asking. So what kind of inference should an interactive map support? 

We can start simple, with basic quantitative questions. A big advantage of interactive maps over print is that we can display the exact quantities on demand (e.g. with some pop-up window bound to cursor hover action) and not rely on the viewer's ability to infer quantities form the legend (especially if categorized to some interval scale). The ability to answer simple quantitative queries shouldn't be left in vain, because as @tufte1998visual warns: "when scientific images become dequantified, the language of analysis may drift toward credulous descriptions of form, pattern and configuration [...] rather than answer to questions *How many? How often? Where? How much? At what rate?*".

We can say that these questions are at the basic level of map reading. bertin1983semiology distinguishes three reading levels for the thematic map, and at each level, different sorts of questions that can be asked:

* *elementary level* – questions introduced by a single element of the visualisation (What is the level of unemployment in this district?)
* *intermediate level* – questions introduced by a group of elements or categories in the visualisation (What are the five most populous districts in the region?)
* *overall or global level* – questions introduced by the whole visualisation (What are the spatio-temporal trends of traffic in this city?)

It is obvious that even a simple map has a potential to introduce countless possible combinations of questions at various levels. As we will see in the next chapter, showing the basic quantities gets complicated in the context of big data, when the number of records to be displayed precludes displaying them individually. Another challenge comes with multiparametric visualisation, especially if we want to support both elementary and global levels of reading for individual parameters.

Besides the importance of supporting elementary-level questions, in thematic cartography we are often interested mainly in the global level of reading as it is hardly achievable with non-cartographic means. Often times, just to *see* the overall level is a revelation — an overreaching macroscope perspective unique to maps. But what else we can do with the overall patterns?

Are there any examples of cartographic visualisation successfully supporting the analytical reasoning? Maybe the most frequent answer for this question would be the celebrated map of the cholera outbreak in London 1855 by John Snow that helped to identify the source of the epidemics in a polluted water pump. This feat is lauded for launching spatial epidemiology and for bringing the thematic cartography to the fore (@clarke2015map). But what exactly made the Snow's method worth following? @tufte1998visual notes four features:

* Placing data in appropriate context for assessing cause and effect
* Making quantitative comparisons
* Considering alternative explanations and contrary cases
* Assessment of possible errors in the numbers reported in graphics

These characteristics describe Snow's thought process which both resulted in and was guided by the map in the making. Indeed, creating effective visualizations is itself a process of exploration and discovery. Working on an interactive map is an iterative process that often yields new questions about the data that were not asked during the early analysis, which enhances the application for the user's benefit. 

Modelling what kinds of tasks can be supported by the data is one of the first steps towards a successful visualisation. As @fisher2017making note, high-level questions need to be refined into specific, data-driven tasks. To do this, we can break down the question into four specific components: objects, measures, groupings, and action. Ability to discern those components is a good indicator of weather the task is specific enough and can be computed from data:

- *Objects*: when a task is specific enough, each object will be something that is represented in data.
- *Measures*: In a sufficiently specific task, the measure is either an existing attribute in the dataset or one that can be directly computed from the data. 
- *Groupings (or partitions)*: Attributes or characteristics of the data that separate the data items into groups. In a specific task, partitions are attributes of the objects or can be calculated directly from those attributes. 
- *Actions*: Specific operation being done with the data such as compare, identify, characterize, etc. Actions guide the process of choosing appropriate visualizations.

There has to be a traceable path from the high-level abstract questions to a set of concrete, actionable tasks in the map based application, otherwise some additional data may be needed for the questions at hand.

Maps allow for basic quantitative questions on the elementary level, pattern descriptions on the global level. There is much we can do to quantify the pattern descriptions using GIS tools and geostatistics and we can observe spatial correlations between datasets. Spatial patterns in the real world are rarely independent from the geographic context, usually there some observable non-random tendency or some visible or quantifiable relationship with other data layers.

However, the search for patterns and correlations is not the full picture of the feasible use cases. Searching for outliers is interesting for ventures looking for a unobvious opportunities. Similarly, finding areas where the mapped phenomenon is absent can point to development potential. Another use case is searching for deliberate randomness when illicit actors attempt to operate in a fashion that is not predictable from large datasets (@bollier2010promise). And then there is a modeling faculty of digital maps that enables what-if questions and comparison of various scenarios. As we have seen, the types of analysis that maps support is broad and each project can yield its own specific kinds of observations, to which we can adjust the custom-made map applications.


###  2.3.2 What next? Research challenges 

Researchers in cartography and geovisualisation see big data as an opportunity and also as a certain call to action. The research agenda for geospatial big data and cartography laid down in @robinson2017geospatial shows the general interest of moving the field toward fulfilling its potential to make maps that "pique interest, are tacitly understandable and are relevant to our society". It is certainly reassuring that the community is aware that new sources of data "stretch the limits of what and how we map". Building on this, @robinson2017geospatial list several large-scale and long-term research challenges to face cartography in relation to big data as well as some short-term research opportunities for more concentrated investigation (see appendix A for the overview). Even though some of the points seem vague or repetitive, and the influence of the distinct ICA^[International Cartographic Association] commissions is clearly visible, the agenda states some truly exciting challenges to tackle. In relation with the scope to this thesis we can highlight the following challenges for cartography:

- *Develop visual analytical reasoning systems that can help users add meaning to and organize what they discover form geospatial big data* – we need to move beyond naive exploration and focus attention on tools that help people reason about what they are seeing. Users need to be able to save, annotate and compare their findings as they work on complex problems.
- *Develop methods that embody the volume of geospatial big data* – we need cartography that can intelligently process and display big data at a size and a format that users can realistically handle. This will require solutions that support coupled analysis and visualisation as big data often need to be analysed before they are visualised (the order is reversed in exploratory visualisation). 
- *Create maps and map-oriented interfaces that prompt attention to important changes in dynamic geospatial big data sources* – We will need to work with global changes, local changes and combinations across scales. In addition, if we display every possible change at once, then the graphical displays become cluttered. Creating summaries of change may be the solution, but we do not yet know how to select important patterns and generalize to something that a user can understand.
- *Leverage what we know about map animation and interactive cartography to construct visual solutions for dynamic sources of geospatial big data* –  Conventional solutions for interactive mapping, animated mapping or geovisual analytics can be used for representing big data. However, because of the high velocity characteristic of big data, it is necessary to develop solutions that can automate map design decisions to support interactive design solutions that respond (or potentially precede based on modelled outcomes) as the data changes.

[TODO later link to sections that resonate with the above goals]

As @thomas2005illuminating describes, "an emerging discipline progresses through four stages. It starts as a craft and is practiced by skilled artisans using heuristic methods. Later, researchers formulate scientific principles and theories to gain insights about the processes. Eventually, engineers refine these principles and insights to determine production rules. Finally, the technology becomes widely available. The challenge is to move from craft to science to engineering to systems that can be widely deployed". Cartography, being a university study field had arguably crossed the four stages in the past, though with constant advances in tools for data processing and building interactive applications, the field could benefit from regularly revisiting the craft stages to see how the new tools alter our concepts of mapmaking.

This thesis does not have the ambition to imagine all the paths cartography could take in the future. However, in addition to mentioned agendas, we would like to highlight three overreaching questions that we feel are not widely discussed within cartography. Much of the work described in the remaining chapters of this thesis is rooted in pondering on the following questions about the practice of digital mapmaking:

*(a) Is cartography fully exploiting the digital medium?*

Before hopping on the wagon of augmented reality and immersive experiences (that make roughly a tenth of the population sick) cartographers could consider if they made the most of the previous medium shift. Even in the plain world of regular screens and everyday web traffic there is still a lot to be achieved for cartography to be truly useful for everyone.

Web is inherently a map-friendly platform where map products will be increasingly commonplace. Yet from the cartographic perspective, the great portion of thematic maps on the web seems rather underwhelming. Default-style markers for points of interest and numbered marker clusters to "solve" high point densities are just the tiny portion of what could be done. Cartographers should be the first to go beyond the pre-set graphic means. 

Apart from the limitations posed by opinionated mapping frameworks there are also certain mindset limitations that come from transferring a visual artifact from one medium to another. Rules and practices that were to a large degree dictated by the old medium of transmission (print) get involuntary transposed to the new medium that may not require them at all. This was apparent for example in the grid-like organization of the web news pages transferred initially from the design of printed newspapers. Are there such taken-for-granted givens that linger meaninglessly in digital cartography?

There are of course many limitations that are not imaginary, like data interoperability issues and vendor lock-ins. The skill sets needed for data analysis, desktop GIS operation and web development seem painfully detached. But all the problems apart, a good mental exercise for cartographers would be to imagine map creation and interaction detached from any medium – what would we design if anything was possible? 

In cartographic research, we often test the cognitive efficiency of the visualisation methods that already exist. This is all good, but we should not assume that the cartography's quest to *extend* the arsenal of visualisation and interaction methods is completed. As we will see further, interaction and increasing data load pose new challenges to cartographic visualisation, with opportunities for creative inclusion and combination of new methods.

*(b) What inspiration can digital cartography take from the heritage of pre-digital mapping?* 

Same as we asked about the preconceptions of the old medium, we can reverse the question and ask if there are any good tricks from the rich history of cartography that did not make it to digital mapping toolbox. What was lost in transition to digital? Even though paper maps and atlases age in the sense of content, cartographic methods used in them often remain inspirational and valid — the old map products many not be outdated for cartographers.

Some of the classical cartographic techniques may be demanding to implement in the variable scale environment, same other may provide solutions to the visualisation issues like high density displays. Again, we arrive at the problem of opinionated web mapping libraries that are not easy to customize or extend. Cartographers usually aren't software developers, and software developers are usually unaware of old map stocks, but there are already examples of positive trends in collaboration towards richer visualisation in digital maps.

*(c) Should cartography focus more on the interaction design?*

Creating digital maps is not only about assigning appropriate visualisation type to the data at hand. It also becomes increasingly about designing user interactions with map elements. The ways how the map application enables user actions, the way how map controls and map elements react to user-induced changes, the way how the whole map composition adapts to screen space constraints, this all weaves a complex net of interdependent design decisions that will become an inherent part of digital cartography. What is more, the challenges of high data density affect both map intra-composition as well as extra-composition^[TODO explain these terms?].

As @robinson2017geospatial note, too often in the visual analytic process, researchers tend to focus on visual representations of the data but interaction design is not given equal priority. We need to develop a “science of interaction” rooted in a deep understanding of the different forms of interaction and their respective benefits.

In the IT industry there is a discipline of UX (user experience) that could provide some inspiration for example in accessibility evaluation, though most of its methods doesn't fit very well to the specifics of interactive maps. At the same time, large web map providers probably collect user interaction data that could power cartographic research if they were accessible.

But we shouldn't limit our sight to software interfaces to get inspiration. There are tons of well designed devices in the physical world that could serve as an example of clever interface design. There is a potential on expanding the repertoire of interaction techniques for digital maps. As mapped themes vary greatly the interactions could be tailor-fit as is often is with visualisations. As we have seen many times in history of innovation, progress is often hampered by mental roadblocks we don't even realize we have.


### 2.3.2 How next? Challenges in collaborative practice

Having described the ontological models of causation as well as visions for the future of cartographic research, we can now take an aside to dwell a bit on the nitty-gritty realities of mapmaking in practice. Practical aspects of the profession are often overlooked in literature, as well as the fact that cartographer often needs to operate within a greater team. The smoothness of collaboration within the team is then a determining factor of its productivity. 

There is a (somewhat mythical) notion of “full-stack” visualization designer-developer capable of conducting the broad range of tasks needed for a visualisation project (@gray2012data). Though some such individuals do exist (possibly working on smaller applications for customers or on PhD projects), it is clear that cartographer can take only so much of additional roles (data analyst, UX designer, front-end developer, database administrator...) before getting on thin ice. Real-life visualisation projects often include a range of team members or even teams with disjoint skill sets. The question then arises on how to modularize the work. One possible model of decomposition is the information visualisation reference model (**Fig**).

![**Fig** Information visualization reference model. Adopted from @heer2008design](imgs/infoviz-reference-model.png)

In this model the collaboration points lie at the transitions between the stages and involve decisions on data management, visualisation and analytical capabilities (@heer2008design). Physical and temporal separation of teams and institutional and disciplinary divides lead to early-stage partitioning of tasks both in the *design* (data profilation, ideation, mockup creation and prototyping) and *development* (implementation, testing, deployment and maintenance) phase (@walny2019data). Such divisions are not unique to data visualisation projects, it could match any web development project.

![**Fig** Stages of data visualization development process. Adopted from @walny2019data](imgs/stages-of-dataviz-development-process2.png)

@walny2019data formalize stages of data visualisation process based on experience with several assignments (Fig.). In the iterative process the division of labor gives rise to *handoff* events, when one team passes work products and requirements to the next team. Particularly the handoff between the design and development team is where issues can arise to affect the end result. Speaking from the position of design team @walny2019data articulate several key challenges that affect the success of the handoff and in turn the smoothness of the whole project:

* *Adapting to data changes* – changes in input data can have cascading effects throughout the stages of the process. Some breakages are inevitable (e.g. API changes) and fixing them is a part of project maintenance. It is advisable to have data transformations automated to the largest extent possible, as it is highly likely there will be a need to reiterate them. In this sense, the scripts and the processing tool chain developed during the project can be actually more valuable to creators than the project outputs.
* *Anticipating edge cases* – though this is incredibly hard for real-time data inputs, best effort should be made to foresee at least the main application states resulting from the user interactions, such as filtering, changes of scale, etc. 
* *Understanding technical challenges* – knowledge of technical constraints helps to produce feasible design ideas. Development team's concerns differ form the design team's, they include cross-browser compatibility or future code maintainability. In some areas the goals can overlap, for example in accessibility considerations or performance optimization.
* *Articulating data-dependent interactions* – prototyping interactions such as linking and brushing using conventional graphic tools is challenging, not to mention animations or transitions between views. There are wireframing tools that try to address this, though misunderstandings still occur. 
* *Communicating data mappings* – this is a concern when delivering static mockups for the development team. The mapping between data and the interface controls may not be obvious, especially when the complexity of data does not allow to exemplify all possible application states. Annotations within mockups try to ease this.
* *Preserving data mapping integrity across iterations* – tracking implementation adherence to the design, finding errors, as well as checking if change requests from previous iterations got implemented is solely a matter of visual inspection and therefore prone to error. This can be fixed by automated testing, though it is not feasible for all types of projects, and even if implemented, the test coverage can rarely reach 100%.

Project examples form @walny2019data show that the above challenges were formulated based on project experience with relatively static data inputs. This underlines why interactive cartographic visualisation of real-time data is hard: much of the advice is hard to impossible to follow when the real-time data inflow is volatile. [TODO link on chapter on data mocking]

### 2.3.3 Who cares? Building user engagement

The ability to interact with the map-based application can surely be empowering for the user, triggering the sensation of exploring the unknown. On the other hand, things can go wrong as it is very hard to create an immersive experience from a complex dataset that would be immediately understandable to the newcomer. Exploratory map applications intended for the general public can leave users overwhelmed with the amount of possible interaction points. Left to their own devices and without any stated framework for interpretation, users need to create their own narration about what is displayed. Visual interfaces are prone to be terrifyingly cluttered, untroubled with dangers of fostering misinterpretation. Lack of guidance on where to start results in poor engagement with the application that is quickly abandoned. With specialized applications for professional audience, this can be mitigated by training, because users are basically forced to work with the application as part of their job. Similar problems occur in business analytic dashboards proliferating in enterprises, which fail to make sense to users, or worse, fake insight with vaguely understood and hardly interpretable metrics. All these caveats pose a challenge to application designers.

Building engagement with an application is mainly about sparking curiosity in users. Previously in this chapters we discussed what kinds of questions can interactive maps answer, assuming that there is someone who wants to ask them. But this assumption shouldn't be taken for granted. Adding hints and motivations to map interfaces should get more interest from cartographers, not only because it is a way to make our work resonate in general public but also it provides some options to work around the cognitive difficulties connected with visualizing large amounts of data.

![**Fig.** Various ways of expanding our mental model or the world can trigger pleasure. Adopted from @stanova2016algorithms](imgs/img-knowledge-diagrams-1.png)

So how to trigger curiosity? According to @stanova2016algorithms (Fig), to set off the thrill, one needs to first get from the "I don't know that I don't know" zone to the "I don't know and I'm curious" zone. Here we realize that there is something missing in our mental model of the world and we want to discover it. Crossing the border from "I don't know" to "I know" creates pleasure and motivates further exploration (which is crossing back and forth between "I don't know" and "I know"). Note that the "I know" zone doesn't need to correspond to reality — exploring fictional worlds, gossips or conspiracy theories triggers pleasure just as well.

From the cartographic point of view, when we create maps for specialized audience, we target people who already are in the "don't know + curious" zone. But when working for general audience, it is important to think about how to move users to the curious zone to encourage interacting with an application. Sometimes the compulsory education makes the mistake of revealing how something works before making pupils interested in the topic, resulting in low levels of engagement and remembering. The same problem can occur when the user lands straight at a complex web interface with intricate cartographic visualisation.

![**Fig.** Pleasure points usually arise when ambiguity is triggered and when it is resolved. Adopted from @stanova2016algorithms](imgs/img-knowledge-diagrams-2.png)

The thrills can arise also when crossing the I don't know barrier, that is when the ambiguity is triggered (Fig). The pleasure here comes from the expectation of the potentially upcoming reward — resolving the ambiguity. However, note that the ambiguity doesn't need to be resolved to set off thrills — for example, when watching a magic trick we don't get to know how the magician does it but we can entertain ourselves in speculations. Similarly in exploratory cartographic interfaces the stimulation comes from exploring various aspects of the displayed data, fostering our curiosity about the nature of the phenomenon.

The related concept of *flow* describes the relationship between the skill of the user and the difficulty of the task at hand (@csikszentmihalyi1997flow). Flow is the mental state resulting form the right balance between the task difficulty and the user's skills. The flow channel is rather narrow — if the difficulty is too high, anxiety arises, if it's too low, user is bored. The task of the interface designer is not to dumb down the displayed content, but also not to create additional roadblocks with incomprehensible interaction modes. 

Shaping the initial experience with an application is sometimes referred to as “user onboarding” (@baur2017death). The onboardiding stage is far too often omitted in information visualisations on the web, though there is no wide consensus on how it should work, the basic aim should be at a minimum a short textual introduction to the presented data and the knowledge around it. Complex interfaces tend to offer an initial tour of controls that usually explains what individual UI elements do, less often it ventures into teaching people how to read and understand the presented visualizations. There are approaches like "scrollytelling" (@amabili2019storytelling) or explorable explanations (@victor2011explorable) that embed interactive visualisations into larger body of text that gradually explains it.

The task is further complicated by the obvious fact that different people have different interests and understanding of the world. In web development, creators try to specify user personas to represent target audience and user stories to list supported user actions. To start modelling from considering users rather than data is certainly an advisable approach. However user stories are often too removed from the real life circumstances to perceive and prevent abusive uses of the system (so called "weaponisation" of design @diehm2018weaponised).

Tailoring the map interaction to intended users is definitely something digital cartography should aim for. While some customizations are technologically possible (e.g. the dark mode in transportation maps switching on for tunnels or night travel), the topic of accessibility of interactive maps is still fairly unexplored. While there are methods to ensure map is usable for people with color blindness, there is a wide range of vision impairments cartography is largely unprepared to adjust for. 


## 2.4 Objections and Responses

Not surprisingly, data visualisation is seen as a great tool for achieving a desirable goal in most of the literature, this thesis included. But there are also voices raising objections against some naive expectations form data visualisation that may get even more harmful with incorporation of big data. Such debates may shed some light on the possible future evolution of digital cartography, so let us briefly outline some of the main objections and possible responses to them.

**Hiding system complexity**

The first objection is related to modelling and visualizing complex systems. By reducing the complex system into comprehensible chunks, data visualisation may encourage confident predictions and estimations that may lead to decisions and interventions with harmful effects. The issue is that the used datasets and models may not include all aspects of reality, but *absence of evidence is not evidence of absence*. Incomplete models may rationalize decisions that despite claiming to be "data-driven", actually stand on thin legs. This can lead to unpleasant surprises (for example, loosening of pandemic-related restrictions in Czech Republic before Christmas 2020 was based on models that did not account for the presence of a COVID-19 variant with increased transmissibility, leading to disastrous effects soon afterwards). Visualisation based on a bad model than acts as an accomplice, no matter how well crafted it is.

Apart from missing relevant information in models, there are some aspects of complex systems that render prediction efforts highly problematic. Nonlinear relationships between system parts produce disproportional responses to change in input parameters. The boundaries between system components may be hazy or even imaginary. When the relationships between system components are vaguely understood (which is often the case in complex systems), any naive intervention can trigger a chain of cascading second order effects that can accelerate harm (@meadows2008thinking, @taleb2012antifragile). Moreover, extracting trends from historical data offers no preparation for the so called Black Swan events — large-scale unpredictable and irregular events of massive consequence (@taleb2007black).

What can be done in response to these concerns? Models and visualisations could be more explicit about their own limits — properties of data, statistical assumptions, margins of error, sources of uncertainty and possible other explanations. Incorporation of uncertainty into visualisations should be done in a way that cannot be easily ignored by the users (@kale2020visual, @correll2018value). Visualisations should not simplify the depiction of data if it leads to hiding important aspects of the system. Overall, visualising interdependencies and feedback loops within a complex system poses an interesting challenge for visualisation community and for cartographers as well.

When it comes to reasoning about complex systems, visualisations can support a *non-predictive* approach that aims more at risk evaluation and moderating exposure to the possible harm coming from unprecedented events. In relation to man made systems in general, we could strive to make them more akin to natural systems that are not only robust to error, but can also adapt and benefit from certain doses of volatility (so called antifragile systems @taleb2012antifragile). 

**Misinterpretation**

The second objection is related to the first one, but rather than looking at limits of models and visualisations, it is concerned with user's ability to interpret them. It is long known that our intuitive thinking is influenced by biases in many tasks, including assigning probabilities to events, forecasting the future, assessing hypotheses and estimating frequencies (@kahneman2011thinking). There is a long list of cognitive biases that correct the assumption of people being fully rational actors.

For example, biases about the reliability of different sources may lead us to discount information from sources that we don't associate with (@thomas2005illuminating). When we form a preliminary judgment too early in the analytical process, we may hold firm to it long after the evidence invalidates it. Sometimes we settle for a “good enough” answer, stopping our analytical process before identifying critical information that would lead us to a different conclusion (@heuer1999psychology). We are also challenged to think statistically compared to our abilities to think associatively, metaphorically or causally. Furthermore, there is our overconfidence in what we think we know, and inability to acknowledge the full extent of what we don't know (@kahneman2011thinking). We also underestimate the role of chance in events, we tend to assume causality between events that just happen to occur at the same time (@taleb2012antifragile), and so on, and so on.

To make the matters worse, experts who create visualisations are also susceptible to various biases. The design choices can drive results every bit as much as traditional “data-cleaning” choices. Hence visualization techniques contain embedded judgments (@bollier2010promise). Then there is the "curse of knowledge": the difficulty in imagining what it is like for someone else not to know something you know (@pinker2015sense). On the side of the application designer, it can lead to expecting the user to have same levels of skills and knowledge, but also the same values and views of the world.

What can be done in response to these concerns? First of all, we might benefit from a more realistic view of the impact of data visualisation. Insight comes from knowledge and experience and no data-driven tool can compensate for the lack of the two. Visualisation is a supporting tool, a mediator that can stimulate and amplify the thought process, but cannot act as a shortcut if no thinking is being done. Expecting to become an expert by looking at a picture is a false promise.

That being said, acknowledging the cognitive biases in the visualisation design process is definitely a right way to go. Visualisation designers have often little information on what judgements are triggered by their work. There is a growing body of research on user interactions with complex visualisation that could help us. Applications could incorporate tools to collect feedback from users, even evaluate usage data to find issues. Overall, judgement biases are systematic errors, therefore to some extent they are predictable, although maybe not preventable. The task is then to explore how to adjust the visual language to warn users that they might be biased.

**Non-human decision makers**

The third question is directed more at the future relevance of data visualisation in the face of artificial intelligence (AI). If more and more decisions will be carried out by algorithms, the need for visualisations may diminish in many areas where it is deemed crucial nowadays, merely because computers, unlike human analysts, do not need to visualize things to gain insight and understand the problem. 

Having described the range of cognitive biases one might welcome computational assistance, and in many areas we already rely on it, navigation being a prominent example. One the other hand, we can point out the current deficiencies of machine learning algorithms. Contrary to popular beliefs, the technology is not ready to step in for humans for the majority of tasks. Current machine learning is about extracting rules from vast training data sets, which is susceptible to various kinds of issues: sensitivity to gaps and errors in data, confinement to the specifics of training data, or the tendency to take unwanted shortcuts (@shane2019you). Furthermore, it is not certain that some breakthrough in artificial intelligence will come in the foreseeable future, either because its already large appetite for computing power will become economically, technically, and environmentally unsustainable (@thompson2020computational), or because the demand for artificial collaborators will perish — we will simply want to design AI as tools not as collaborators (@dennett2017bacteria).

In a realistic view, the danger of AI is not in usurping us, but rather in us putting too much confidence into uncomprehending tools. But even if we will get to non-human decision makers, it wouldn't mean a demise of visualisation. Contrary, it could open new opportunities for using visual artefacts: either as a communication interface between humans and machines or as a way to inspect and verify the workings of decision-making algorithms. It is not possible to check upon a black box, nor to negotiate with it, so gaining insight into how and why automated systems arrived at a particular decision may become a new frontier for the data visualisation community.
# 3 Mapping spatial big data

This chapter explores possible cartographic solutions to high graphical and temporal density in spatial data. Focus lies on hexbin aggregation and contextual interplay of map layers. Web rendering technologies that power these solutions are described afterwards. 

## 3.1 Visualisation challenges: spatial and temporal density

How to process a high number of data points for visual exploration, and why is it hard from the cartographic point of view? If we stick to the traditional understanding of visualization as using visual tools to facilitate insight and support decision making of human recipients, then human cognitive capabilities are the main guiding factor to adhere to. There are variances in graphic literacy across the population, not to mention accessibility requirements for various sensory conditions and disabilities, but to even start addressing those issues, we first need to focus on the *legibility* as the base requirement common to every recipient.

Legibility in maps enables readers to separate signs from each other and to distinguish steps of visual variables. @bertin1983semiology names three parameters that determine legibility in information graphics: *graphic density*, *angular separation* and *retinal separation*. Graphic density is a number of marks per cm2, angular and retinal separation describe the perceptible differentiation in angles (e.g. to compare shapes or segments in line charts) and in visual variables (like hue or size). The joke charts in fig illustrate the visual problem posed by the high graphic density caused by high data load. Unlike angular and retinal separation that to a high degree result from the author's choice of symbolization, the graphic density is largely determined by constraints that cannot be influenced by the mapmaker. In the next section we will look closer on what these are.

![**Fig.** Big data scatter plot on the left and big data parallel coordinate plot on the right. A tongue-in-cheek reflection on the limits of graphics, modified after @fischer2015why.](imgs/bd-diagrams-joke.png)

Aside from graphic density that causes illegibility in map symbolization, another direct impact of big data on cartographic visualisation stems from changes in data that happens through time. With accelerated change frequency two problems arise — the data needs to be processed "real-time" in order to keep the picture up to date plus there is a rapidly growing log of historical data that needs to be processed. Digital map interface then needs to adjust visualisation to the most recent version, appropriately notify the user of important changes, and enable historical analysis and reasoning about the upcoming trends.

### 3.1.1 Design constraints

Let us consider the parameters that determine the graphic density in digital maps. The graphic density may vary along three axes (fig):

![**Fig.** Three axes that influence the graphic density in map based web applications.](imgs/img-design_constraints.png)

1. *Axis of scale* determines the land area displayed in the map view. Unlike print, web map interfaces support dynamic change of scale (zoom in and out) and focus (panning). This is a great capability for exploring data and can help to mitigate some graphic fill issues, but also complicates cartographic design as the chosen symbolization should work on every scale level. This requires dynamic adjustment of symbology: for example, if point symbol size is kept constant across scales (default in many web mapping libraries) a larger point cluster soon becomes illegible due to overlaps. However, plain linear size adjustment can lead to empty-looking maps if the symbol size gets too small in larger scales. For the majority of projects, there is a range of meaningful scales. Until recently, web mapping libraries supported only limited number of discrete zoom levels (from 0 to 19, a limitation dictated by tiled raster base map sources), so there was a limited predictable range of zoom levels that cartographer needed to consider for a project. As we will describe further in this chapter, vector tiles allow for fractional levels so the zoom experience is smoother, therefore it is now more efficient to define a scale based function for symbology adjustment rather designing specifically for discrete steps.

2. *Axis of screen space* determines how the map view reacts to varying screen sizes. The standard requirement for modern websites is responsivity, which means the site should adjust the browsing experience to reflect the size and capabilities of the viewing device (desktop, tablet, or mobile nowadays, plus whatever comes next in the future). For many map based web applications, responsivity to small mobile screens is not pursued as the resulting experience is suboptimal. But this niche is certainly worth exploring in the field of thematic cartography, mainly because the proportion of mobile-first users is likely to rise^[<http://mobilev.is/> aims to collect good examples of data interaction design for small screens].

In a responsive web map, the screen size and aspect ratio influences the size and shape of the map view which in turn needs to be reflected in the initial map scale (zoom level). The so-called *visual information seeking mantra* states "overview first, zoom and filter, then details-on-demand" (@shneiderman2003eyes), which translates well to digital thematic maps — we naturally expect to see the whole extent of the mapped area to be able see the general spatial pattern first. However, to provide the initial overview consistently across devices, the responsive map application needs not only to adjust the map view size but also to calculate the correct initial zoom level to fit the area of interest into that view. Fractional zoom levels in mapping libraries are a significant help in this, because the differences in whole number zoom levels often lead to insufficient fit.

3. *Axis of data change* describes how application reacts to changes of displayed data. These changes can be far more complex than in case of the previous two axes as the number of possible data layers, configurations within them and interrelations between them is countless. The changes may be triggered by *user interaction* or in case of continuous data streams by *changes in data itself*. Users can change the visibility of data layers, modify visual variables, adjust the temporal scale, or change the aggregation level (drill-down and roll-up actions elmqvist2010hierarchical). The range of supported interactions is defined by application authors, but the actual outcomes of these interactions can be quite surprising, especially when combined with dynamic data. Real time visualisation then brings true unpredictability to the design process (dubbed "blindfolded cartography" @woodruff2015blindfolded) and has implications on data processing pipelines and on abstractions in data and visual space. 

Navigation and other problems that involve reasoning about space are well studied; however, reasoning
about sequence of events is not as well understood. Dynamic data visualisation needs to be informed about human time constraints. Four distinct cognitive bands are of interest (@thomas2005illuminating): *~100 milliseconds* — rate necessary to produce the perception of a smooth animation or immediate response in interaction design; *~1 second* — necessary rate of response to simple user actions. If the response might take more time, it is important to provide some kind of feedback in the 1-second timeframe to reassure the user that something is happening. This time constant is also useful for user-initiated transition animations; 
*~10 seconds* — time within which users expect more complex user-initiated activities to complete; *~100 seconds* — time frame for higher-level reasoning processes

The fourth constraint is the axis of cartographer's ability — for example, failure to adjust symbolization to scale changes can result in illegibility even in cases when the screen space is sufficient and the data load is moderate. Choice of symbolization can greatly support angular an retinal separation and also battle graphic fill. The three aforementioned axes are in fact inseparable and combined together they determine how effective will the digital map be in different situations. Delineating the space of possibilities and then designing the application's behaviour accordingly requires lot of imagination, effort and testing.

The axis of data change is the one that is mostly affected by the big data properties. Let us consider the data processing pipelines.

### 3.1.2 Data processing pipelines

Earlier in chapter 2 we presented the information visualisation reference model that describes the series of transformations that lead from raw data to actionable views. The actual *data transformations*, *visual mappings* and *view transformations* are unique for each project, and are likely to get reevaluated along the course of development. Applications based on dynamic data bring an additional difficulty — the transformations need to be re-executed with inflow of new data after the application is already published and used. So the transformation rules should be designed so that they can react to unprecedented changes in input data properties. If there is a requirement for real-time processing, this needs to happen ideally without any manual intervention of application maintainers. 

The reference model then becomes less of a description of the application production process, rather it describes the data flow through the working system — the application's data processing pipeline if you will. From the cartographic standpoint, we find it useful to split the pipeline into the *data space* and the *visualisation space* (fig.). The main area of concern for cartographers lies in the visualisation space, in choosing appropriate visualisation methods and graphic variables (visual mappings) and in designing user interaction modes (view transformations).

![**Fig.** Splitting the information visualisation reference model into data space and visualisation space](imgs/img-dataviz-models-spaces.png)

This all has to cope with the limitations that come from the characteristics of the viewing environment (the combination of screen space, scale and data density outlined above) and also from the cognitive predispositions that favor certain pairings of data to visualisation method and disqualify others. As we discussed at length in chapter 1, big data pose a challenge for scaling the data processing infrastructure. The issues and solutions in big data processing are well described and understood. However, the implications of big data on the design decisions in the visual space are less researched. Furthermore, what is happening in the visual space should have implications on the data space, there is a large potential in treating the processing pipeline as a whole.

For example, any aggregations in the visual end product enforced by human cognitive capabilities should get propagated back down the pipeline to make the earlier stages of the process more efficient. Simply put, there is no need to retrieve every data point individually if (a) we cannot render it (screen barrier) and (b) we cannot comprehend it (cognitive barrier). This can mean a significant improvement when performance and scalability are of concern.

Hence the cartographic decisions made for the later stages in the processing pipeline have impact on the overall performance of this pipeline. The choice of visualisation and interaction methods has impact outward to the user but also backward to the previous stages of the pipeline. So far little has been done to asses cartographic methods from the point of view of the data-processing scalability, though in the era of dynamic source data, cartographers need to expand their awareness to that direction.

Challenges of dynamic data lie both in the data space — where it is a question of efficient encoding, storing, transferring and decoding long time series of records, and in the visual space — where we are interested in depicting evolving spatio temporal relations and correlations. Again, the nature of temporal-analytic features designed for the map interface have impact on the data processing pipeline. 

Not all data processing challenges translate to cartographic challenges. Some basic data visualisation methods are fairly immune to challenges of real time data inflow (e.g. pie charts are not less readable when based on massive number of observations), but positional types of visualisation suffer from graphic density. This can be worsen by a cluttered base layer, labels, or unexpected interaction results. Let us look at some ways of addressing graphic density in dynamic maps. 

## 3.2 Reducing graphic clutter in digital maps

The majority of real-life phenomena is very complex, therefore the amount of presented information needs to be reduced to be able to analyze them by visual means. Consequently, effective visualization should make the displayed phenomenon more comprehensible to viewers without occluding too much input data. Large point datasets tend to generate hardly interpretable congestions covering significant portions of the mapped area, therefore additional processing may be needed to extract the density of point occurrence as well as spatial patterns formed by point attributes.

The process of controlled reduction of information complexity presented on a map is called generalization. Within cartographic processing, generalization can occur at the level of real objects, inside the data model but also within the cartographic product (@grunreich1985computer). The model created by @mcmaster1992generalization defines geometric conditions that may determine the need for  generalization — congestion, coalescence, conflict, complication inconsistency and imperceptibility. There are several methods of cartographic generalization, for example the aforementioned model recognizes simplification, smoothing, aggregation, amalgamation, merging, collapse, refinement, exaggeration, enhancement and displacement. For the purpose of this thesis, we are interested in large point datasets that when mapped, mostly suffer from *congestion* (too many graphic elements need to be represented in a limited space on the map) that is best battled by *aggregation*.

Aggregation is a generalization method that groups multiple individual objects and forms a new composite object (@egenhofer1992object). There are more possible options how this grouping can be created. We can define the rule how the area for aggregation is selected, how the composite object will be displayed or how the user can interact with this composites. The aggregation method has also its disadvantages and limits that has to be considered.

### 3.2.1 Variants of spatial aggregation

The variants of spatial aggregation can be differentiated by the type of the *composite shape* that in turn affects how the aggregation supports exploratory analysis, observing spatial patterns and searching correlations with other datasets. By defining the spatial extent to which all the individual objects will be aggregated we can recognize three strategies: data-driven aggregation, binning with arbitrary regular shapes and arbitrary with irregular regions defined by a polygon dataset.

- Data-driven aggregation (clustering) is based on the idea that only objects that are congested need to be aggregated. This results in a map layer that consists of two types of objects — those representing clusters of points (composite objects) and single point objects. In most point cluster implementations in mapping libraries the composite object is visually differentiated from base objects and the number of aggregated objects is usually indicated by a number.

- Spatial binning divides the space into regularly shaped grid so that every point can be assigned to a bin. Triangular, square or hexagonal tiling can be used. In addition to the shape, also the proper bin size has to be considered.

- Aggregation defined by a different dataset is essentially a transformation of point data to arbitrary polygons in order to make a choropleth map. The granularity of the aggregating dataset influences the pattern perception.

Both point clustering and binning are implemented in client mapping libraries in some form, either natively, via plug-ins or with combination of other libraries.^[For example Leaflet implements clusters via the Leaflet.MarkerCluster plugin, hexagonal binning is available in combination with D3.js or Turf.js libraries.]

From the point of big data visualisation it is important to note how is the aggregation performed — whether on the client, or via some preprocessing on the server. Recalling our distinction from the img (TODO link) aggregation performed on the client is positioned more in the visual space. It has some advantages — possibility to show original data along with the aggregates or scale dependent aggregation without reloading the data from the server. Though, with large datasets theses virtues quickly turn to burdens — with high point density, showing the original points may not aid the map reading and recalculation of aggregates with every zoom change might pose a performance toll on the client.

![**Fig.** Automatic marker clustering example in two adjacent zoom levels (reas.cz).](imgs/img-point-clusters.png)

In point clusters, the scale dependent processing allows to create just as many aggregates as it is needed by the existing congestions.

![**Fig.** Illustration of the marker clustering algorithm. One configurable parameter is the radius of the circle zone. ](imgs/img-marker-cluster-alg.png)

TODO (img) — some description how the leaflet binning algorithm works and how it could be improved to incorporate also attribute information along with density (dynamic zone perimeter — so that unnecessary clusters are not formed, scale dependent and density dependent rules, cluster symbols as pie charts (adamov plugin),  offload count information on some administrative polygons that wouldn't change with scale) sources:

https://blog.mapbox.com/clustering-millions-of-points-on-a-map-with-supercluster-272046ec5c97
https://regionbound.com/region-aware-marker-clustering-for-maps

Scale dependent binning (fig) keeps the bin shapes constant relative to the map window — with zoom changes the number of data points falling into each bin changes, so does the area covered by the individual bin, which both influences the spatial pattern. The size of the bin is the parameter that needs to be specified so that it is granular enough for the desired scale interval. If the bin size is too large, the variance in the spatial pattern is smoothed, if bins are too small several no data gaps can appear (see fig.). With the discrete number of zoom intervals the number of aggregations is limited and small which is a good situation to support caching, on the other hand continuous zoom makes the number of possible aggregations much higher.  

![**Fig.** Hexbin aggregation using Leaflet with leaflet-d3 plugin. At too widely different scales the bin size remains constant. Input points are regrouped on with zoom level change on the client.](imgs/img-hex-sizes.png)

The per-scale visualisation changes are also problematic form the cognitive point of view. Changes in spatial pattern cause a loss of orientation between zoom levels. It is not possible to easily trace how the aggregations in some zoom level match to what is displayed in higher or lower zoom levels. For example on fig (TODO above) it is hard to match the clusters between two zoom levels — their number, size, position and point count changes. Point clusters are especially taxing as they occlude the position of source points, their attribute values as well at the spatial extent of the cluster. Some implementations try to battle this by showing the spatial extent of the cluster on demand^[<https://github.com/Leaflet/Leaflet.markercluster>] or by the ability to expand the cluster to see the values of its members^[<https://github.com/adammertel/Leaflet.MarkerCluster.PlacementStrategies>]. Scale dependent hexbins also cause this problem, though they are better at communicating densities within one zoom level.

These client implementations expect point data on the input and calculate clusters or bins on the fly based on some (limited) configuration parameters to determine the visualisation. As we haves seen, there are perceptual arguments for keeping the aggregation constant across the zoom levels — in case of binning it means keeping the true spatial coverage of the bin consistent across scales — so that the bin size on the screen adjusts with the zoom level. Such approach aligns well with the demands of big data processing that favor creating the aggregation on the server (most likely in the spatial database) and pass it to the client in some vector form. This way the client doesn't need to load any data points that eventually won't be displayed. Real time data inflow can be processed on the server where all kinds of optimizations can take place (e.g. just updating the bind that actually changed, parallel processing, etc.). On the other hand, this approach can hit some storage size limits in vector tiles (we will describe soon) as increasingly more data will be included ind higher level tiles.

![**Fig.** Maintaining the same aggregation unit area across scales can lead to hitting the recommended tile size constraints in in some vector tile implementations. Note that with one step in tile hierarchy the number of contained mosaic cells (and associated attributes) is quadrupled. This may limit the zoom range for using the aggregated layer in vector tile format. Choosing the right bin size then requires weighing between the desired granularity of a mosaic, required zoom range, size constraints per tile and the attribute load per mosaic cell.
](imgs/img-hex-zoomlevels.png)

For several reasons mentioned above, we find binning superior to point clustering for visualisation of big data sets both from perceptual and technical standpoint. We also find this method more flexible and extensible from the cartographic point of view. In the following section we will look more closely at some interesting properties of hexagonal mosaics. 

### 3.2.2 Some aspects of hexagonal aggregation

In terms of big data visualisation we are interested in spatial aggregation to predefined shape that is not dependent on the character of aggregated data. Unlike other methods (clustering, interpolation), the referential geometry does not adjust to the changed data, which makes the computation performance quite scalable and predictable across higher data loads. Using arbitrary shape instead of any existing spatial unit (e.g. administrative districts) then brings flexibility in balancing the feature size and count in the mosaic.

When it comes to the shape of the referential geometry, we can chose from three types of convex shapes that completely divide space into units of same regular shape: square, hexagonal and triangular shapes. In practice, the hexagonal mosaic takes precedence, there are several aspects to why.

![**Fig.** Comparison of selected mosaic shapes to circle. Hexagons are closest to the circle, which translates in more efficient data aggregation around the bin center.](imgs/bi-shapes-dist-to-edge.png)

Considering polygons with equal area, the more similar to a circle this polygon is, the closer to the center the border points are (especially vertices — see fig). Thus any point inside a hexagon is closer to the center of any given point in an equal area square or triangle would be. This is because square and triangles have more acute angles. This makes the hexagon the best space filling mosaic, which also contains only one type of neighborhood (fig.) Centroids in the hexagonal mosaic form a triangular grid, so an individual hexagon has the same distance from all its neighbours.Hexagonal mosaic is therefore the most efficient and compact division of two dimensional plane.

![**Fig.** Types of neighbourhood in regular shape mosaics.](imgs/binning-neighbourhoods-3.png)

The vertex type of neighbourhood can cause visual ambiguity about the compactness of the regions in the grid — edge neighbors of the same value in a rectangular grid may be perceived as members of the same region or as separate entities. In that matter having no vertex neighbourhoods in a grid supports contiguous spatial patterns. Furthermore, the straight orthogonal borders of the rectangular grid form a mesh that may attract more visual attention than the values or the cells. Hexagonal cells, on the other hand, are grouped along three axes rather than two which yields more varied, less  rectilinear shapes. Single type of neighborhood is also efficient for defining nearest neighbourhood when modelling paths in a grid. As a disadvantage, unlike rectangles, hexagonal grids cannot form nested grids of the same shape. Grid hierarchy in hexagons is treated either by using partial hexagons or forming non-hexagonal higher level grids (@sahr2003geodesic). For more thorough comparison of rectangular and hexagonal grids see @birch2007rectangular.

From the cartographic point of view, there are other aspects of hexagonal grids that are interesting. If the grid is used for collecting spatial samples, it should be projected to the cartographic projection so that each cell really covers equal area. This may become a problem when the grid is used as an un-projected graphic overlaid over a large area influenced by distortions of the cartographic projection (see e.g. hexagons in the image in fig *Hexbin aggregation using Leaflet with leaflet-d3* cover gradually smaller area from south to north especially on the left image — due to the distortion of Mercator projection).

The assignment of value to the mosaic cell is another topic to consider. The composite objects communicate the information via assigned visualization method. Predominantly, the fill color is used to denote the point count or density within the region. If we are more interested in the attribute variation, we can assign color based on some statistic of member point attributes — mean, median, variance, etc. Each of these choices come with a toll (like hiding outliers) and should be tailored to the context of the visualisation or user-adjustable. Also any classification method will also have impact on the overall visualisation. Apart from the classical selection (equal interval, Jenks, quantile, logarithmic...) there are also newer promising contributions to the classification problem like *head/tail breaks*(@jiang2018complex), bayesian weighting (@correll2017surprise) or uncertainty-adjusted scales (@correll2018value). There is also a possibility to split cells to make them work similarly to pie or stacked charts^[<https://cran.r-project.org/web/packages/hextri/vignettes/hexbin-classes.html>].

^Hexbin as a placement grid to include symbol visualisations — relation to overlays —TODO img some discussion on masking (dasymetric method) — http://wiki.gis.com/wiki/index.php/Dasymetric_map

![**Fig.** Dasymetric method, not applicable to most multivariate hexbin visualisation methods](imgs/img-textures-and-buildings.png)

Then there are approaches that try to combine the density and attribute visualisation either by employing a bipolar color scale or by placing supplementary signs to the grid^[see e.g. <https://github.com/adammertel/Leaflet.RegularGridCluster>]. If the proportion of various parameters within the cell is of interest, pie charts can be neatly placed to fit the hexagonal grid. This way we can also compare densities of multiple point datasets. Trying to visualize both the density and attribute information of one dataset leaves little room for comparison of multiple datasets, but then the interaction or multiple map views can be employed. Another approach to multiparametric visualisation is in proportionally scaling the grid cells themselves^[<https://geo.rocks/post/hexbins-js-hll/>]. Also 

Another parameter to consider is the cell size in the hexagonal grid. If the bins are designed too big relative to the map scale, the pattern of phenomenon can become unrecognizable. On the other side, very small bins can lead to gaps in the grid in some implementations (see fig). Statisticians proposed several heuristics to select bin sizes for to aid sampling (@sturges1926choice, @scott1979optimal, @hyndman1995problem), though for visualisation purposes we usually prefer the finest grid that is technically possible simply because it yields most informative and aesthetically rewarding maps.

There are many other interesting aspects to hexagonal grids that are not directly related to visualisation but may have some applicability in digital maps, for example coordinate systems, coordinate ranges or reflections withing the grid (for more see https://www.redblobgames.com/grids/hexagons/) 

TODO If dataflow is too high to suport backend aggregation in real time:

— research on combining sampling and aggregation: BlinkDB — builds fast approximate queries a multi-dimensional and multi-resolution stratified samples and computes aggregates over this reduced data. BlinkDB — queries with bounded errors and bounded response times @agarwal2013blinkdb

— online aggregation — showing continuously updating aggregates and confidence intervals in response to a stream of samples — hellerstein1997online, fisher2012trust

### 3.2.3 Symbology fine tuning

Having described the aggregation for addressing congestions within point layers, we must note that there is a whole range of other issues that contribute to the visual clutter and that cannot be easily tackled by mere aggregation. For example visual conflicts of symbology between map layers is nothing uncommon in thematic cartography and there are several strategies we can employ to the rescue. Digital environment makes some things easier and complicates the others. 

Adjusting symbology properties is possibly the simplest first solution. Conflicts in the map field are often caused more by conflicting symbology rather than location. Especially for point features the symbology covers up more space than the real spatial extent of the phenomenon (which is plain x,y location), even more so if the symbol size conveys meaning, as in proportional symbol maps. Classical techniques to deal with the problem include adjusting the symbol size scale to reduce overlaps, taking care of the drawing order so that the smallest symbols appear on top the larger ones, increasing fill transparency so that the overlap situation is explicitly visible, or displacing symbols and adding leader lines pointing to the correct location. These methods have all their cons, to name just a few: symbol size adjustments rarely work equally well across the whole map area and a break in the symbol size function (e.g. scaling down the largest outliers) works against intuitive inference of relationships from the map; drawing order enforcement fails if two similarly sized symbols are very close to each other; increased transparency can create distracting visual artefacts, and displacement effectively extends the problematic cluster area plus it is a quite daunting manual task. Needles to say that additional theme layers further complicate the situation as new cross-layer conflicts and overlaps arise. Congested areas in one layer generally preclude seeing trough to what is happening in lower layers.

![**Fig.** Congestion resolution in proportional symbols — (a) reordering, (b) transparency, (c) scaling down, (d) displacement](imgs/img-conflict-res.png)


The question of classical de-cluttering techniques becomes more interesting if we turn our attention towards automating them. The automation will increasingly become necessary because with dynamic systems we do not know beforehand how the data will look like — the congestions will arise dynamically and will have to be resolved on the fly. It certainly helps if some data properties can be estimated beforehand (e.g. the atmospheric temperature in some location is unlikely to break out of its previously measured bounds by the order of magnitude). On the first glance, the majority of mentioned techniques is achievable with current tools for web mapping^[maybe with the exception of symbol displacement, chart rendering libraries like D3.js support collision resolving in bubble charts though that is not being widely used in the context of web maps]. But if we put the current implementations under close scrutiny, even playing with something as simple as symbol transpareny can yield some unexpected variants that highlight the limitations of how we currently render maps on the web (see fig).

![**Fig.** A simple exploration of handling proportional symbol overlap. (a) The rendering order of symbols is from the largest to smallest. This can prevent hidden symbols, but doesn't allow to see the underlying layers. (b) Transparency alone can permit a glimpse trough, but the overlapping parts in the symbology create a distractive visual artefact, also it can be suboptimal for heavily congested areas (the small symbol in the centre is now illegible). (c) Darker outlines ensure all symbols are visible, but also contribute to the visual clutter in the overlapping parts. (d) One might attempt to omit fills altogether but that tends to make the irritation of overlaps even bigger — the artefacts created by intersections now visually compete with the actual symbols. (e) This is not the variant of *(a)* with white fills, here the fills are blank but overlapping borders are removed, which means the fills act as opaque when clashing with symbols in the same layer (removing the problem in *(d)*) but are fully transparent towards lower layers. From now on we move beyond what is readily available in client mapping libraries. (f) Combination of *(b)* and *(e)* can be useful when having fills is important e.g. for added symbolization. Toned down outlines help to identify individual symbols. We can say there are two modes of transparency within one symbol layer: while outlines are self-opaque (not visible in the self-overlapping areas of the symbol layer) the fills are self-transparent (overlaps are shown). Both fills and outlines are transparent towards the lower layers. (g) Variation of *(f)* — some displacement between the fill and the slightly transparent outline creates an interesting 3D effect. Though this is mainly a toy effect as it is highly dependent on the clean background — for the small symbols in the center it is not visible. (h) An example of how *(e)* might work in combination with another symbol layer. (i) A reversal of *(e)* where fills are solid towards lower layers but outlines are fully transparent. The progression of the border in the underlying layer is observable through transparent outlines in the symbol layer. (j)(k)(l) Additional complexity arises from using color scale to visualize an additional data attribute. Both fill and outline can be used to carry color. In theory, there are several possibilities to ensure legibility even for two overlaying bi-parametric symbol layers. The assignment of fill and the outline width determine which layer will seem dominant. In interactive environments the user could change symbolization to visually reorder layers while maintaining the overall picture.](imgs/img-circle-overlays-2.png)

The images in fig were created in a desktop vector graphic programme (Adobe Illustrator) by manually playing with shapes not linked to any data or coordinate system. Adobe Illustrator features like *flatten transparency* were used to combine multiple layers to create the impression of dual transparency and other effects in pictures (f)—(l) of fig. As such, the process is not translatable to interactive maps based on dynamic data. To our knowing, graphic effects (e)—(l) would not be achievable neither in current web nor desktop mapping platforms. (TODO not true — in svg it is posible — check stack overflow post)

It seems that current cartographers have to split their energy between three types of tools that are each good for some tasks but fairly deficient in other areas. Desktop graphic software like Adobe Illustrator or Inkscape allows for graphic idea profiling and advanced vector manipulation, desktop GIS programs like QGis or ArcGis provide a whole arsenal of spatial data manipulation tools, and web mapping solutions like Leaflet or Mapbox are great for interactive data presentation. These tools are not very interoperable and the synthesis is nowhere near^[TODO check ArcGis + ArcOnline alebo jak sa to vola]. 

Often the visually problematic areas in the thematic layer do not span through the entire map field. Rather there are some clusters of concentrated symbols with high self-overlap and the rest of the field is distinguishable without treatment. Static maps deal with such clusters by insetting another map field in larger scale focused on the problematic area (common for example in socio-economic maps of Poland where the densely inhabited region of Silesia almost always exhibits symbol clutter). Although technically nothing prevents adding insets to dynamic web maps, it is not often seen in practice. Maters would be worse in real time visualisation of dynamic data as the position problematic areas is not known beforehand. Here the automatic cluster detection would make sense not only for inserting inset maps as needed but also for tracking the spatial and temporal distribution of clusters.

For dynamic (web) mapping we are not confined by a fixed scale, therefore we can zoom in at the areas of interest. In such interactive environment leaving congested clusters without treatment might not be such a big problem even though they are unreadable at the general resolution scale — the congestions suggest that there is something interesting going on in the area and invite users to place their focus there. However, as we zoom in we loose sight of the overall pattern, which is another possible opportunity for using inset map, this time for statically displaying the full area of interest as well as dynamically showing the sub-area that is currently displayed in the main view. As we'll see further, modern front-end development frameworks (like React, Angular or Vue) support modularized reusable components that can share state, which provides excellent tools for implementing multiple co-ordinated map views.

Zooming and panning are interaction modes that for many users basically define what interactive map is. But it is peculiar that beyond these modes we don't see much more dynamic interaction options in web maps. WebGL based client libraries added the change of orientation and tilt around the z axis but when it comes to interacting with the thematic layer, we are usually left with some selection, filtering and on-hover pop-up bubbles that act as on-demand labels for selected features. Rarely the user is allowed to tamper with the actual symbolization. The linked view interfaces like GeoDa or more recently dashboards like Grafana rely on amassing several visualisation types for displaying various aspects of the same dataset, but the actual cartography in these interfaces is very simple (usually a choropleth). But for interacting with massive dynamically rendered datasets there must be more options for the user to moderate the cognitive load, including change of symbolization, visual weight and order of thematic layers.

To minimize the risk of conflict between the base map and the thematic layer, web map developers use toned down base maps often stripped down to the bare visual minimum (e.g. Carto Positron is an example of popular base tile layer). But base map is not only a background canvas for thematic layer, in reality the spatial phenomena are in part a product of other spatial relations that constitute the overall environment and we feel there is an unexplored potential to portray this relationship in the interplay of figure and ground in the thematic maps (TODO see further in chapter).

## 3.3 Rendering Spatial Data  

How is the cartographic design influenced by the rendering technology employed? What technology (or combination of technologies) is suitable for cartographic visualization of dynamic data sets on the web? In this section we will describe the tree main technologies the current web development toolbox offers for showing interactive graphic information. We will mostly focus on WebGL with brief description of how it governs the GPU rendering pipeline. Then we will describe how are these technologies baked into web mapping libraries, in particular, we will look closer at the vector tiles specification.

### 3.3.1 SVG, Canvas, WebGL

**SVG** is a well known and much loved format for displaying two dimensional vector graphics on the web. Since the start of development in 1999 it has become an often used alternative to bitmaps with wide browser support. Unlike the remaining two technologies, SVG is a vector format, which implies scalability^[the acronym stands for Scalable Vector Graphics after all], constant graphic quality across devices, and smaller storage size. The straightforward XML syntax allows for easy integration with JavaScript and CSS. SVG files can be easily autogenerated, searched, compressed or indexed by web crawlers. SVG is an example of the "retained mode" graphics model, were graphic library constructs a scene from primitives defined by a declarative API and keeps the model of the scene in memory. Elements of an SVG graphic exist in the site's DOM which allows for attaching JavaScript event handlers to sub components of a graphic. This feature makes SVG a good choice for implementing interactive graphics — it powers popular web charting libraries like D3.js. Also, it is a default technology for data overlays in web mapping library Leaflet.

On the flip side, SVG graphics being a part of the DOM quickly becomes a bottleneck when working with large dynamic data sets or when animation is required. @eberhardt2020rendering reports that SVG charts can typically handle around 1,000 datapoints, @baur2015weighing mentions a maximum limit of 10,000 static elements and 1,000 animated elements^[For a simple benchmarking site to do your own experiments (with caution) visit <http://dominikus.github.io/stars/>].

There are several ways one can animate SVG graphics: CSS, a handful of JavaScript libraries or the native SMIL animation specification^[See <https://css-tricks.com/weighing-svg-animation-techniques-benchmarks/> for performance comparison]. However, SVG performance decreases quickly with growing number of items to display, which disqualifies it for visualizing live data streams when we don't have know the load beforehand.

**The Canvas API** provides a means for drawing graphics via JavaScript and the HTML5 *canvas* element. Among other things, it can be used for animation, game graphics, data visualization, photo manipulation, and real-time video processing^[https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API]. The canvas element exposes a bitmap surface where you can programatically draw rasterized images. It is an example of the "immediate mode" graphics model, were the scene is rendered directly based on procedural API and no object representation of graphics is stored in memory^[https://en.wikipedia.org/wiki/Immediate_mode_(computer_graphics)]. This makes it harder to debug (as for the browser the canvas is just an image) but for visualising dynamic data streams it shields us from the risk of bloating the DOM. Canvas supports only resolution-dependent (raster) visualisation which might be an issue when displaying type or if scalability is a concern.

Compared to SVG, Canvas allows for more low-level control of the rendering process, the API is powerful but may be demanding on developer when it comes to defining objects and user interaction with rendered elements.^[ Canvas is an engine for drawing pixels, natively there are no objects to attach event handlers to. For such capabilities it is possible to choose form the broad range of wrapper libraries that can improve the developer experience, see the list at https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API#libraries] The animation performance for large number of objects is definitely a virtue compared to SVG, you can expect to render around 10,000 datapoints whilst maintaining smooth 60fps interactions (@eberhardt2020rendering). In terms of mapping libraries, the canvas is a supported alternative option for rendering data overlays for example in Leaflet. 

**WebGL** (Web Graphics Library) is a JavaScript API for rendering high-performance interactive 3D and 2D graphics within any compatible web browser without the use of plug-ins^[https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API]. WebGl is younger than SVG and Canvas, though it's browser support has already grown broad.

WebGL API is based on OpenGL ES. Originally developed in the late 1980s, OpenGL has been an industry-standard API for programming 3D graphics. OpenGL ES (for “embedded systems”) is the version of OpenGL developed to run on small devices such as set-top TVs and smartphones (paris2012webgl). OpenGL provides a special C-like language — GLSL (OpenGL Shading Language) to write programs that are directly executed by the GPU (Graphical Processing Unit), a specialised processor which is specifically designed for high-performance graphics.

Like the Canvas API described above, WebGL uses the HTML5 canvas element as the rendering output, and also belongs to the immediate mode style of graphic APIs. Unlike SVG and Canvas, WebGL employs hardware acceleration on the client machine, which allows for high rendering speed that has been mainly used for powering online gaming, but is also more than suitable for real time visualisation of large datasets. 

On the other hand, the complexity of the developer experience is seen as the main obstacle (drawing a simple coloured triangle in plane GLSL takes around 40 lines of code). The WebGL JavaScript API does not provide any form of abstraction over the underlying GLSL language (@eberhardt2020rendering). There are wrapper JavaScript libraries that provide some object oriented features (three.js, pixi.js^[Even though these libraries are primarily intended for game development, they are not without potential fro cartographic visualisation. Three.js provides a toolbox for rendering 3D scenes, pixi.js is focused on creating 2D games by rendering pre-created raster images (sprites) but it has also been successfully used for cartographic visualisation in @escoffier2017how]), designed predominantly for developing games. But from the cartographic standpoint the greatest improvements lie in the onset of the vector tile model and related WebGL-based mapping libraries headed by Mapbox-gl. But before diving to these advances we need to briefly describe how the GPU renders graphics, and how GLSL allows us to control that process.   

### 3.3.2 GLSL and the GPU rendering pipeline

As we outlined above, WebGL provides a JavaScript API that allows to create and manipulate GLSL constructs (called shaders) that access pixels and vertices the graphics card works with (see Fig). In the simplest terms, the graphics card or GPU decides how to use the pixels on the screen to create the image. GPU is a piece of hardware designed specifically for performing the complex mathematical and geometric calculations that are necessary for graphics rendering. These calculations are done in a massively parallel and hardware accelerated manner (math operations are resolved directly by the microchips instead of by software), which makes the computations many orders of magnitude faster than an equivalent computations performed on the CPU. The GPU understands vertices, textures, and little else; it has no concept of material, light, or transform. The translation between those high-level inputs and what the GPU puts on the screen is done by the shader, and the shader is created by the developer (@parisi2012webgl).

![**Fig.** An attempt to illustrate the basic WebGL concepts. A triangle is the base graphic primitive from which the more complex graphics are built. The canvas provides a drawing context where the viewport is initialized. The viewport delimits the operating space and coordinate system. Vertices A,B,C hold coordinates and color (besides other data), the triangle fill is interpolated from vertices. The close-up circle shows the fragments (pixels) that make up the overall image. Both vertices and fragments can be directly manipulated by GLSL.](imgs/img-webgl-elements2.png)

Shaders are pieces of GLSL code that define how vertices, transformations, materials, lights, and the camera interact with one another to create an image. There are two kinds of shaders:

* The *vertex shader* provides the code for converting object coordinates to the 2D rendering space. It will run once for every coordinate that is passed to WebGL. It can be used to transform, scale, or otherwise mutate a shape.

* The *fragment shader* provides the code for determining the color of each drawn pixel. It is run separately for each pixel (possibly in multiple passes) to generate the final color value based on input data such as color, texture, lighting, and material values.

To understand shaders a bit clearer, let us describe what an application needs to do to render WebGL graphics as well as what are the steps the GPU performs to make it possible. The factual base for this section is owed to @parisi2012webgl, @agafonkin2017how, @vivo2015book, @ademovic20163d, and @oconnor2017gpu.

In order to render WebGL into a page, an application must first obtain a drawing context for the canvas and then initialize the viewport in it. To WebGL, viewport is conceptually a 3D space, spanning between -1 and 1 on the x, y, and z axis (z axis is used even for 2D graphics to perform depth checks). Within this space, drawing is done with use of primitives — types of geometric objects (mostly triangles but also points and lines). Primitives use arrays of data, called buffers, which define the positions of the vertices. The application creates one or more vertex buffers and passes them to the GPU RAM. Next, the (simplified) graphic pipeline goes as follows (see also Fig):

![**Fig.** A simplified diagram of the GPU rendering pipeline, description in the text.](imgs/img-graphic-pipeline.png)

* *Input Assembly.* The GPU reads the vertex buffers from memory (the general purpose RAM) and generates the vertex buffer objects (VBOs) within the GPU memory. VBOs in general store an array of coordinates for vertex positions (sometimes also normal positions ^[Normal refers to a vector perpendicular to the surface that informs about the orientation of the surface facet. Storing normal vectors for vertices allows to calculate the lightning of the scene.]). GPU determines how the vertices are connected to form triangles, and feeds the rest of the pipeline.

* *Vertex Shading.* The vertex shader gets executed once for every vertex. Its main purpose is to transform the vertex coordinates from the object space to the viewport. This is done by applying matrix operation on each vertex taking into account the current camera and viewport settings to calculate where it will end up on the screen. There are three types of variables that go in and out of a vertex shader: *attribute* — variables that hold specific properties of a vertex like position or normal. These variables are subject to matrix transformations; *uniform* — variables that are the same for every vertex within the same rendering call (values that describe the whole object, pointers to textures); *varying* — variables will later get passed to the fragment shaders, like color or transparency. These variables describe describe surfaces between vertices.^[There are many optional operations like tessellation or clipping that can be done to vertices before reasterization, we omit them for brevity.].

* *Rasterization*. Once the vertex shader has been run on each vertex of a triangle and the GPU knows where it will appear on screen, the triangle is rasterized – converted into a collection of individual fragments^[Fragment is a term used for "pixel in the making" as not all fragments get actually rendered as pixels on the screen. But the terms fragment and pixel are often used interchangeably]. Per-vertex values (coordinates, vertex color, normal, etc.) are interpolated across the triangle’s fragments. After reasterization and interpolation an early depth test is performed, which is basically a comparison of z coordinates of fragments form overlapping objects. Fragments that would be eventually occluded are removed to save time.

* *Fragment shading.* Each rasterized fragment is then run through the fragment shader. This gives the fragment a color by combining material properties, textures, lights, depth and other parameters in the programmed way to get a particular look. Since there are many fragments and each one needs to be shaded at least once, the fragment shader is usually where the GPU spends a lot of its time. Input values from the rasterization steps processed to a single output value per each fragment — an RGBA array that defines the fragment color and opacity.

* *Rendering target Output*. Finally the fragment is written to the render target – which is usually a frame buffer (memory object storing values pixels in the canvas). Before that, several validation tests are performed, depth check discards occluded fragments and transparent fragments are blended.

The fact that shaders are executed on the GPU means that developers cannot rely on console output for testing and debugging as they are used to with programs run on the CPU. Instead they need to find a way to express your test or debugging condition in terms of color that is the only output of shader programs. Moreover, shaders are run for every vertex of fragment in parallel. Running in parallel means that the execution thread "blind" to what other threads are doing. There is no way to check the results of execution in one thread form the other parallel thread or pass data between threads. Also there is no persitent memory that would store of the previous computation results for fragments, so with changes the whole scene is rendered anew.  

Besides the abstraction required to code a general function that changes the result pixel by pixel depending on its position, the blind and memoryless constraints make shaders not very popular among beginning programmers (@vivo2015book).


TODO — how to import bitmaps (spritesheet) and svg to webgl canvas? — how to do it in MapboxGL? — library takes care of it — in pipeline bitmaps can be drawn during vertex shading.

— also a sidenote on how to use GPU for other claculations (like python for big data — there is some library, python coda)

  extra: GPU utilizaiton in computation:
  https://www.geeksforgeeks.org/running-python-script-on-gpu/ numba (only NVIDIA GPUs supported)
  - computation heavy solutions https://pytorch.org/docs/stable/notes/cuda.html
  - https://www.tensorflow.org/guide/gpu


??
Each library does things a bit differently, but they share the goal of implementing high-level, developer-friendly features on top of raw WebGL. The fact that toolkits like Three.js exist at all is due, in no small part, to how powerful web browsers’ JavaScript virtual machines (VMs) have become in recent years. A few years back, VM performance would have made implementing such libraries prohibitive, and perhaps even made WebGL a nonstarter for practical use. Thankfully, today’s VMs scream, and, with libraries like Three.js, WebGL has been made accessible to the millions of web developers on the planet. ^VM = Javascript engine (https://en.wikipedia.org/wiki/JavaScript_engine)

also reliance on implementations — eg mapbox.gl didn't choose to implement blending modes

### 3.3.3 Tour of Vector Tiles

How is WebGL useful for cartographic visualisation? While it is certainly possible to develop spatial interfaces directly using WebGL scripting, many of the advances in client rendering has been already utilized in a format known as *vector tiles*.

Vector tiles build on some concepts inherent to raster tiles that were until recently the main tool for serving spatial information online. In many other aspects the two technologies are far apart. Let us now briefly describe the raster tiles to be able to compare and contrast later on.

*Raster tiles*

Traditionally, the large majority web maps were based on raster tiles technology and it is still used very often. The idea of raster tiles is basically to divide the world map 
into manageable sections (tiles) that can be easily served over the network. In the browser, these tiles are assembled to create a seamless impression of the map for the specified area.    

Tiles are squared images (usually PNGs in 256×256 pixel dimensions), each with a fixed geographical area and scale. Each tile is assigned a quadratic key that determines its position in the scale hierarchy, tile coordinates and the zoom level.^[Tile coordinates are based on a hierarchical square net over the Mercator projection. As such, coordinates differ per zoom level: x goes from 0 (left edge 180 °W) to 2<sup>zoom</sup> − 1 (right edge is 180 °E); y goes from 0 (top edge is 85.0511 °N) to 2<sup>zoom</sup> − 1 (bottom edge is 85.0511 °S). The upper and lower bounds are cut off so that the whole world is encoded as one square. To explore these parameters see <https://labs.mapbox.com/what-the-tile/>]. Tiles are stored in a file structure or a database, so that the server can select and serve the needed files upon request.

To consume raster tiles, the client mapping library (say Leaflet.js), based on initial parameters ( viewport size, initial coordinates of the central point and the zoom level, requests the tiles that are needed from the tile server. User interactions like pan and zoom trigger requests for additional tiles. The tiling keeps the amount of transferred data at bounded and predictable levels. On the flip side, the tiles being plain raster images have no concept of what data they display — feature rich tiles have the same storage size as the "empty" tiles (e.g. single-color ocean areas). Furthermore, tiles for the feature-empty areas need to be generated for all zoom levels the map supports. 

There are several tools generate raster tiles form any source spatial data (Mapnik is the most used open source engine to do that). Styling the data and rendering the tiles is the first step in the process, which is not very flexible when there is a need to recreate tiles based on changing data (tile caching servers aim to ease the need for tile recreation TODO true?). Client is merely a consumer of the tiles that are not easily adjustable to client-specific needs, for example translation of labels based on browser locale is not possible unless there is a parallel language-specific version pre-rendered on the server.

From the cartographic point of view, the raster tile technology brings several specifics. Fixed tile size means discrete zoom steps we discussed earlier. The cartographic decisions regarding the map appearance are done at the side of the tile provider. For client-based thematic mapping, the tiles are mainly used as a base map from an external source that is beyond cartographer's control^[That is if we exclude hacking with CSS and Canvas filters like in <http://humangeo.github.io/leaflet-tilefilter/demo.html>]. Mapping libraries natively allow for SVG and Canvas overlays for custom data, the mapmaker's task is to select a base map from wide array of providers^[For continuously updated overview see <https://leaflet-extras.github.io/leaflet-providers/preview/>] that fits the theme with the style and information content and doesn't clash too much with the overlaid data.

We will now focus on the advantages of vector tiles, but that is not to say that raster tiles are no longer used or useful. Even though there are no utilization statistics available, with large map providers like Google Maps moving to vector tiles (in larger scales) we can assume that vector tiles are in majority when it comes to page views. That being said, raster tile sources are still demanded and used in many thematic map projects, not to mention legacy implementations. Also, some data sources warrant raster encoding, e.g. aerial photography or scans of heritage maps.

*Vector tiles*

As the name suggests, vector tiles are comprised of vector data instead of the rendered raster image. What remains unchanged is encoding into tile coordinates and zoom levels. Vector tiles build on a data exchange format called *protocol buffer* (or protobuff). Protobuff is a binary format that enforces schema on encoded data, which makes it a much more efficient in storing structured data compared to human-readable formats like JSON, XML or CSV.

The tile scheme, the addressing system, extents and scale levels for common implementations of vector tiles are the same as for raster tiles described above. The geometries are encoded within the extent of individual tiles^[For details see <https://docs.mapbox.com/vector-tiles/specification/#encoding-geometry>], the tile itself contains no information about the geographic bounds and projection. The individual tiles are then stored as protobuffs in a hierarchical folder structure for serving based on zoom levels^[Mapbox implementation supports a wrapper format .mbtiles that is essentially an sqlite database file.].

(TODO — note about features split between the tiles? — reconstructing geometry)

Unlike raster tiles, vector tile also encodes feature attributes. Internally, the tile is structured so that it contains one or more layers comprised of features with defined geometry type, geometry and attributes.^[To dive deeper into vector tile schema definition and the internal structure see <https://github.com/mapbox/vector-tile-spec/tree/master/2.1#4-internal-structure>] The protobuff format supports concatenation, which means we can easily add or combine layers from various tile sources. 

In contrast to raster tiles, rendering happens at the very end of the data exchange process between the server and the client. The client library is responsible requesting the tiles form the server, applying the style information and passing the instructions to the rendering pipeline on the client (geometry and styling information from tiles is fed to GPU in form of vertex buffers — see FIG, one draw per tile per layer.).
https://github.com/mapbox/mapbox-gl-js/issues/6791

There are several types of software that is used to manage various aspects of vector tiles. We can distinguish the following main groups that each have different roles:^[There are several concurrent implementations for each of theses groups, for an updated list see <https://github.com/mapbox/awesome-vector-tiles>] 

* *Parsers and generators*: libraries that read and encode vector tiles. They vary by the implementation language, supported input formats, type of interface and so on. The main utility is to generate vector tiles from more traditional data sources like SHP or GeoJSON or to easily preview existing vector tiles
* *Clients*: tools that render vector tiles in the context of the device. Most widely used web-based client is probably Mapbox GL JS (though recent open source fork MapLibre GL may change this). Implementations vary by the language, offered developer tools, or by rendering contexts — those include web-based (WebGL), native to mobile and other devices (OpenGL), even terminal consoles (ASCII)
* *Style editors*: tools for creating, reviewing and testing styles for vector tiles. Styles can be defined in vector tiles that are then served as a base maps or it can be set by the client library when rendering (which assumes the style schema of the server and client match) TODO — mention somewhere that styles are a big selling points for servicesa like mapbox or cart — years of fine tuning — big win for cartography (proof of functional, estethic and economic value) 
* *Servers*: support rendering and serving vector tiles as map API. Some server solutions provide also tile generation and styling functionalities in one application.

The properties of vector tiles bring several advantages, caveats and implications for cartographic visualisation of big data.

Using protobuff encoding, the tile size is highly compressed. The size stems from the actual data content on the tile, so the feature-poor tiles are not such a burden. In most cases, vector tiles are fairly small, which turns into small storage footprint and network bandwidth consumption, enabling global high resolution maps, fast data delivery, fast map loading, and efficient caching^[For benchmarking and comparison to raster tiles see <https://www.giscloud.com/blog/realtime-map-tile-rendering-benchmark-rasters-vs-vectors/>]. Vector tiles are also faster to generate and as they are rendered only when requested by a client, they are more suited to keeping the data on the server continuously updated with data changes.

Being a vector file format, tiles can be styled upon request. Separating rendering from the data storage allows for creating many variant map styles based on the same global data source without significant storage footprint. Client side rendering also supports easier style customizations, e.g. font changes, label translations, showing and hiding elements, changing the layer ordering and combining data sources. Vector tiles style specification is powerful for example when it comes to scale specific styling — e.g. applying various scaled-based functions on sign properties like size and color.

Vector tiles can contain attribute data which elevates the format beyond mere display techonology of the raster tiles. With raw data included, several types of interactions are possible — from basic pop-up info over points of interest towards advanced querying and filtering for in-browser analysis. Apart from changing feature visibility and layer order there is data driven styling that opens possibilities for thematic cartography. Once tiles are loaded, any user-induced filtering and style changes is executed on client without additional requests to the server (on-the-fly), which may support offline functionality. 

For cartographer, the format and the capabilities of the client libraries opens several possibilities:
- Vector tiles are good for both basemaps and also for thematic interactive overlays, also allows for better entanglement of the layers as the custom data layer can be put anywhere in the layer hierarchy, not only on the top.
- Application of textures — clever clipping per feature (done in GPU) TODO example screenshot from elwar.
- The client library supports additional actions like camera tilt or orientation change that were not possible with raster tiles. 
- Also the smooth continuous zoom is supported as the vector tiles within one zoom level are not fixed in size by raster resolution, so smooth impression can be achieved by scaling tiles between zoom steps. This fixes the problem of initial area extent described in section — TODO
- the 3D features can be added, and the 3D interaction is enabled out of the box. So the application can jump from 2D to 3D view without additional tools
- data and scale driven styling allow form fine-grained control over how both the basemap and the thematic layer is displayed across scales
- data within source — good for styling, tooltips, other users (machine learning?)
- dynamic ordering of layers
- dynamic generalization (well, simplification)

![**Fig.** An example on application of bitmaps in mapbox. Bitmap png swatches are applied to polygons based on data driven rulse. Textures are passed to GPU by the library, those are clipped to the polygon bounds in the vertex shading phase — ture? (elwar.uni.lu).](imgs/img-hatches.png) TODO — also show examples of swatches

Other advantages — various rendering contexts, depends on client implementation. In this thesis we will focus on web-based but there is a potential for much greater coverage — cars, IoT devices, or lower fidelity periferals (eg ascii renedering for ebook readers). Most of the cartographic implication we will discuss later are universal across devices.

*issues*

https://www.youtube.com/watch?v=savQWL0kq_g

Various schema flavors and software implementations that need to act in accordance enlarges the risk of vendor lock-in.

Schema consists of layer names, attribute names and values, feature selection, other cartographic choices
- protobuff schema
- not style definition
- e.g.:
https://openmaptiles.org/schema/
- can I combine 2 schemas in one view?

Not interchangable tile schemas: Thunderforest, Mapbox Streets, OpenMapTiles, Mapzen Tilezen
- different priorities, different classification of roads that appear at various zoomlevels
- not one schema for everyting
- these are for displaying a map, not for analysis
- need to port style to a different schema
- no mature standardized tools

Clients and styling: 
- Mapnik (raster only, styles in mapnik xml or CartoCSS)
- Tangram (js, C++ versions, styles in tangram scene files)
- Openlayers, Leaflest (in browser only, OpenLayers supports mapboxgl format)
- MapboxGL (JS, C++ versions, syles in Mapbox GL JSON)


- tiling precludes some types of analysis (where you need to look at adjacent tiles)
- in context of BD maybe not such a problem as these are mainly point clouds.

The map is rendering on the client’s side and requires a bit more powerful hardware. Data are generalized and therefore not suitable for direct edits

Some size limitations on vector tiles — TODO find recommendations. The way the format deals with it (during encoding) may not be optimal — dropping vertices in abrupt simplification, dropping data points. 

Filtering (several syntax types) - also some performance limits. Tile by tile change (known too well from network lags in raster data sources — missing and delayed tiles) can return with vector tiles with high data load on small machines as vertex buffers are supplied to the GPU tile by tile.

- how to connect to dynamic data source? Join with db? (just points — dynamic data overlay straight genreation of tiles within pipeline , )
- identification of items spannig through multiple tiles (tippecanoe generates the id that mapbox-gl reconnects — coordonation of toolchains is required)

*standardization is on the way*
<http://docs.opengeospatial.org/per/>
OGC Vector Tiles Pilot 2 (VTP2)
    OGC Vector Tiles Pilot 2: Summary Engineering Report (19-088r2) PDF
    OGC Vector Tiles Pilot 2: Tile Set Metadata Engineering Report (19-082r1) PDF
    OGC Vector Tiles Pilot 2: Vector Tiles Filtering Language Engineering Report (19-084) PDF

Thesis on vecctor tiles:
<https://prism.ucalgary.ca/bitstream/handle/11023/2666/ucalgary_2015_shang_xiaohong.pdf;jsessionid=2B918A8E8B58693A9CF79058F07241AC?sequence=3>


TODO — vector tiles + big data (pros/cons now + future extensions)

VT don't support gis-style database joins post creation (maybe qgis supports it — TODO find out), all data processing operations should happen before tile generation (in the db or in gis sw).



## 3.4 Figures and grounds

Finally we will attempt to summarize the design possibilities the combination of vector tiles and direct WedGL offers mean for cartographic visualisation of big data.

Vector tiles bring new possibilities for combining data layers in digital maps. To see how to best utilize this, let us take an aside to think about distinctions between topographic and thematic cartography.

I explore how to create thematic maps from Big data.

"Topographic map is a set of entangled thematic maps"
"Thematic map is a topographic map with one layer disproportionally enhanced"


The starting point for a **topographic map** is a given territory, that is to be interpreted on a blank page/screen. In topographic maps we create a model of the surface, and we want to include all environmental characteristics that we believe to be relevant to the task — and the task is usually to help with orientation in the given territory. The real alchemy of the topographic practice is to depict all layers without clutter — the layers must be equally separable/retrievable. This is because we do not know beforehand which features or combination of features will become useful for orientation. Map creates a *taxonomic space* of what is to be known about the territory (let us set aside the power-related difficulties of what is being omitted and who does the selection on who's benefit) and puts these species to relationships. This synthetic aspect is for @wood2010rethinking one of the most important features of the map — the sign systems (layers) are in constant dialog, allowing us to extract meaning from those relations that would be hardly obtainable without using the map. Here, "the whole is greater than the sum of its parts.” — Aristotle.

In **thematic maps**, the starting point is is a phenomenon. We want to learn something about it by studying its spatial distribution, by searching spatial correlations with other features, and also by mapping how the internal structure of the phenomenon changes across space.

In both cases we overlay comprehensive sign systems (rivers, settlements, mountains...), though what differs is their relative visual prominence: we can say a thematic map is a topographic map that gives asymetric prominence to one layer of interest (though often richly differentiated in its cartographic presentation) and pushing the remaining layers to the role of toned down "base" merely aimed to provide geographical context for the reading of the topic. Sometimes things go as far as the base is reduced to the minimum (often administrative boundaries) or omitted alltogether (in such case the topographic context stems from the distribution of the signs in thematic layer — from what @wood2010rethinking calls a *tectonc* code of the map).

Let us make an aside about the limitations of the concept of layers (successfully used in graphic programs such as Illustrator or Photoshop) in cartography. Example of railroads and highways — when working with raw spatial data in a map making system, say QGIS, we can easily switch the order of layers, however on all intersections the same layer will be the one overlaying/crossing the other — we can switch the order but we can not treat the intersections differently per instance. So its ether *all* railroads passing over *all* highways or the other way around, but of course in reality both situations are likely. Of course, cartography has its ways to deal with this — to entangle (mostly line) layers with each other (some more manual than others — cituj prezentaciu švajčiarov s ich generovanými národnými mapami), but this points us to the fact that layers of the real world are not cleanly separable — our experience of reality creeps in to remind us we are playing with a model.

So the layers in a topographic map are not merely overlayed, they are entangled, integrated with each other. We can turn the definition around and say the topographic map is woven from a collection of collection of thematic maps.

In Wood's words if the *sign systems are talking to each other* and *each sign system is potentially figure and every sign system is potentially a ground*. The thematic cartography is reducing the dialog, toning down the base layers in favor of the dominant voice of the main layer.

In thematic maps, the thematic layer *is* overlayed on the base, no entangling is done. For years before we could rather say the topic is overprinted. The alchemy of the thematic cartography is to make the topic in its complexity stand out, and paradoxically this is done by manipulating the base. For example, if we look at subtle palette of 6 colour tones used in Czech ZM maps, it's clear that future thematic overlays were considered (and done, as overprints or web map overlays). There is a clear and solid border between topic and base, partly due to the technical limitations but also given by understanding base as something solid and rather fixed and the topic as abstract, fluid and driven by data with high frequency of change.

The border between the topic and the base has transcended also to modern web cartography. Here, the standard around year 2010 is a base given by some pluggable tile service (predominantly stored remotely and not open to style changes) overlayed by some SVG vector shapes. WMS services are often designed as topographic maps, though there are examples of toned down style fit for a base map.

The interplay between the topographic base and the thematic overlay is at scrutiny on the following lines. The question is whether there is any value in breaking this border, now the technology that could facilitate this has arrived.

This means trasferring from the SVG overlay to canvas or webGL. Canvas allows for filtering of the overlayed matter — so it is possible to "manipulate" the coloring of the external base maps — it should be possible to extend those filters to make them more selective. Recently emerged base maps based solely on WebGL provide options for figure and ground.

Strategies:
- simple: pushing theme to the base (underlay)
- harder: data driven styling based on overlay — overlay algebra that is done without touching the source data (like overprint, of multiexposure shots in photography but really beyond these analogies). It is solely based on web-gl filtering

— masking

## 3.5 Aside on UX, interaction and beyond
————————————————-

Controls are inevitable, need to be legible same as the map view. Moreover, users need to be able to intuitively grasp how they work (TODO norman — affordances, and signifiesrs.)

Dan Norman — affordances and signifiers being confused terms in regular use (norman2013design)
affordance (realtionship between objects and users, what is possible)
signifiers (tells users about what is possible — it is important to design them)

Dan Norman — complexity (norman2016living)
Living with complexity: Complexity is inevitable (asking for simplicity is in fact asking for understandability, simple looking things can actually be quite confusing)

They both contribute and are affected by the graphic fill. Contribute, as they need to share the same screen space with the map view (side note — specialized hardware controls exist, but usable only regular access for stable interfaces — TODO, there are devices used to control graphic programsi (like photoshop) with knobs and sliders, custom interfaces of online maps are out of scope, but maybe some day to day professionals interacting with maps could use them.) and sometimes has to compete for it, affected because the variability of data translates to variability of symbolizations which then complicates the legend and controls.

How many affordances are viable? (Map controls coupled with legend need to signify both the meaning of the map symbol as well as the affordance — in practice the signification of affordance is often hidden, and we often rely on users to find it out — e.g. by cursor change...)

Looking at UI controls with a prism of design constraints described in chapter (TODO), all three axes affect the UX as well, thogh the screen space is naturally the most significant factor (fig).

![**Fig.** Screen space is the constraint with the greatest influence on the design of map controls.](imgs/img-design_constraints-ux.png)

- cartographic concepts applicable in UI design and vice versa (TODO some reading on UX)
— visual weight, negative space, generalization of ui components

- tighter coupling of intra and extracomposition
— legend
— do some design and usability reading (don't make me think, check some books on product design...) <https://www.fastcompany.com/1292961/30-most-important-books-product-designers>
— user personas, user stories...

- Iteraction strategies
Andrejenko's view of tasks

- responsivity challenges
https://codeburst.io/the-challenges-of-responsive-web-design-9d64971921fb

- some datavis responsivness talk, interaction challenges etc:
http://dominikus.github.io/jsconfeu_2014/#/29
- best practices and examples collection
http://mobilev.is/
- apple's human interface guidelines
https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/



- TODO: image 2 kinds of weather roses - wind diagrams (more and less complex), data from slovenská lavínová služba.

- animation and movement: how does it support usability (blog creating usability )
- strategies for density reduction in controls
- combining functions (legend and histogram and brushing control) - (využiť návrh na baptisteries, legendy aj timeline z toho proposalu )

**Visual storytelling vs dashboards (TODO — I'm not doing it, should be removed or moved to previous chapter?)**

Data journalism helps to interpret the map and poses the argument leaving a passive role for the viewer, consequently making it harder for her to restate the qustion. Dataviz dashboards tend to give a stack of options but no clues on where to start, which is like leaving a person in the cockpit to figure out how to fly herself. In both cases there is a silence about a possibility of no discernable pattern.

What is the audience - some notes from the field:
<https://medium.com/@tophtucker/doing-enterprise-financial-data-visualization-after-data-journalism-3c68861b7f4c>

more

https://www.microsoft.com/en-us/research/project/user-experience-with-big-data/#!publications

scrollytelling

https://medium.com/nightingale/from-storytelling-to-scrollytelling-a-short-introduction-and-beyond-fbda32066964
https://webflow.com/blog/scrollytelling-guide?fbclid=IwAR3yRP5GAYtrHgNcN_njPk-5HwW3_ppH6sloQpna5CpxEmOm5qjQCoXBeoY

arcgis storymaps

Naration is quite underused 
Narration as a workaround for cartographic rules – legibility, etc. Static map must adhere to the cartographic rules. In interactive maps (both presentational and exploratory) the argument is as follows: application doesn't need to be cartographically legit in all of it's states provided that it shows a path from the messy state to the cartographically treated state.

TODO: 
- discussion of presentational vs exploratory cartography – or better on building interfaces to support one of them. – exploratory interfaces seen loftier, most commercial assignments are presentational – in fact the threshold between presentational and exploratory capabilities is something that needs to be considered. 

Amount of hand-holding?
(move to one of the questions)
Here we need probably some inspiration from other fields. Aim is moving somewhere inbetween the presentation and exploratory interfaces, possibly to get the best of the both. Exploratory interfaces could do some hinting, notifying which findings make sense and which not. Designers of exploratory interfaces could give greater thought to what questions users might want to ask about the portrayed data. (But careful on generalization with user personas – see below on weaponization of design).

– este k engagement a interface – explorable explanations (orig.: Bret Victor)
http://worrydream.com/ExplorableExplanations/
(also: his other essays – ladder of abstraction, learnable programming, a bref rant)
examples, elaborations:
https://canvas.uw.edu/courses/1370850/pages/explorable-explanations
https://github.com/sp4ke/awesome-explorables
https://explorabl.es/


### UX and interaction (TODO maybe to the next section)
———————————
@thomas2005illuminating

Visual analytics is not simply about presenting information. Rather, an analysis session is more of a dialogue between the analyst and the data, where the visual representation is simply the interface or view into the data.
— my note: the dialog metaphor is somewhat assuming that both sides have actually something to say... rephrase: Analysis session is like tuning a radio, sometimes you get a crystal clear reception, but often it's just a noise and often you can't say if you really hear something articulate behind  the walls of noise or if it's just a trick of your immagination.


Too often in the visual analytic process, researchers tend to focus on visual representations of the data but interaction design is not given equal priority. We need to develop a “science of interaction” rooted in a deep understanding of the different forms of interaction and their respective benefits.

The mantra by Shneiderman [1996] of “Overview first, zoom and filter, details on demand” is well-accepted, but what are the next steps, or additional different steps? — my note: noisy overview can be a good overview too.

There are at least three ways to look at the science of interaction.
* we can look at interaction from the point of view of human time constants. This is an important viewpoint because all interaction is constrained and driven by what the user is cognitively and perceptually capable of doing. (see next chapter)
* we can look at how interaction is used to accomplish tasks such as data manipulation, manipulation of visual mappings, navigation, and dialogue.
* we can look at the nature of the interaction itself, including the differences between interactions in 2-dimensional (2D) and 3-dimensional (3D) environments and the effects of the devices used for interaction. — And also across different devices (responsive web design).

point 2 more precisely:
— *Interactions for modifying data transformation (filtering)*. Several common techniques are in use today, including direct manipulation, dynamic queries [Ahlberg, 1994], brushing [Cleveland & McGill, 1984], and details-on-demand.
— *Interactions for modifying visual mappings.* Dataflow systems [Haeberli, 1988] and Pivot Tables are two examples of techniques that allow the user to interactively change mappings between the data and their visual representations.
— *Interactions for modifying view transformation (navigation).* Interaction techniques range from simple approaches like direct selection for selecting and highlighting objects of interest, to more complex camera control techniques in 3D environments. They also include techniques for panning and zooming [Bederson et al., 1996] as well as for achieving a balance between overview and detail [Plaisant et al., 1995].
— *Interaction for human-information discourse.* The least well understood use of interaction is to support a true human-information discourse in which the mechanics of interaction vanish into a seamless flow of problem solving. Interactions are needed to support processes such as comparing and categorizing data, extracting and recombining data, creating and testing hypotheses, and annotating data.

Goals for interactions:

Similarly, combining or merging interactions and controls with visible represen- tations can also speed access, control, and manipulation operations. Often, users experience a cognitive separation between the task they want to accomplish and the mechanics for accomplishing the task. New techniques can be invented that do away with the separation of “what I want and the act of doing it” [Van Dam, 2001]. Integrating views, interactions, and analytics provides significant productivity improvement for the combined human, analytical, and data system.


focus-and context across scales
Analysts working with large data sets want to gain a global understanding of the data and then focus on particular data items and their attributes. Alternating among levels of detail generates moment-to-moment insights and spurs new questions. A number of visualization and user interface techniques have been developed to sup- port coordinated views of both overview and detail. Greene et al. [2000] found that previews and overviews help users quickly understand the scope of their data set and discriminate between interesting and uninteresting content. Existing techniques include the use of multiple coordinated windows at different focus levels, panning and zooming operations, and so-called “fisheye” views [Plaisant et al., 1995; Furnas, 1986]. Fisheye techniques are “focus+context” views, i.e., one in which both the overview and detail are presented side by side in the same view. The power of “focus+context” comes from the ability to subjugate unimportant information for contextual navigation while using attentive focus for effectively communicating information. While existing techniques in this area are very useful, new methods must be developed that take advantage of multiple and large-area computer displays to assist analysts with inquiries on the massive data sets evident in visual analytics.

data abstraction vs visual abstraction
There are two interrelated issues in dealing with abstraction. The first is the development of an analytic capability to transform data from one representation to another. Selecting relevant information, filtering out unneeded information, performing calculations, sorting, and clustering are all components of data abstraction. Second is the development of techniques for visual abstraction. Visual abstraction involves developing effective representations for different types of information. Visual abstraction also involves the control of emphasis and level of detail. Different representations of the same object may be needed at different levels of detail, depending on the importance of that object for the given task. Secondary visual attributes can also be used to connote additional attributes that are important in reasoning,
such as the quality of the data or the confidence in the assessment.


Develop visual representation methods for complex information that provide
the appropriate level of abstraction.
Research is necessary to:
• Identify alternative visual representations of data that best support different
analytical tasks
• Develop transformation methods that allow the user to move among alter-
native visual representations to facilitate exploration and discovery
• Provide level of emphasis and detail appropriate to the user’s data and task.


 Aside on UX — enhancing usability with motion  


# 5 Case study: traffic speeds

In this case study we explore the possibilities and limitations of vector tiles to accommodate the temporal density of a dataset originally published as a live stream. For this purpose we chose to visualize changes in traffic speeds in the city of Brno. The temporal range of the source dataset is between the 16th of March to the 10th of May 2020^[The author would like to thank Mapbox, Inc. for generously providing the traffic data sample for the purpose of this case study.]. This time period coincidentally matches with the first period of government restrictions in Czech Republic to prevent the spread of the COVID-19 pandemic. The size, spatial and temporal detail of the dataset posed a challenge both in terms of data processing as well as in terms of designing the interactive cartographic visualisation^[Live demo of the application is accessible at <pondrejk.eu/traffic>, screenshots of the interface can be found in Appendix C.].

## 5.1 Data sources and transformations

The source raw data were formatted as (compressed) CSV files containing an estimate traffic speeds at a specific location, at a specific time, based on historical observations. One such file showed the expected traffic speeds during one week^[The official description of the data source can be found at <https://docs.mapbox.com/traffic-data/overview/data/>].

Spatially, one file covered the area of a zoom level 6 tile, which meant that the data files for our problem area also covered a significant part of the Czech Republic (see Fig). 

![**Fig.** There are four tiles at zoom level six that cover Czech Republic, our area of interest, Brno municipal region fits into tile 120212 (screenshot taken from <https://labs.mapbox.com/what-the-tile/>).](imgs/img-quadkeys.png)

As for the original CSV structure, one line in the file represents one road segment. Each segment was identified by a pair of OpenStreetMap node IDs representing a start node and the end node of a road segment. Note that the node ordering also determines the direction of the recorded traffic, which means that bidirectional routes were recorded twice in the file — one row for direction from node A to node B and another row for speeds in direction from B to A. Following the two columns containing node identifiers, there were 2016 columns containing speed estimates in 5 minute intervals per each segment (7 days × 24 hours × 12 five-minute periods). An example row in a CSV file could look like: *113054533,113096757,54,54,...57*, where the first two digits are node identifiers followed by an array of traffic speeds. All speeds were recorded in kilometers per hour. The starting speed record corresponds with Sunday 00:00 AM of the given week in the files time zone. The records continue in 5 minute increments until the concluding record marking the end of the week.

This gives us an idea of the data volumes that needed to be processed. One file for the zoom level 6 tile (see fig.) contained approximately 1 086 958 lines representing the line segments (the line count could differ across the files as speeds were not provided for segments for which the volume and quality of data did not allow a high confidence estimate). Each row contained 2018 records (speeds + identifiers) which exceeds the default maximum column count per table in a PostgreSQL database (250 — 1600 based on column type)^[Just for completion, the column limit can be extended, but this requires re-compiling the database from the source code. See <https://www.postgresql.org/docs/current/limits.html> for the overview of PostgreSQL limits]. Data was provided for eight weeks, so there were eight files files of these proportions to be processed.

There were several tasks to be completed in the initial phase of data processing. As the OpenStreetMap node IDs do not directly contain the spatial information, the actual coordinates for each node needed to be obtained. This was done in the following steps. First, to minimize redundant API calls later, we extracted the unique node IDs form the first two columns. As we have seen earlier, the node IDs can appear several times as route identifiers, either in bi-directional segments or in crossroads and other structures^[The python script based on the *numpy* library that was written to perform the unique node extraction can be found at <https://github.com/pondrejk/dizzer/blob/master/misc/scripts/01-get_unique_nodes.py>]. For each of the unique nodes the spatial coordinates were obtained by querying the Open Street Map API^[The script to do that using the *osm* Python library is available at <https://github.com/pondrejk/dizzer/blob/master/misc/scripts/02-get_node_coordinates.py>].

With spatially defined unique nodes it was possible to filter out the subset of the nodes that belonged to the Brno municipal area. The most straightforward way to do that was to load the nodes to QGIS desktop to perform *select by location* against the polygon of the city area (with five kilometer buffer to provide some context of immediate surroundings). Armed with a collection of Brno nodes (the count was 131 257), we returned to the original traffic speed CSVs to extract the nodes from Brno, this time with speed attributes. The challenge was in searching for 131 257 nodes in the superset of 1 086 958 lines and then extracting the matching lines, each with all of its 2018 attributes^[The script to perform this action (using the *dask* Python library) is available at <https://github.com/pondrejk/dizzer/blob/master/misc/scripts/03-select_segments.py>].

Such task is reminiscent of situations described in the *Small big data manifesto* (@voss2017small) — even though the big data is mainly associated with large scale clustered infrastructure, individuals increasingly come across situations when they need to process large dataset only with a single machine at their hands. Setting up a cluster of machines is not viable for many applications  due to financial, time or skillset demands. For one-time processing of data that does not fit into memory, we are left with a range of simple but often efficient computing tools and approaches (@turner2020process). One of them is reading input data in chunks that can fit to memory, applying a processing function to these chunks and using a reducer function that can combine the processed chunks into a final result. This way the memory size limitation is bypassed, however, computation time of the processing function can still become a bottleneck. Multi-threaded execution can ease the problem by running the execution function in parallel on individual CPU cores. The size of chucks and the number of threads needs to be fine tuned to fit the capabilities of given hardware, but in general these techniques can significantly reduce the processing time even on modest machines. Cycling back to our speed files, a simple script combining chunking and parallelization (using the Dask Python library) was able to complete the extraction of  Brno segments from one week file in 3 min 32.8s (on Intel i7 8 cores, 30 GiB RAM).

The output of the previous operation was a list of eight CSV files in the original structure showing the estimated speeds for road segments in Brno. These weekly files where split into smaller chunks representing individual days to avoid hitting the database column length limitations^[Using this Python script <https://github.com/pondrejk/dizzer/blob/master/misc/scripts/04-split_by_day.py>]. The resulting set of 56 files with 288 columns of speed data were finally loaded to the PostgreSQL database. At this point, the tables of Brno node pairs and node coordinates were also imported in order to create a line segment layer from the point coordinates using PostGIS plugin^[The query using PostGIS's ST_MAKELINE available at <https://github.com/pondrejk/dizzer/blob/master/misc/queries/01-create_lines>]. From now on, the daily speed tables could be joined with the table of line segments to create futures spatial layers^[Example query at <https://github.com/pondrejk/dizzer/blob/master/misc/queries/03-streets_join>]. During this process various visualisation experiments have been done using QGIS connected to the database. As a result of these experiments a decision has been made to reduce the temporal granularity of the speed layers from 5 minute intervals to one hour averages^[Example query at <https://github.com/pondrejk/dizzer/blob/master/misc/queries/02-generate_hourly_averages>]. This significantly reduce the storage overhead in generated vector tiles while maintaining sufficient information density for visualisation purposes. 

A database loaded with road spatial layers with associated hourly speed attributes provides a solid starting point from which many avenues could be taken, either in analytical or visualisation direction. Our focus is on interactive cartographic visualisation with vector tiles, therefore we created the necessary amount of vector tiles from GeoJSON exports from the database using the tippecanoe command line tool^[<https://github.com/mapbox/tippecanoe>]. The batch of resulting *.mbtile* files was then uploaded to the Mapbox server via API^[The batch upload script is available at <https://github.com/pondrejk/dizzer/blob/master/misc/scripts/05-mapbox_upload.py>].

## 5.2 Application architecture

The building blocks of the application are basically the same as with the case study described in the previous chapter. Even though the PostgreSQL database played a vital role in the data preparation phase, the final application does not use it for back-end data storage. Instead, the vector tiles have been uploaded to Mapbox to act as a vector tile server. The front-end interface is build using React library with Redux for state management, mapbox-gl.js is used as a rendering engine on the client. 

## 5.3 Cartographic decisions

The main requirement for the map view was the ability to display the whole dataset at the zoom level 10 so that the municipal traffic network can be observed as a whole. For vector tiles to be served on a Mapbox server a size limit of 500 KB per tile is enforced. While this is a reasonable limitation to ensure fast rendering, it is hard to adhere to it especially with denser datasets in smaller scales where individual tiles cover larger area. One way to work around this is by limiting the number of features displayed across scales (see fig), which obviously has a downsize in loosing some resolution of the visualized data.

![**Fig.** Live Mapbox traffic data layer at three zoom levels (city of Brno, smallest scale on the left). While reducing the number of displayed roads per importance is a one way to bypass the per-tile size limitation, it precludes observing the whole traffic network at once.  Styling by the author.](imgs/img-traffic-scaling.png)

The other way to grapple with this problem without abandoning the Mapbox infrastructure is to break the data up into several different tile sets. This is the approach we chose to achieve full data resolution at the zoom level 10 — we decided to divide tile layers with daily speed coverage into halves, so that each tile layer covers twelve hours. This got us below the tile size limit but also comes with some implications to the smoothness of the user experience. When displaying the layer with a data driven style, any user-induced changes to displayed attribute are rendered smoothly wile the attribute change is within the same layer. Once a different layer needs to be loaded, there always is a visible gap between hiding the previously displayed layer and enabling the new one, which unfortunately can not be treated by any ease in effect in mapbox-gl. One way to work around this is in keeping all the layers in the visible state and change their order dynamically so that the selected layer is on top — however our testing proved this approach inefficient for large number of layers, in our case it was two layers per day, so 2 x 7 (days) x 8 (weeks) = 112 layers. 

A color scale was selected to visualize traffic speeds, it spans from 0 to 140 kilometers per hour in 10 kilometer intervals. The color selection was guided by the need for sufficient contrast on the dark background. The break between the two hues used in the color scale rests at 60 km which should ensure the variability of speeds within the slower inner-city routes is visible while the distinction from fast transit highways is apparent. 

An offset styling parameter allows to displace a line symbol from its spatial delineation by a certain distance to the side relative to the routes direction. This parameter had to be applied so that the symbols for bi-directional routes are both visible — otherwise the lines would overlap as the start and end nodes of these segments have the same coordinates, it's only the orientation that differentiates them. Styling across the zoom range has been applied to both the line width and the line offset to secure a reasonable graphic fill across scales (see fig.).

![**Fig.** The example of styling across the zoom range used in the application. The street line width is changing exponentially with scale. Screenshot from Mapbox Studio, a web-based tool to create and asses styles for vector tiles. ](imgs/img-line-width.png)

There is a range of cartographic methods that would allow comparison between the state of the traffic network in two moments. Two map view or a difference layer would be both viable options, though we wanted to employ some specific features of a WebGL based environment that would not be readily available in SVG or Canvas overlays. For that matter, we chose to apply fill-extrusion combined with tilted camera view. Fill-extrusion is a method intended for use with polygon features mainly to create 3D building models. But it is well applicable also to line layers, the base height extrusion parameter allows to lift the shape off the ground, which allows to stack multiple stripes on top of each other (Fig). Colour coding is still dynamically adjustable to allow simultaneous comparison of the progressions of speed levels in same day and time across two weeks. This method certainly has its limitations: it is not well suited for global comparison, tilted camera view is necessary as well as user activity to pan and change the view angle. This is necessary for observing the bi-directional routes, as each direction determines the colour for one side of the 3D stripe.

![**Fig.** Screenshot from the resulting application showing how the fill-extrusion parameter is used to allow comparison between weeks.](imgs/img-streets-comparison.png)

## 5.4 User interface design

The resulting map based application works in two modes, the default mode supports displaying the traffic situation in a selected date and time. The comparison mode then allows to view differences between selected weeks. The main points of interaction in the default mode are the controls for selecting time, day and week. There is a certain redundancy in those controls: user can either click the back and forward arrow buttons (right to the map in the large screen view), which allow to "jump" back and forth in time in set intervals. This enables observing speed changes throughout the day (by moving in the hourly interval), comparing the situation in a given time across days (daily interval) or see the difference between the weeks (weekly interval). The currently selected date, time and week are displayed in the numerical form on the right pane and are also visualised using the table below the map field where rows represent weeks and columns represent days. The selected day is highlighted by the table field color. The table not only shows the temporal extent of the dataset and the current selection but also offers an alternative way to select the day and week by clicking the respective field. The slider below the map field is coupled and aligned with the table and provides a way to select an hour within the given week and also allows for smoother transition between map states.

In the comparison mode, which can be enabled by clicking the "compare" checkbox, some of the mentioned controls behave a bit differently. This mode allows for selecting two weeks which is facilitated by two drop-down menus. Hour and day selectors on the right pane remain active, whereas the week selector is disabled in favor of the drop-donwns. The hour slider also remains active as it allows to change hour and day for both selected weeks simultaneously. It is also possible to change the observed day by clicking columns in the overview table (that has got two fields highlighted to denote the selected weeks). 

A care has been given to ensuring the responsiveness of the interface layout. The map field, selection slider and table are sized dynamically by the screen size. On small screens the right control pane is moved below the map field to leave sufficient screen width for the map. The legend is fixed at the right side of the interface, which on the one hand places it out of the spotlight on large screens, but on the other hand it makes sure that the legend is placed next to the map field on small screen devices.

## 5.5 Evaluation and possible extensions

During the preparation phase, the tile sizes limit of 500 KB appeared as an unforeseen driving factor that influenced our decision making both in data and visualisation space. While there are alternative solutions like setting up a custom tile server, we chose to split vector tiles into chunks of same spatial coverage but shorter time intervals to reduce the attribute count. This is a proven solution within the selected infrastructure, however more experimental approaches were tested over the course of the work. One of them based on the fact that many road segments exhibited consequent runs of same speed values. The idea was to use an run length encoding algorithm to compress the attributes, which was successfully done on the database side^[Script using pandas and sqlalchemy Python libraries available at <https://github.com/pondrejk/dizzer/blob/master/misc/scripts/06-run_length_encode.py>] — the encoded values were stored in an array type column in PostgreSQL and then exported as vector tile layer. However, decoding the values on the client side showed to be beyond the scope of the mapbox-gl style definition language. There is also a question of the rendering performance as decoding the run length array and finding the right value for the selected time would have to be done for each displayed segment.

Another solution would be to classify the streets in the dataset, mainly to separate the segments with low speed variability that could be represented by a single value for a longer then just the hour period. Overall, there are three types of road segments in our problem area:

- Routes with low average speed and very low speed variability throughout the day. These are typically short segments with low traffic, cul-de-sacs leading to residential areas 
- Routes with medium speeds and visible daily variability. These are mainly the inner-city veins
- Routes with high average speeds and small daily speed variability. These are transit highways with high allowed speeds. 

In this setting it is hard to make any confident statements about the impact of the COVID-induced lockdown in the area, as only the second type of road segments could be influenced by government restrictions. Also the traffic speed is only an indirect indicator of traffic volumes. Lowered number 
of vehicles during the lockdown period could have contributed to higher speeds in otherwise notoriously congested areas on the main city lines and near highway entrance ramps. Another impact could be in evening out the daily changes in traffic speeds and lowering the significance of peak hours.

There are of course many areas in which the application could be extended. For example, summary data on individual road segment could be displayed upon selection. Additional modes of comparison could be added as well as ability to search and filter the mapped data e.g. by the street name. A capability to explore the speed changes across the itinerary form point a to b could be implemented as well as comparison of such itineraries. Reader may surely think of other extension. To conclude, the application points out the vector tiles combined with WebGl based rendering as a promising avenue to display and explore temporally dense data. Depicting subtle changes in traffic speeds lets us appreciate the city as a collective organism. 


TODO — connect with previous chapters: What spatio-temporal queries are enabled by this kind of visualisation? Which are not? (see chapter 2)

The visual analysis tool should work equally well regardless of the velocity of data generation or the cadence of change. For that matter, the temporally dense dataset should serve well for designing a cartographic interface even though the dataset is not itself consumed "real-time". 

caveats
Traffic speed does not bear information on car density? — what is the relation? in pandemic it should be higher?
# Appendix A: Big data related research challenges and opportunities for cartography

TODO intro and citation

## Research Challenges for Cartography and Geospatial Big Data 

Making sense of geospatial big data 

* Develop visual analytical reasoning systems that help users add meaning to and organize what they discover from geospatial big data
* Design effective map-based interfaces to support long-term analytical engagement with complex spatiotemporal problems and geospatial big data 
* Develop new approaches for supporting collaborative decision making using the map as a mutual interface for analyzing geospatial big data 
* Develop techniques that allow users to express and match a spatiotemporal pattern they have in mind using the map as an interface for analyzing geospatial big data 
* Understand when, how and if maps can help us understand geospatial big data 

Volume

* Identify effective methods for creating overviews of geospatial big data
* Develop methods that embody the volume of geospatial big data

Variety

* Design and develop cartographic interfaces that can handle the complexity of geospatial big data
* Develop techniques for understanding change over time in geospatial big data 
* Craft new approaches to support predictive analytics of dynamic phenomena with maps leveraging geospatial big data
* Develop spatiotemporal visualization methods for geospatial big data that support a variety of uses and users

Velocity

* Develop methods that embody the velocity of geospatial big data
* Create maps and map-oriented interfaces that prompt attention to important changes in dynamic geospatial big data sources 

Veracity

* Characterize the quality end certainty of geospatial big data 
* Develop new approaches for visualizing the quality and certainty of geospatial big data 

Art and geospatial big data

* Encourage and maximize creative contributions far expressing geospatial big data
* Build a library of artistic methods and techniques for representing geospatial big data
* Generate artistic renderings of geospatial big data 
* Dynamically link artworks to conventional geospatial big data representations


## Research Opportunities for Cartography and Geospatial Big Data

Visual methods for geospatial big data 

* Systematically evaluate the ability of existing visual methods in thematic cartography to support analysis of geospatial big data
* Adapt cartographic generalization principles and techniques to support visual analysis of geospatial big data
* Couple computational methods and cartographic representation best practices into an automated framework that suggests appropriate design decisions on-the-fly for geospatial bug data
* Leverage what we know about map animation and interactive cartography to construct visual solutions for dynamic sources of geospatial big data

Computational methods for geospatial big data

* Leverage knowledge about patterns across scales in the development of new computational methods for geospatial big data
* Use what we know about human dynamics to find patterns in geospatial big data 
* Connect concepts from complexity science to new visual analytics methods for geospatial big data

Adapting artistic methods for geospatial big data

* Facilitate engagement of artists with geospatial big data and the creation of an artistic geospatial language
* Co-opt artistic methods and techniques to represent geospatial big data
* Generate artistic renderings of geospatial big data
* Link artworks to conventional representations in a visual analytics context to leverage geospatial big data
# Appendix C: Traffic speeds

This appendix provides a brief overview of the interface of the map based web application created for the second case study. Not that the best way to explore the application is by viewing the live demo at <pondrejk.eu/traffic> (the application has been tested on Firefox 90 and Chrome 92 browsers).

 
![Full view of the interface](imgs/apx3/app-landing-page.png)

![](imgs/apx3/side-pannel.png)
![Selected time and date is visible both on the right panel and in the overview table below the map. To change the map in the normal mode user can eihter clict the selector buttons or use the slider to select the hour and day. The overview table can also be used to select day and week.](imgs/apx3/table-normal-mode.png)

![](imgs/apx3/compare-mode.png)
![In the comparison mode, user can select weeks to be compared on the control pannel after clicking the "comparison" checkbox. The selected weeks are then displayed on the overview table, which can still be used to select the day, as well as the slider.](imgs/apx3/table-compare-mode.png)


![Example showing the map view in th comparinson mode, fill-extrusion is used with tiled camera view to allow layer comparison. Application is shown in the small screen layout, with the side panel broken down below the map view (outside of the image).](imgs/apx3/small-screen.png)