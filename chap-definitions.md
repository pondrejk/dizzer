# Defining Big Data


> *Small data are slow and sampled. Big Data are quick and n=all.*

> @kitchin2016makes

*This chapter searches for defining properties of big data, focusing on characteristics with possible implications for cartographic practice. Review of related works outlines the main attitudes towards grasping the concept.*

## Ontological characteristics ("big" standing for "fast" and "exhaustive")

Despite the lively interest triggered by the subject, the explanation of the term *big data* ^[Throughout the text we will treat the term as plural, without capitalization. Although there are strong arguments for "data" as singular (@widman2014when, @nunberg2013data, for counterargument emphasizing the plurality of big data see @wilson2017big) and some authors capitalize, we chose to match with the majority of big data related literature. This does not apply to direct citations where we preserve the original author's formulation.] remains hazy and there is no widely accepted definition to the date. Perhaps the most systematic effort in this matter by @kitchin2014data (refined in @kitchin2016makes) summarizes the key properties attributed to big data. Kitchin critically assesses these properties and goes on to assign them relative importance in distinguishing big from "small" data. He also takes care to separate the concept in itself from accompanying social phenomena, hence he speaks of *ontological* characteristics.

This provides a useful starting point for our thinking of big data from the cartographic standpoint, so let us list the ontological characteristics including some of the Kitchin's comments:

* **Volume** – can be measured in storage requirements (terabytes or petabytes) or in number of records
* **Velocity** – data generation happens in real-time either constantly (e.g. CCTV) or sporadically (e.g. web search), we can distinguish the frequency of generation from the frequency of data *handling*, *recording*, and *publishing*, all three can be delayed from the time of generation
* **Variety** – heterogeneous in nature, though this property is rather weak as various levels of organization are allowed (*structured*, *semi-structured* or *unstructured*)
* **Exhaustivity** – an entire system is captured (*n=all*), rather than being sampled
* **Resolution and indexicality** – fine-grained (in resolution) rather than being aggregated and uniquely indexical (in identification) which enables linking with other datasets
* **Relationality** – containing common fields that enable the conjoining of different datasets
* **Extensionality and scalability** – flexibility of data generation, possibility to add or change new fields easily, possibility to rapidly expand in size

The above parameters, their relative importance, as well as their cartographic implications, will be discussed more in depth later, but straight from the start it is important to mention two open questions that for many people make attempts to define big data vague at best, sometimes to the point of questioning the existence of the phenomenon itself.

First, there are no quantitative thresholds that would define exactly how large the "big" volume is, how fast the "big" velocity is, and so on. Some properties would even be hard to describe in quantitative terms (for example extensionality). Other properties sound too general or vague to act as a sound defining parameter (scalability). What is more, one could extend the properties ad absurdum, for example *variety* could refer to differences in structure, origin, quality, or any other property of a dataset. Such depth of parameters and sub-parameters does not add to the overall comparability of datasets, especially when we consider that data-generation procedures may be unique to certain domains and not found in others. Finally, many datasets lack metadata detailed enough to allow to judge all mentioned properties. It is possible that these issues will clear out with time, but parameter thresholds may as well remain blurry and ever in flux.

The second problem is that even if we had a clearly defined set of criteria, in practice we could hardly find a dataset that would fit all of them. Therefore not all properties are deemed mandatory, which in turn leads to confusion and labeling almost anything as big data. To articulate the gist of the term, more work is needed on the relations of the parameters, some might be merged (resolution is a consequence of exhaustivity, indexicality enables relationality) or discarded (extensionality and scalability seem to describe the infrastructure rather than data).

Aware of these problems, @kitchin2016makes argues that *velocity* and *exhaustivity* are qualities that set big data apart and distinguish them from "small" data. We can add that these two characteristics also present the most interesting challenges to cartographic presentation of such data. So even though we will continue to use the established term in the following text, the little too simplistic adjective "big" will be meant as a proxy for **generated continuously in real time and containing an unreduced set of elements**.


## Other ways of understanding big data

In this section we briefly review the writing of authors seeking to define big data. The term itself was fist used in context of dealing with massive datasets in mid-1990s by John Mashey (@diebold2012personal), but the heaviest circulation of the term in scientific and popular media takes place only in recent years. From the breadth of works, several tendencies can be identified, providing more or less illuminating interpretations of the subject (for an alternative summary of definitions see @gandomi2015beyond, for bibliometric analysis of related scientific literature see @nobre2017scientific).

### Vs and keywords

Kitchin's taxonomy mentioned in the previous section is based on a review of older definitions, starting with the often-cited three Vs (standing for *volume*, *velocity*, and *variety*) by @laney20013d. The notion of *exhaustivity* was added by @mayer2013big, concepts of *resolution* and *indexicality* came from @dodge2005codes, @boyd2012critical adds *relationality*, and the qualities of *extensionality* and *scalability* were taken from @marz2012big.

Other properties attributed to big data include *veracity* (data can be messy, noisy and contain uncertainty and error) and *value* (many insights can be extracted, data can be repurposed), both brought forward by @marr2014big. Moreover, *variability* (the meaning obtainable from data is shifting in relation to the context in which they are generated) was identified by David Hopkins in relation to text analysis (@brunnelli2011will). @li2016geospatial name also *visibility* (efficient access to data via cloud storage and computing) and more curiously *visualistation* as big data properties. Here it is questionable if subject (data) can be defined by the tools used to handle it (supporting infrastructure and visual information products).

@suthaharan2014big, dealing with a task of early recognition of big data characteristics in computer network traffic, argues that three Vs do not support such early detection in continuous data streems. Instead he proposes three Cs: *cardinality* (number of records), *continuity* (meaning both representation of data by continuous functions, and continuous growth of size with time), and *complexity* (combination of three parameters: large varieties of data types, high dimensionality, and high speed of processing). One must ask why authors seek to propose parameters in triples, even at the cost of occluding addidional propeties as sub-parameters. Possible answer might be that such triples allow to create three-dimensional parameter spaces or "cubes" where we can place datasets to create neat visualiasations. Humor aside, @suthaharan2014big's approach is interesting in observing the rate of change in parameters in real time.

Laney's 3 Vs were brought into commercial management-speak and became a slogan further powering the hype of big data. Nevertheless, it inspired a number of other authors to extend it quite creatively. For example @uprichard2013focus lists other v-words to be considered, both in positive (*versatility*, *virtuosity*, *vibrancy*...) and negative (*valueless*, *vampire-like*, *violating*...) light. @marr2014big describes five Vs of big data, @van20133v sees seven Vs, @boellstorff2015introduction propose three Rs and @lupton2015thirteen even uses thirteen p-words to describe the subject. As @kitchin2016makes notes, these additional v-words and new p-words are often descriptive of a broad set of issues associated with big data, rather than characterising the ontological traits of data themselves.

### A challenge for technical infrastructure

Several authors understand big data mainly as a management issue, which is probably due to the fact that handling large datasets is challenging. Hence, the computational difficulties of storing and processing a dataset on a single machine often act as a defining measure. For instance @storm2012big quoting Hillary Mason: “Big Data usually refers to a dataset that is too big to fit into your available memory, or too big to store on your own hard drive, or too big to fit into an Excel spreadsheet.” Or similarly @shekhar2012spatial states that “the size, variety and update rate of datasets exceed the capacity of commonly used spatial computing and spatial database technologies to learn, manage, and process the data with reasonable effort”. 

The problem with such definitions is determining exactly what size is "too big to fit" and what is the "reasonable effort". The computational power of hardware accessible for personal use is constantly increasing ^[Gordon Moore's 1965 paper (reprint @moore2006cramming) stated that the number of transistors on integrated circuits will double every two years. The prediction has proven accurate for several decades and became known as *Moores's law*, a very popular analogy of advance of the digital age. The pace has slowed down with smaller transistors suggesting that the prediction is reaching its technological limit, though the opinions here vary. The overuse of the idea as a synonym of progress has been criticized as too simplistic @kreye2015moores ], not to mention the technical infrastructure accessible to large enterprises and governmental organizations (datacenter construction is steadily growing and is expected to almost double the current capacity in 2021 @statista2018data, @networking2018cisco).

At the same time, new technologies emerge to address the issue – virtualization of storage, networking, and memory make it possible to rent computational infrastructure from "cloud" providers, or to delegate workloads previously carried out by the operating system to remote platforms ^[*Cloud computing* enables companies to consume a compute resource, such as a virtual machine, storage or an application, as a utility rather than having to build and maintain computing infrastructures in house (@rouse2018cloud). The cloud models include providing infrastructure, platform or application as a service; main vendors of public cloud solutions are Amazon Web Services, Google Cloud Platform or Microsoft Azure.]. Other innovations take place in data processing algorithms, analytic engines, and in database design (a whole range of No-SQL databases as well as enablement of distributed processing in traditional databases) ^[Processing and analytical frameworks designed for big data include Apache Hadoop, Apache Spark, or Apache Flink. No-SQL databases use a column, graph, document, key-value, or multi-model solution as an alternative to traditional relational database design.]. Some attempts to summarize technical solutions for big data can be found in @paakkonen2015reference, or @jin2015significance.

As we can see, the "too big to fit" definitions are highly dependent on the resources currently available, plus we need to take into account future improvements that are hard to predict. That being said, understanding the subject as *data that prevent local offline processing on common desktop in reasonable time* is a useful shorthand for judging big from "small" data. The threshold between local (offline) and remote (cloud-dependent) processing exists even though it is a blurry and a dynamic one. As the latter may be more and more accessible in the future, it can be best advised to consider the scalability of any data-processing workflows early on. In other words, any workflow designed as a potential big data process will likely have an advantage, as design limitations may prove to be overcome harder than the technical ones. 

One point of confusion for readers of big data related literature that often reoccurs is mixing the characteristics of the subject (stored information) with properties of technologies used to process it (storage, analytics, visualisation, etc.). It is debatable if this is a fallacy, depending on to what degree we consider digital data independent from the technical infrastructure around it^[Real world analogies may not be helpful here: for example the properties of gold are independent of the tools used to mine it. On the other hand, many forms of interaction with digital data are inseparable from the technical infrastructure.]. To illustrate the difference, compare the following two definitions. Fist by @gartner2018what:

> Big data is high-volume, high-velocity and/or high-variety information assets that demand cost-effective, innovative forms of information processing that enable enhanced insight, decision making, and process automation. 

The second by @gantz2011extracting defines big data as:

> A new generation of technologies and architectures designed to economically extract value from very large volumes of a wide variety of data by enabling high-velocity capture, discovery, and/or analysis.

The understanding of big data as an asset prevails, though the second type portraying big data as an ecosystem is not uncommon (e.g. @demchenko2014defining, @olshannikova2015visualizing). Eventually, this division may lead to dual understanding of big data in "narrow" (fuel, raw material) and "broad" (ecosystem, architecture, framework) sense. A good example of broader thinking is @demchenko2014defining that proposes a "Big Data Architecture Framework" comprised of big data infrastructure, big data analytics, data structures and models, big data lifecycle management, and big data security^[This is close to holistic definitions discussed later in this chapter, though these tend to be less confined in technology realm and mixing in procedural aspects and wider societal implications.]. Demchenko also expects a shift from current host/service centric IT infrastructure towards data centric operational models and protocols.


### Showing example sources and quantities

A very common description of big data goes along the lines of "I will give you some numbers and you will get what I mean". Such writing may not provide an exact understanding of the concept, but can put us into context about the scales we are moving at. Doubtlessly the mass of retained data is growing, as @mcnulty2014understanding put it, 90% of all data ever created was generated in the past 2 years (in 2014). In a notable attempt to estimate the World's overall data generation between 1986 and 2007, @hilbert2011world claim that more then 300 exabytes ^[1 exabyte = 1 000 000 000 gigabytes] of stored data existed in 2007 (for the methodology of reckoning see @hilbert2012measure). The key insight is the growing domination of digital technologies accounting for the majority of the annual growth after year 2000. More recent accounts report on machines potentially capable of reporting brontobytes ^[1 brontobyte = 1 000 000 000 exabytes] of data (@bort2014there).

Increasing the storage capacity itself does not speak of any qualitative change in what is stored, therefore some archives could indeed be described as big piles of small data. Under certain circumstances, new quality can arise from increased quantity, for example as @norvig2011unreasonable points out, an array of static images projected at a sufficient frame rate creates an illusion of movement also known as film. Multiplication of an old medium creates a new one. The remaining question is under what conditions this change of essence arises, and if such thing occurs or will occur in case of big data.

![**Fig.1** Comparison of the World's estimated data storage capacity between years 1968 and 2007 (modified after @hilbert2011world) and the expected storage capacity of large scale data centers in the period from 2016 to 2021 (modified after @networking2018cisco)](imgs/img-storage-capacity.png)

Rather than putting up to a gargantuan task of counting the mass of all existing data items, authors use the available statistics related to operations of large companies (@kambatla2014trends, @mcnulty2014understanding, @marr2014big and others). For example, Facebook was said to process 10 billion messages, 4.5 billion button clicks and 350 million picture uploads each day (@marr2014big). It goes without saying these numbers are outdated and certainly outgrown today. Other companies prominently mentioned in context of big data are Google, Wallmart, or Amazon. This connection is justified, as these companies have put user (or customer) data analytics to the core of their businesses, thus supporting the progress in the field. Social media, web search and browsing data, on-line or off-line shopping patterns, but also mobile devices, sensors and large scientific projects are mostly named as generators of big data.

Data source is another potential classification property. The United Nations Economic Commission for Europe proposed a taxonomy that recognizes three main sources (@unce2013):

- *Social Networks (human-sourced information)* – this information is the record of human experiences
- *Traditional Business systems (process-mediated data)* – these processes record and monitor business events of interest
- *IoT (machine-generated data)* – information is derived from sensors and machines used to measure and record the events and situations in the physical world

Data sources labeled as big differ from traditional sources such as surveys and official administrative statistics, @florescu2014will and @kitchin2015opportunities closely examine those differences as well as the potential for big data to extend official statistics. Interesting point is that volume is not actually distinctive as statistic offices tend to store large amounts as well. Classical data sources have statistical products and by-products specified beforehand, big data tend to be reused beyond the original intent, on the other hand, big data sources tend to be volatile and their representativeness is harder to assess.

### Metaphoric accounts

Metaphors rely on a notion of analogy between two dissimilar things, but can also become independent verbal objects, aesthetically appealing but not overly revealing. Despite that, we should not ignore metaphoric accounts, as they contribute to the mythology surrounding big data that reflects what many people expect. 

@puschmann2014big identified two prevailing ways of imagining the subject: big data seen as a natural force to be controlled and as a resource to be consumed. The utilitarian mindset comparing digital world to excavation of valuable minerals in far from new (think of "data mining" or more recently "cryptocurrency mining") bur it is tempting pursue this analogy further. For example, how to estimate the ratio of valuable information to "debris", and shouldn't such estimation be done before any data "mining" endeavour? The value of real-world analogies may be in provoking some common-sense reasoning often missing in proclamations of digital visionaries.

As @lupton2013swimming notes, by far the most commonly employed rhetorical descriptions of big data are those related to water or liquidity, suggesting both positive and negative connotations. For example @manyika2013open argues for unlocking data sources to become "liquid" in a sense of open and free-flowing, at the same time keeping privacy concerns in mind – what is liquid is also susceptible to unwanted leaks.

Of course, big data descriptions are not limited to verbal form, visual means can be much more expressive and informative – not a surprising claim to be found in a thesis on visual analytics.
We will discuss cartographic tools later, here we can mention artistic renderings that employ more free-form visual analogies. We should distinguish pursuits like *information visualisation* that are close to graphic design (for good overview see klanten2010data or @lima2011visual) from artistic projects that use data as a raw material and don't aim to convey information or comfort to general user's cognitive expectations (like some projects at @creative2018).
 
From the cartographer's standpoint, aspects of visual art can be inspiring (graphic quality, employment of computation and rendering software, creative uses of interaction and animation), though artistic means are often too different to be transposed. Without referring back to the source phenomenon, data-driven art becomes unrecognizable from the so called *generative art* that uses random numbers rather than any existing information (though generative approaches and data-mocking may prove some use for web cartography). 


### Holistic and process-oriented accounts

Multifaceted phenomena tend to provoke descriptions that contain words like "system" or "process". Somewhere behind that lies an idea that a whole is more than a sum of its parts^[This is true for systems that express *synergy* or *emergent behavior*. Over the years, *systems theory* has been used to describe many natural and man-made phenomena in many fields, including geography and cartography.]. Experts from different fields notice aspects of phenomena that are close to their research interests and priorities, interdisciplinary definitions then combine such views. Naturally, listing holistic accounts will include topics already mentioned, therefore pardon some repetition in this section.

@murthy2014big prepared a taxonomy of big data comprised of:

- *data* – with various levels of temporal latency and structure 
- *compute infrastructure* – batch or streaming
- *storage infrastructure* – sql, nosql or newsql
- *analysis* – supervised, semisupervised, unsupervised or re-enforcement machine learning
- *visualisation* – maps, abstract, interactive, real-time 
- *privacy and security* – data privacy, management, security

On the other hand, @boyd2012critical define big data as a cultural, technological, and scholarly phenomenon that rests on the interplay of:

- *technology* – maximizing computation power and algorithmic accuracy to gather, analyze, link, and compare large data sets
- *analysis* – drawing on large data sets to identify patterns in order to make economic, social, technical, and legal claims
- *mythology* – the widespread belief that large data sets offer a higher form of intelligence and knowledge that can generate insights that were previously impossible, with the aura of truth, objectivity, and accuracy
 
As the two taxonomies above illustrate, there are many ways to slice a cake. The fate of overreaching definitions is being too intricate to explain the phenomena crisply, yet never complete as there is always a point of view that hasn't been included. So here we arrive at a trade-off between preciseness of a definition and its practicality.

One way out from this is simply rejecting the view of big data as a singular phenomenon. Big data is a non-specific covering term that could mean different things to different people. As @helles2013making observes, "[d]ata are made in a process involving multiple social agents — communicators, service providers, communication researchers, commercial stakeholders, government authorities, international regulators, and more. Data are made for a variety of scholarly and applied purposes [...]. And data are processed and employed in a whole range of everyday and institutional contexts."

## Spatial properties of big data

Apart from the general definitions mentioned above, there have also been field-specific efforts to contextualize big data. The fields include governance (@crampton2015collect), journalism (@lewis2015big), ecology (@shin2015ecological), social sciences (ovadia2013role), business administration (wamba2015big), urban studies (@thakuriah2017big), learning analytics (@wilson2017big), education (kabakchieva2015big), health informatics (@herland2014review) and doubtlessly many others. Autors here consider existing data procesing and analytical practices in their respective fields in light of possibilities created by big data advances. Some expect forthcoming changes, such as enrichment in avaliable methods (e.g. anaylsing social networks in epidemiology), others analyze the adjustablility of currently used algorithms to conditions of higher data load. With some generalization, the overall mood of these works seems to be welcoming big data as a be possible extension of their toolbox, though doubting that the core scientific methods could be deeply altered by it.

To name Geography in specific:

@graham2013geography
@kitchin2013big

Wihin here are pre-existing definitions and classifications data is and how it should be classified (clinincal data...), spatial data is different...(risque) as a connecting feature.




In conext of 
Those field-specific accounts rarely add to the ganeral defiinitions of big data, 

GIS is specific with its focus on data spatial properties

-- Here only previous works, and data definitions, next chapter -- my freestyle

Geospatial big data as a subset of big data. 

@lee2015geospatial
@li2016geospatial
--------


GIS practitioners like to say that 80% of all data is geographic, and even though such claim is hard to prove (see @morais2012phrase for discussion and @hahmann201180 for validation attempt), few would doubt that spatial reference can unlock some additional value at a minimum as a platform for combining otherwise unjoinable datasets.


According to the arguable phrase “80% of data is geographic” (see discussions in Morais (2012) @morais2012phrase ), much of the data in the world can be geo-referenced, which indicates the importance of geospatial big data handling. Geospatial data describe objects and things with relation to geographic space, often with location coordinates in a spatial referencing system.

@suthaharan2014big


Inherent intent to visualize data.
Vector Data: atribute and geometry. Attributes can be big-data-fied more easily than geometries (is it even possible?).


A potential to geocode big data to become available to geospatial analysis.

Cartography (here represented by ICA) is no exception. ... Manifestos, etc... 

Classical dichotomies still hold

Vector / Raster
or better conceptually 
Discrete / Field

Point / Lines / Polygons / Tessalerations / Interpolations ...
Nominal / Ordinal / Interval /... every textbook has it

shekhar2014benchmarking -- traditional vs emerging spatial bd 

More on in a separate 

Spatial data bound to be represented, the form is a big deal in gis
Generaliastion, analysis, geostatistics..., data respresentations in GIS (event the whole data model)

not a subject of this thesis
Spatial imagery -- truly big data with strong relevance in geosciences. @jiang2017spatial
-- improvements in global monitoring systems (check terminology)
-- higher quality number of pixels, greater time frequency and number of spectral levels (examples )

In the next chapter, where we look at at the impact of big data on science in general, we also offer our speculation on how the roles of cartography and GIS may be transformed by the data deluge.


## Assessing impacts and opportunities rather than seeking definitions



Often times, big data are described indirectly by the impacts, real or imagined, they have on the society. For some authors, the debate on definition of big data may be dismissed as unproductive. The popularity of the term itself may diminish like many other new technologies that become part of the infamous hype cycle ^[Hype cycles describe how expectations from emerging technologies evolve with time. Stages in the cycle are:  *innovation trigger*, *peak of inflated expectations*, *trough of disillusionment*, *slope of enlightenment*, and *plateau of productivity*. The expected duration of cycle differs per technology, and some technologies may never reach productivity in the foreseeable future. Hype cycles are a construction of consultancy Gartner that issues regular reports @gartner2018]. Many ideas in the IT industry exist under changing or concurrent names, and big data has indeed a lot in common with concepts such as *data mining*, *business intelligence* or *visual analytics* to name just a few. But we should not forget that even though the technological industry is largely fashion-driven, its societal impacts are real, though sometimes unevenly distributed. 

The definition of big data is elusive perhaps also because the majority of involved actors, as they are positioned in the business world, is more focused on building productive big data ventures, without much conceptual attention to the subject in itself. Then of course, the underlying technologies become a subject of marketing which often uses inflated overstatements based on expectations rather than reality. So far there is no settled consensus around big data definition in the academia either, but as @kitchin2016makes predicts, the "genus" of big data will probably be further delineated and its various "species" identified. The question is if then such an umbrella term will be necessary. Anyways, the lack of common ground in understanding what big data is (illustrated by this chapter) may be a good predictor of the term's future relevance. Problems with definition is exactly what leads @davenport2014big to "predict a relatively short life span for this unfortunate term.” 

To @mayer2013big big data stands for "the ability of society to harness information in novel ways to produce useful insights or goods and services of significant value". Here, more than an exact definition, the importance lies in the real-life impacts that are likely to stay even when the big data hype is over. Even if we dismiss big data as a buzz-word, the fact is that more digital information gets created and it can be linked more easily, which has many implications on the way we live. Together with that there are changing attitudes to putting data to work. Before we move to describing the challenges and opportunities big data pose to cartography, we dedicate the following chapter to some societal and scientific impacts of the phenomenon, as they can provide a motivation for cartography to take part in addressing those issues. 

## Sources
