Defining Big Data
-----------------

> *Small data are slow and sampled. Big Data are quick and n=all.* @kitchin2016makes

> *This chapter outlines the defining properties of big data, focusing on characteristics with possible implications for cartographic practice. and also explains the evoulution of the concept through the review of related work.*

## Ontological characteristics (*big* stands for *fast* and *exhaustive*)

Despite the lively interest triggered by the concept in recent years, the explanation of the term *big data* remains hazy and there is no widely accepted unifying definition to the date. Perhaps the most successful effort in this matter is a taxonomy composed by @kitchin2014data (refined in @kitchin2016makes) that summarizes the key properties attributed to big data. Kitchin critically assesses these properties and goes on to assign them relative importance in distinguishing big from "small" data. He also takes care to separate the concept in itself from accompanying social phenomena, hence he speaks of *ontological* characteristics.
This provides a useful starting point for our thinking of big data from the cartographic standpoint, so let us list the ontological characteristics including some Kitchin's comments:

* **Volume** -- can be measured in storage requirements (terabytes or petabytes) or in number of records
* **Velocity** -- generation happens in real-time either constantly (e.g. CCTV) or sporadically (e.g. web search), we can distinguish the frequency of generation from the frequency of data *handling*, *recording*, and *publishing*, all three can be delayed from the time of generation
* **Variety** -- heterogeneous in nature, though this property is rather weak as various levels of organization are allowed (*structured*, *semi-structured* or *unstructured*)
* **Exhaustivity** -- an entire system is captured (*n=all*), rather than being sampled
* **Resolution and indexicality** -- fine-grained (in resolution) rather than being aggregated and uniquely indexical (in identification) which enables linking with other datasets
* **Relationality** -- containing common fields that enable the conjoining of different datasets
* **Extensionality and scalability** -- flexibility of data generation, possibility to add or change new fields easily, possibility to rapidly expand in size

The above parameters, as well as their cartographic implications, will be discussed more in depth in chapter 3, but here it is important to mention two open questions that for many people make attempts to define big data vague at best, sometimes to the point of questioning the existence of the phenomenon itself.

First, there are no thresholds that would define exactly how large is "big" volume, how fast is "big" velocity, and so on. It is possible that this will clear out with time but these thresholds may as well remain blurry and ever in flux.

The second problem is that even if we had a clearly defined set of criteria, in practice we could hardly find a data set that would fit all of them. Therefore not all properties are deemed mandatory which in turn leads to confusion and labeling almost anything as big data. Here we can hold on to Kitchin's (@kitchin2016makes) argument who sees *velocity* and *exhaustivity* as qualities that set Big Data apart and distinguish them from "small" data. We can add that these two characteristics also present the most interesting challenges to cartographic presentation of such data. So even though we will continue to use the established term in the following text, the little too simplistic adjective "big" will be meant as a proxy for "fast and exhaustive in **size**".

## Other accounts on big data

The term big data was fist used in context of dealing with massive datasets in mid-1990s by John Mashey, retired former Chief Scientist at the Silicon Graphics company (@diebold2012personal). In this section we briefly review the writing of other authors that revolves around defining big data. From the breadth of works, several tendencies can be identified, providing more or less illuminating views at the topic. (for an alternative summary of definitions see @gandomi2015beyond)

**Vs and keywords**

The Kitchin's taxonomy mentioned in the previous section is based on a review of older definitions, starting from the often-cited alliteration of three Vs (standing for *volume*, *velocity*, and *variety*) by @laney20013d. The notion of *exhaustivity* was added by @mayer2013big, concepts of *resolution* and *indexicality* came from @dodge2005codes, @boyda2012critical adds *relationality*, and the qualities of *extensionality* and *scalability* were taken from @marz2015big (in earlier 2012 MEAP Edition -- how to cite? footnote?).

Other properties attributed to big data include *veracity* (the data can be messy, noisy and contain uncertainty and error) and *value* (many insights can be extracted and the data can be repurposed) both brought forward by @marr2014big, and *variability* (meaning of data is shifting in relation to the context in which they are generated) identified by David Hopkins in relation to text analysis (@brunnelli2011will).

Laney's 3 Vs were brought into commercial management-speak and became a slogan further powering the hype of big data. Nevertheless, it inspired a number of other authors to extend it creatively. For example @uprichard2013focus lists other v-words to be associated with big data, both in positive (*versatility*, *virtuosity*, *vibrancy*...) and negative (*valueless*, *vampire-like*, *violating*...) light. @marr2014big describes five Vs of big data, @van20133v sees seven Vs, @boellstorff2015introduction propose three Rs and @lupton2015thirteen even uses thirteen p-words to describe the subject. As @kitchin2016makes notes, these additional v-words and new p-words are often descriptive of a broad set of issues associated with big data, rather than characterising the ontological traits of data themselves.

**Technical infrastructure-based definitions** 

"thinking of BD as of a management issue"

Several authors conceptualize big data from more technical standpoint, using as a measure the computational difficulties of storing and processing the data on a single machine. One example for all is @storm2012big quoting Hillary Mason: “Big Data usually refers to a dataset that is too big to fit into your available memory, or too big to store on your own hard drive, or too big to fit into an Excel spreadsheet.” 

The problem with such definitions is determining exactly what size is "too big to fit". The computational power of accessible hardware is constantly increasing (Moore's law) and new technologies emerge to address the issue -- for example remote cloud storage (AWS, GCE), platform as a service (Heroku, Openshift), and so on. **list more here, and better terminology**, virtualization of storage, networking, memory, distributed database storage, post-SQL databass (hadoop, appache spark), map-reduce...

The "too big to fit" definitions are therefore highly dependent on the resources currently available. That being said, understanding the subject as *data that prevent local offline processing on common desktop in reasonable time* is a useful shorthand for judging big from "small" data. The threshold between local (offline) and remote (cloud-dependent) processing exists even though it is a blurry and dynamic one. It can be best advised to consider the scalability of data-processing workflows early on -- as some problems... (nejaky zdroj o problemoch zo skalovatlnostou).

@marz2015big see downoalds -- other technical accounts

**Definitions by example**

A very common account on big data goes along the lines of "I will give you some numbers and you will get what I mean". Such writing may not provide an exact understanding of the concept, but can put us into context about the scales we are moving at. There were several attempts to estimate the World's overall data generation as a whole (**TODO find sources**). Doubtlessly the mass of retained data is growing, as @mcnulty2014understanding put it in 2014, 90% of all data ever created was generated in the past 2 years (in 2014). Setting aside the question of by what methods this can be established, such claims, if not useful, surely are impressive.

Rather than putting up to a gargantuan task of counting the mass of all possible data items, authors point out the available statistics of large companies (e.g. @kambatla2014trends, @mcnulty2014understanding, @marr2014big and others). For example, Facebook was said to process 10 billion messages, 4.5 billion button clicks and 350 million picture uploads each day (@marr2014big). It goes without saying these numbers are outdated am probably outgrown (???) today. 

Other companies prominently mentioned in context of big data are Google, Wallmart, or Amazon. This is justified, as these companies also have put user/customer data analytics to the core of their businesses, fuelling the progress in the field. Social media, web search and browsing data, on-line or off-line shopping patterns, but also mobile devices, sensors and large scientific projects are mostly thought of as generators of big data to be leveraged.

**Metaphoric acconuts**
"mythology of big data"

Metaphores nad comparisions do not come with exactness or robustness, though they illustrate how people think about the phenomenon.

Authors with social science background take notes of the thoughts and beliefs associated with big data.

-- @puschmann2014big identified two conceptual metaphors prevailing in to date accounts on Big Data: as a natural force to be controlled and as a resource to be consumed.

More metaphoric accounts:
@manyika2013open -- liquid metaphor
-- other metaphors:

-- on metaphors @lupton2013swimming, also @lupton2015managing -- self-tracking and quantified self


**Holistic, prcess-based**

Handling, process-based, holistic:
@murthy2014big -- taxonomy focused on data handling:
-- data: a) temporal latency for analysis (real-time, near real-time, batch), b) structure (structured, semi-structured, unstructured)
-- compute infrastructure: batch or streaming
-- storage infrastructure: sql, nosql, newsql
-- analysis: supervised, semisupervises, unsupervised or re-enforcement machine liearning
-- visualisation: maps, abstract, interactive, real-time (**here be the focus of this work**)
-- privacy and security: data privacy, management, security


**As a social phenomenon** (here also sceptical views)

Often times, big data is described indirectly by the impacts, real or imagined, it has on the society.

Concluding with the societal impact. For some authors, the debate on perfect definition of big data may be dismissed as unproductive. The popularity of the term itself may diminish like many other new technologies that become part of the typical hype cycle (see Gartner repors 2017, 2016 etc.). Even though the technological industry is largely fasion-driven, its societal impacts are real (even though unevenly distributed...). And just because something is hyped, it does not mean we can or should ignore it (see @jagadish2015big, also for debunking some common myths about big data).

To mayer2013big big data stands for "the ability of society to harness information in novel ways to produce useful insights or goods and services of significant value". Here, more than an exact definition, is important the societal impacts that are likely to stay even when the big data hype is over. About such impacts is the following chapter.


@gandomi2015beyond -- list of risks in bb-based predictive analytics: heterogenity, noise accumulation, spurious correlations, incidental endogeneity  

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

## Sources
