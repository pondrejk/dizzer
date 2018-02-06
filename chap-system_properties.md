Visualisation system properties
-------------------------------

# 2 aims of the system:

1. aim common to all visualisation techinques -- become a human interface to data. Easy to grasp, explorable and comparable overview of massive data.
2. specific to cartographic visualisation -- and analytic interface, aims to derive new information by exploring spatial properties of data -- analyzing spatial parametes, exploring correlations with other spatial data (environmental properties) -- finding spatial correlations, both simple visual comaparison or more rigorous techniques.

NB: Should I consider cartographic reaction to technical facilities of a scalable realtime data system? (or better use it in discussion on backend, and backend-frontend discussion)

@marz2015big :

- robust and fault-tolerant
- low latency reads and updates
- scalable
- general
- extensible
- allows ad hoc queries
- minimal maintenance
- debuggable

Lambda architecture: Speed layer, serving layer, batch layer

# queries = interaction between backend and frontend
@heer2008generalized


# Basic functionality
-- zooming on existing features

# Dualities in big data mapping system -- clear out

-- frontend vs backend
-- figure vs ground (thematic "overlay" vs spatial conext (jak je po anglicky topografický podklad?))
-- geometry vs symbolization vs attached data
-- expression vs content plane
-- intrasignification vs extrasiginification


# on Continuous streams of spatial data:

-- @sellismanaging Managing Streaming Spatial Data (pdf in dropbox) -- http://datachallenges.isti.cnr.it/2011/files/Sellis.pdf
-- Real-time sensor data streams @nittel2015real
-- gertz2006data -- data model for streaming service
-- hershberger2009summarizing -- cluster hulls for summarization
-- maybe @kazemitabar2010geospatial o2002streaming

# types of loads ... @kambatla2014trends

Workload Characteristics. Comprehensive study of big-data workloads can help understand their implications on hardware and software design. Inspired by the seven dwarfs of numerical computation [32], Mehul Shah et.al. [90] attempt to define a set of “data dwarfs” — meaning key data processing kernels — that provide current and future coverage of data-centric workloads. Drawing from an extensive set of workloads, they establish a set of classifying dimensions (response time, access pattern, working set, data type, read vs write, processing complexity) and conclude that five workload models could satisfactorily cover data-centric workloads as of 2010: 

(i) distributed sort at petabytes scale
(ii) in-memory index search
(iii) recommendation system, featuring high processing load and regular communication patterns
(iv) sequential-access-based data de-duplication
(v) video uploading and streaming server at interactive response rates. 

While Online Analytic Processing (OLAP) workloads can readily be expressed as a combination of (i), (iii) and (iv), Online Transaction Processing (OLTP) workloads can only be partially captured and might require another category in the fu- ture – in-memory index and query support capture some facets of these workloads, but the working sets can become too large to fit in memory.

--data dwarfs? -- @shah2010data data processing kernels (meaning workflow) --  possible to define also some visualisation related kernels like this?
-- porovnanie -- rast computing power (... law), vs. rast poctu dat, vs, rast kognitivnej kapacity


# spatial mocking service ...

# technical stuff ... see also chapter figures-ground
.. proper report after a prototype is done

