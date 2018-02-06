Outline
---------

Introduction

Defining Big Data
-- Ontological charcteristics of BD
-- Other accounts on BD

Some Impacts of Data Abundance
-- on science, society, business, etc.

Cartographic theory vs. BD
-- Spatial attributes of BD
-- Tackling velocity, extensionality and scalability
-- Tackling volume and exhaustivity
-- Tackling resolution, indexicality and ratioality

Cartographic system for BD visualization
-- Aims and properties
-- Functionality
-- Technical aspects, frotend/backend tooling
-- Usability aspects, analytic features, interaction

Case study 1

Case study 2

Discussion & Conclusion













What is Big Data
-----------------

  *This chapter outlines the defining properties of Big Data and suggests their hirarch, and also explains the evoulution of the concept through the review of related work.*

```
Small data are slow and sampled. Big Data are quick and n=all. @kitchin2016makes
```
 
## Ontological chatacteristics (*big* means *fast* and *exhaustive*)

This thesis builds on a taxonomy composed by @kitchin2014data, @kitchin2016makes that, based on an extensive review, sums up the key ontological properties attributed to Big Data.

* **Volume** -- measured in storage requirements (terrabytes or petabytes) or in number of records  
* **Velocity** -- data created in real-time (continually or sporadically), we can distinguish the frequency of generation from the frequency of handling, recording, and publishing  
* **Variety** -- data heterogenous in nature, structured, semi-structured or unstructured
* **Exhaustivity** -- an entire system is captured, n = all, rather than being sampled
* **Resolution and indexicality** -- fine-grained (in resolution) rather than being aggregated and uniquely indexical
(in identification) which enables linking with other datasets
* **Relationality** -- (containing common fields that enable the conjoining of different datasets)
* **Extensionality and scalability** -- flexibility of data generation, can add/change new fields easily, can expand in size rapidly, can adapt to  varying data flow -- more a property of the infrastructure than the data itself

The above parameters, as well as their cartographic implications, will be discussed more in depth in chapter 3, but here it is important to mention two open questions that for many people make attempts to define Big Data very vague at best, sometimes to the point of questioning the existence of the phenomenon itself.

First, there are no tresholds that would define exacly how large is "big" volume, how fast is "big" velocity, and so on. I extpect that the answer will just come with time, probably from a systematic analysis of a sufficient number of case studies, but these tresholds may as well remain blurry and ever in flux.

The second problem is that even if we had a clearly defined set of criteria, in practice we could hardly find a data set that would fit all of them. Therefore not all properties are deemed mandatory which in turn leads to confusion when almost anything is labeled as Big Data. Here again I will hold on to @kitchin2016makes argument wo sees *velocity* and *exhaustivity* as qualities that set Big Data apart and distinguish them from "small" data. I can add that these two characteristics also present most interesting challenges to cartographic presentation of such data. So even though I will continue to use the established term, the little childish adjective "big" is really a proxy for "fast and exhaustive".

To borrow Kitchin's example <http://blogs.lse.ac.uk/impactofsocialsciences/2014/06/27/series-philosophy-of-data-science-rob-kitchin/> (cite), even though census data are huge in volume, it has very slow velocity being generated once every ten years, weak variety consisting of structured questions, no flexibility or scalability, therefore not Big Data. "In contrast, in 2012 Facebook was processing 2.5 billion pieces of diverse content (links, comments, audio and video clips, etc), 2.7 billion ‘Like’ actions and 300 million photo uploads per day and Wal-Mart was generating more than 2.5 petabytes (250 bytes) of data relating to more than 1 million customer transactions every hour.  These are systems that can be altered on the fly, with new forms of content and metadata fields added, and can cope with large ebbs and flows in data generation."  -- skrátiť :P

It could be said that the most imprortant point of this chapter was made in the initial citation. Though it is a bit harder, simply because the majority of field (the business) is more focused on building productive Big Data ventures, without much conceptual attention to the subject matter. There is no settled consensus around BD defintion in the academia either, but as @kitchin2016makes predicts, the "genus" of Big Data will be further delineated and its various "species" identified.

TODOs:
-- More granular stuff in kitchin2015opportunities, more properites for comparison -- read and use later. (maybe copy the whole table, or produce something similar for cartographic preproduction)
-- also an appendix of graphical depiction of seven axes along witch selected datasets differ from "small data". **!!!** -- inspiration: <http://searchcloudcomputing.techtarget.com/definition/big-data-Big-Data> also read and proces also read and process. @rouse2014big

## Other attempts to define Big Data

The term *Big Data* was fist used in context of dealing with massive datasets in mid-1990s by John Mashey, retired former Chief Scientist at Silicon Graphics (@diebold2012personal).

Kitchin's taxonomy mentioned above is based on a review of previous definitions, starting from the catchy and often-cited alliteration three Vs (standing for *volume*, *velocity*, and *variety*) by @laney20013d. The notion of *exhaustivity* was added by @mayer2013big, concepts of *resolution* and *indexicality* came from @dodge2005codes, @boyd2012critical adds *relationality*, and the qualities of *extensionality* and *scalability* were taken from @marz2015big (in earlier 2012 MEAP Edition -- how to cite? footnote?).
 
Other properties attributed to Big Data include *veracity* (the data can be messy, noisy and contain uncertainty and error) and *value* (many insights can be extracted and the data repurposed) both brought forward by @marr2014big, and *variability* (data whose meaning can be constantly shifting in relation to the context in which they are generated -- I mean variance in meaning, in lexicon. Specific to language processing -- same word can have different meanings based on context) identified by David Hopkins (@brunnelli2011will).

More on *value* -- the potential market value is potentially huge ("The potential value of Big Data is huge. Speaking about new Big Data initiatives in the US healthcare system last year, McKinsey estimated if these initiatives were rolled out system-wide, they “could account for $300 billion to $450 billion in reduced health-care spending, or 12 to 17 percent of the $2.6 trillion baseline in US health-care costs”. However, the cost of poor data is also huge- it’s estimated to cost US businesses $3.1 trillion a year. In essence, data on its own is virtually worthless. The value lies in rigorous analysis of accurate data, and the information and insights this provides." says @mcnulty2014understanding link on McKinsey <http://www.mckinsey.com/industries/healthcare-systems-and-services/our-insights/the-big-data-revolution-in-us-health-care>), but it "has the potential to cost unlimited amounts of money" @fischer2015why.

The metaphor of 3 Vs attracted a lot of attention and became a rather oversimplifying slogan further powering the hype of Big Data. @uprichard2013focus "it is too full of commercial management-speak for my liking."

@uprichard2013focus lists other v-words that have also been associated wits Big Data, both in positive (*versatility*, *virtuosity*, *vibrancy*...) and negative (*valueless*, *vampire-like*, *violating*..) light. @marr2014big describes five Vs of Big Data, @van20133v sees seven Vs, @boellstorff2015introduction propose three Rs and @lupton2015thirteen even uses thirteen p-words to describe the subject. As @kitchin2016makes notes, "these additional v-words and new p-words are often descriptive of a broad set of issues associated with Big Data, rather than characterising the ontological traits of data themselves".

There are also attempts to conceptualize Big Data from more technical standpoint, using as a measure the computational difficulties for storing and processing the data on a single machine. One example for all is @storm2012big quoting Hillary Mason: “Big Data usually refers to a dataset that is too big to fit into your available memory, or too big to store on your own hard drive, or too big to fit into an Excel spreadsheet.” The problem with such definitions (bit blurry) is determining exactly what size is "too big to fit" especially as the computational power of accessible hardware is constantly increasing and other technologies emerge to address the issue -- remote cloud storage, platform as a service, etc. The above definition then becomes relative, depending on the resources available (as anything).

@kambatla2014trends @marz2015big -- technical accounts

@manyika2013open -- liquid metaphor
-- other metaphors:
-- @puschmann2014big identified two conceptual metaphors prevailing in to date accounts on Big Data: as a natural force to be controlled and as a resource to be consumed.
-- on metaphors @lupton2013swimming, also @lupton2015managing -- self-tracking and quantified self
-- has it anything to do with the metaphor of liquid society?? (new book by ECO + other accounts)


@murthy2014big -- taxonomy focused on data handling:
-- data: a) temporal latency for analysis (real-time, near real-time, batch), b) structure (structured, semi-structured, unstructured)
-- compute infrastructure: batch or streaming
-- storage infrastructure: sql, nosql, newsql
-- analysis: supervised, semisupervises, unsupervised or re-enforcement machine liearning
-- visualisation: maps, abstract, interactive, real-time (**here be the focus of this work**)
-- privacy and security: data privacy, management, security



