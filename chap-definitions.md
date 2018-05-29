Defining Big Data
-----------------

> *Small data are slow and sampled. Big Data are quick and n=all.* @kitchin2016makes

> *This chapter outlines the defining properties of big data, focusing on characteristics with possible implications for cartographic practice. Through the review of related work, we attempt to outline the main attitudes towards grasping the concept that accumulated so far.*

## Ontological characteristics (*big* stands for *fast* and *exhaustive*)

Despite the lively interest triggered by the subject in recent years, the explanation of the term *big data* remains hazy and there is no widely accepted definition to the date. Perhaps the most successful effort in this matter is a taxonomy by @kitchin2014data (refined in @kitchin2016makes) that summarizes the key properties attributed to big data. Kitchin critically assesses these properties and goes on to assign them relative importance in distinguishing big from "small" data. He also takes care to separate the concept in itself from accompanying social phenomena, hence he speaks of *ontological* characteristics.

This provides a useful starting point for our thinking of big data from the cartographic standpoint, so let us list the ontological characteristics including some Kitchin's comments:

* **Volume** -- can be measured in storage requirements (terabytes or petabytes) or in number of records
* **Velocity** -- data generation happens in real-time either constantly (e.g. CCTV) or sporadically (e.g. web search), we can distinguish the frequency of generation from the frequency of data *handling*, *recording*, and *publishing*, all three can be delayed from the time of generation
* **Variety** -- heterogeneous in nature, though this property is rather weak as various levels of organization are allowed (*structured*, *semi-structured* or *unstructured*)
* **Exhaustivity** -- an entire system is captured (*n=all*), rather than being sampled
* **Resolution and indexicality** -- fine-grained (in resolution) rather than being aggregated and uniquely indexical (in identification) which enables linking with other datasets
* **Relationality** -- containing common fields that enable the conjoining of different datasets
* **Extensionality and scalability** -- flexibility of data generation, possibility to add or change new fields easily, possibility to rapidly expand in size

The above parameters, as well as their cartographic implications, will be discussed more in depth in chapter 3, but here it is important to mention two open questions that for many people make attempts to define big data vague at best, sometimes to the point of questioning the existence of the phenomenon itself.

First, there are no thresholds that would define exactly how large the "big" volume is, how fast the "big" velocity is, and so on. It is possible that this will clear out with time but these thresholds may as well remain blurry and ever in flux.

The second problem is that even if we had a clearly defined set of criteria, in practice we could hardly find a data set that would fit all of them. Therefore not all properties are deemed mandatory, which in turn leads to confusion and labeling almost anything as big data. @kitchin2016makes argues that *velocity* and *exhaustivity* are qualities that set big data apart and distinguish them from "small" data. We can add that these two characteristics also present the most interesting challenges to cartographic presentation of such data. So even though we will continue to use the established term in the following text, the little too simplistic adjective "big" will be meant as a proxy for "**generated continuously in real time and containing every possible element**".

## Other accounts on big data

The term big data was fist used in context of dealing with massive datasets in mid-1990s by John Mashey, retired former Chief Scientist at the Silicon Graphics company (@diebold2012personal). In this section we briefly review the writing of other authors that revolves around defining big data. From the breadth of works, several tendencies can be identified, providing more or less illuminating views at the topic (for an alternative summary of definitions see @gandomi2015beyond, for bibliometric analysis of related scientific literature see @nobre2017scientific).

**Vs and keywords**

The Kitchin's taxonomy mentioned in the previous section is based on a review of older definitions, starting with the often-cited alliteration of three Vs (standing for *volume*, *velocity*, and *variety*) by @laney20013d. The notion of *exhaustivity* was added by @mayer2013big, concepts of *resolution* and *indexicality* came from @dodge2005codes, @boyda2012critical adds *relationality*, and the qualities of *extensionality* and *scalability* were taken from @marz2015big (in earlier 2012 MEAP Edition -- how to cite? footnote?).

Other properties attributed to big data include *veracity* (the data can be messy, noisy and contain uncertainty and error) and *value* (many insights can be extracted and the data can be repurposed) both brought forward by @marr2014big, and also *variability* (meaning of data is shifting in relation to the context in which they are generated) identified by David Hopkins in relation to text analysis (@brunnelli2011will).

Laney's 3 Vs were brought into commercial management-speak and became a slogan further powering the hype of big data. Nevertheless, it inspired a number of other authors to extend it creatively. For example @uprichard2013focus lists other v-words to be considered, both in positive (*versatility*, *virtuosity*, *vibrancy*...) and negative (*valueless*, *vampire-like*, *violating*...) light. @marr2014big describes five Vs of big data, @van20133v sees seven Vs, @boellstorff2015introduction propose three Rs and @lupton2015thirteen even uses thirteen p-words to describe the subject. As @kitchin2016makes notes, these additional v-words and new p-words are often descriptive of a broad set of issues associated with big data, rather than characterising the ontological traits of data themselves.

**A challenge for technical infrastructure** 

Several authors understand big data mainly as a management issue, which is probably due to the fact that managing big data is hard. The computational difficulties of storing and processing a dataset on a single machine act as a measure. One example for all is @storm2012big quoting Hillary Mason: “Big Data usually refers to a dataset that is too big to fit into your available memory, or too big to store on your own hard drive, or too big to fit into an Excel spreadsheet.” 

The problem with such definitions is determining exactly what size is "too big to fit". The computational power of hardware accessible for personal use is constantly increasing (by the Moore's law), not to mention the technical infrastructure accessible to large enterprises and governmental organizations (datacenter construction is steadily growing and is expected to double the current capacity in 2021 @statista2018data).

At the same time, new technologies emerge to address the issue -- virtualization of storage, networking, and memory together with distributed database storage make it possible to rent computational infrastructure from "cloud" providers (such as Amazon Web Services or Google Cloud Engine), or to delegate workloads previously carried out by the operating system to remote platforms (e.g Heroku or Red Hat Opensift). Other innovations take place in data processing algorithms (map-reduce fuelling Hadoop,resilient distributed dataset (??) behind Apache Spark), and in database design (a whole range of No-SQL and Post-SQL databases). An attempt to sum up the current technical "landscape" of big date is provided in Appendix 1.

As we can see, the "too big to fit" definitions are highly dependent on the resources currently available, plus we need to take into account future improvements that are hard to predict. That being said, understanding the subject as *data that prevent local offline processing on common desktop in reasonable time* is a useful shorthand for judging big from "small" data. The threshold between local (offline) and remote (cloud-dependent) processing exists even though it is a blurry and a dynamic one. As the latter may be more and more accessible in the future, it can be best advised to consider the scalability of any data-processing workflows early on. In other words, any workflow designed as a potential big data process will likely have an advantage, as design limitations may prove to be overcome harder than the infrastructure ones. 

**Definitions by example**

A very common account on big data goes along the lines of "I will give you some numbers and you will get what I mean". Such writing may not provide an exact understanding of the concept, but can put us into context about the scales we are moving at. Doubtlessly the mass of retained data is growing, as @mcnulty2014understanding put it, 90% of all data ever created was generated in the past 2 years (in 2014). A notable attempt to estimate the World's overall data generation as a whole between 1986 and 2007 by @hilbert2011world mentions that more then 300 exabytes of stored data existed in 2007 (for methodology of the reckoning see @hilbert2012measure). The key insight is the growing domination of digital technologies accounting for the majority of the annual growth after year 2000. More recent accounts report on machines potentially capable of reporting brontobytes of data (1 brontobyte = 1 000 000 000 exabytes) (@bort2014there).

Increasing the storage capacity itself does not speak of any qualitative change of in what is stored, therefore some archives could indeed be described as big piles of small data. Under certain circumstances, new quality can arise from increased quantity, for example an array of static images projected at a sufficient frame rate creates an @norvig2011unreasonable, the remaining question is when this change of essence arises, and if and how it is the case of big data.

Rather than putting up to a gargantuan task of counting the mass of all possible data items, authors point out the available statistics of large companies (e.g. @kambatla2014trends, @mcnulty2014understanding, @marr2014big and others). For example, Facebook was said to process 10 billion messages, 4.5 billion button clicks and 350 million picture uploads each day (@marr2014big). It goes without saying these numbers are outdated am probably outgrown today. Other companies prominently mentioned in context of big data are Google, Wallmart, or Amazon. This is justified, as these companies also have put user/customer data analytics to the core of their businesses, fuelling the progress in the field. Social media, web search and browsing data, on-line or off-line shopping patterns, but also mobile devices, sensors and large scientific projects are mostly named as generators of big data.

**Metaphoric acconuts**

Metaphors rely on a notion of analogy between two dissimilar things, but can also become independent verbal objects, aesthetically appealing but not overly revealing. Despite that, we should not ignore metaphoric accounts, as they contribute to the mythology surrounding big data that reflects what many people expect. 

@puschmann2014big identified two prevailing streams of thinking about the subject: big data seen as a natural force to be controlled and as a resource to be consumed. The utilitarian mindset comparing digital world to excavation of valuable minerals in far from uncommon (think of "data mining" or more recently "bitcoin mining"), it is tempting pursue this analogy further. For example, what is the ratio of minerals to debris (find some mining formula). Such considerations as in mining industry can provide some real-world reasoning so often missing in the digital visionaries, forecasts.

As @lupton2013swimming notes in an account on rethorical descriptions, by far the most commonly employed metaphors to discuss big data are those related to water or liquidity, suggesting both positive and negative connotations. @manyika2013open argues for unlocking data sources to become "liquid", not only in a sense of open and free-flowing, but, if my interpretation is correct (she mentions it in connection with privacy concerns), in a sens of being able to evaporate without a trace.

Also mentioning tufte quoting ... comparing life as a stream of stories. dataviz can roll-back the time variously tinker with data representations thus bypassing the need to use metaphors and verbal descriptions.

Here we first arrive at the point that we will revisit several times later, and that the description of what big data sets needs not to limit to a verbal form. Visual means can be much more expressive and informative, a claim that you could expect to find in a thesis on visual analytics. The cartographic means of doing this will be discussed later, here we note artistic renderings that take more free-form approaches, not guide by the need to convey information or comfort to general user's cognitive expectations.
 

Data long before became a raw material for art (for overview of interesting projects see @klanten2010data, @lima2011visual, or @creative2018). In some aspects these can be inspirative for cartography (design quality, employment of computation and rendering software, creative uses of interaction and animation), though it should be used with care as the intentions here can be far different from cartography. One sign of this is that often it is impossible to distinguish data-driven art from generative art that uses generated data rather than any existing information. (though generative approaches and data-mocking could prove some use for dynamic cartography). 

**Holistic, prcess-based**

Handling, process-based, holistic:
@murthy2014big -- taxonomy focused on data handling:
-- data: a) temporal latency for analysis (real-time, near real-time, batch), b) structure (structured, semi-structured, unstructured)
-- compute infrastructure: batch or streaming
-- storage infrastructure: sql, nosql, newsql
-- analysis: supervised, semisupervises, unsupervised or re-enforcement machine liearning
-- visualisation: maps, abstract, interactive, real-time (**here be the focus of this work**)
-- privacy and security: data privacy, management, security

@baldassarre2016think

**As a social phenomenon** (here also sceptical views)
*we are as good as we can measure*

Often times, big data is described indirectly by the impacts, real or imagined, it has on the society.

Concluding with the societal impact. For some authors, the debate on perfect definition of big data may be dismissed as unproductive. The popularity of the term itself may diminish like many other new technologies that become part of the typical hype cycle (see Gartner repors 2017, 2016 etc.). Even though the technological industry is largely fasion-driven, its societal impacts are real (even though unevenly distributed...). And just because something is hyped, it does not mean we can or should ignore it (see @jagadish2015big, also for debunking some common myths about big data).

To mayer2013big big data stands for "the ability of society to harness information in novel ways to produce useful insights or goods and services of significant value". Here, more than an exact definition, is important the societal impacts that are likely to stay even when the big data hype is over. About such impacts is the following chapter.

@lupton2015managing -- self-tracking and quantified self

@gandomi2015beyond -- list of risks in bb-based predictive analytics: heterogenity, noise accumulation, spurious correlations, incidental endogeneity  

GDPR

# An aside on geospatial big data

@lee2015geospatial


@li2016geospatial

how to contextualize bd within geograpy -- maybe to the next section on science:
@graham2013geography
@kitchin2013big


# zaver a oslí mostík do dalsej kapitoly

To those with resorces, technical facilites (that emerged in recent yers) allow storing data for future reuse even thought the utilization may be unclear at the moment of storing. There is an underlying hope that we can make sense of those data in the future. Data holders seek ways to monetize the information. BD are an attribute of interconnected society where individuals using ubiquitous technologies (web services, and mobile devices) create bigger and bigger digital footprints.

Beforce we move to describing the challenges and opportunities big data pose to cartography, first let us dwell on some societal and scientific impact of the phenomenon, as this can provide a motivation for cartography to take part in addressing those issues. 

The definition of big data is elusive perhaps also because the majority of involved actors (as they are positioned in business) is more focused on building productive big data ventures, without much conceptual attention to the subject in itself. Then of course, the underlying technologies become a subject of marketing and engage in the infamous hype cycle (the forecasting company). So far there is no settled consensus around Big Data definition in the academia either, but as @kitchin2016makes predicts, the "genus" of Big Data will be further delineated and its various "species" identified. The question is if there is even a need for such **genealogic** approach.


TODOs:
-- More granular stuff in kitchin2014opportunities, more properites for comparison -- read and use later. (maybe copy the whole table, or produce something similar for cartographic preproduction) - not BD specific
-- also an appendix of graphical depiction of seven axes along witch selected datasets differ from "small data". **!!!** -- inspiration: <http://searchcloudcomputing.techtarget.com/definition/big-data-Big-Data> also read and proces also read and process. @rouse2014big
-- appendix on platforms: hadoop - map&reduce, spark and alternative dbs -- see: figure 16 and review from @paakkonen2015reference, see also @jin2015significance

## Footnotes

-- Big Data vs big data, data in plural or singular?
-- Moore's law
-- Gartner's hype cycle
-- map-reduce
-- how spark works 
-- no-sql vs post-sql
-- scalability

## Sources
