# Learning

2 roles of recommendation systems in visualisation:
-- recommendation system based on formalized design (cartographic) knowledge, helping to pick appropriate visualisation method for decision making
-- but when decision making is largely outsourced to machine recommendation system (that does not need visualisations to perform tasks (see task overview in prev chapter)) then the visualisation can be used to understand how the machine decision was made (seeing machines think, e.g. check visualisation of tensor flow networks talk .. cite)

In both ways, visualisation literacy is important: (on vis literacy: @boy2014principled, @pandey2015deceptive).

Machine learning could bypass the need to address cognitive limitations (what kinds of task are mlearnable, also what are the tasks/questions that can be meaningfully answered? -> via negativa, non-predictive view of the world), how the design of ineractions could help with cognitive limitations. 

-- also misunderstanding, weaponization, etc.

@moritz2019formalizing
----------------------

-- formalizing design knowledge to be reusable across projects
-- existing automated design tools -- @mackinlay1986automating, @wongsuphasawat2016voyager -- not much carto stuff though
-- interseting vis assessment papers to consider: @kim2018assessing, @saket2018task -- conceptually good but not clear if applcable to cartography

We view the constraints in Draco as the starting point of an evolving knowledge base of design considerations for researchers and tool de- signers to extend and use. Hard constraints must be satisfied (e.g., shape encodings cannot express quantitative values), whereas soft constraints express a preference (e.g., temporal values should use the x-axis by default). By changing the weights associated with soft constraints, we can trade off the relative importance of these preferences.

Mackinlay’s APT system @mackinlay1986automating automatically designs graphical representations of relational data using *expressiveness* and *effectiveness* criteria to prune and rank encoding choices. A visualization is considered **expressive** if it conveys all the facts in the data, and only the facts in the data. A visualization is considered most **effective** when the information it conveys is more readily perceived than with other visualizations.

We use a simple task classification into **value tasks** for reading and comparing values and **summary tasks** for comparing ensembles. (most older research focusing on the first type, more recently reading of aggregates (@gleicher2013perception), trends(@harrison2014ranking), and ensambles (@szafir2016four) has been tested).

Vega-Lite enables concise descriptions of visualizations by encoding data as properties of graphical marks. The language is inspired by other high-level visualization languages such as Wilkinson’s Grammar of Graphics [64], Wickham’s ggplot2 [63], and the VizQL formalism
underlying Tableau (@hanrahan2006vizql). Vega-Lite represents single plots using a set of encoding definitions that map data fields to visual channels such as position, color, shape, and size. Encodings may include common data transformations such as binning, aggregation, sorting, and filtering. Vega-Lite was specifically designed to facilitate search and inference over the space of possible visualizations. <https://vega.github.io/vega-lite/docs/>

Constraint-Based Knowledge Representation -- not sure if needed for me.
-- ASP answer set programming (rather than declarative p.) -- The declarative nature of constraint programming allows users to focus on modeling high-level knowledge, while delegating low-level algorithmic details to off-the-shelf constraint solvers. (they use Clingo library as a solver)

Learning preferences -- To improve expressivity and extensibility, Draco leverages domain
knowledge from experts (in the form of soft constraints) as visualization features.  Draco’s preference model forms a Markov logic network (MLN) (@richardson2006markov), where the weights corresponding to soft constraints are learnable parameters reflecting preference levels.

Modern constraint solvers efficiently search for optimal visualization specifications within a defined space. Imperative systems, which use an exhaustive *generate and test method*, couple knowledge representation and the algorithm for finding effective designs.

**The goal of a visualization model is to distinguish desirable visualizations from undesirable ones.** In Draco, our visualization model consists of two parts: the space of all visualizations considered valid, and an evaluation function over the space to measure preferences. -- my note.: systems like draco aim to select a subset of basic visualisation techniques (bar charts, scatterplots) to eliminate nonsesnse charts (potential risk with manual selection by unexperienced users) and also prepares some hierearchizations. This finds best use in "dashboard" systems for coordinated view data exploration. For in-map use it seems to be much harder (though not impossible) to specify *hard* and *soft* constraints for these reasons:
-- it is harder to formalize all that contibutes to cognition from maps, unlike basic charts almost all maps have some base geographical base that can support or interfere with thematic data overlay.
-- even once a cartographic method is selected, there is a myriad ways to tune it's appearance that have significant effects on the final effectivnes. So it is not only about constraint based selection but also machine-learning based "configuration" or visual appropriation of the selected method
-- especially in BD area, it is not only cognitive optimization that plays role, processing and rendering load come to place. These parameters can do the selection for us -- e.g. in case of real time point streams it is hesagonal binning, and we (as cartographers) than can apply constraint based techniques to learn the best way to implement it in the map field

oni to ale vlastne asi sami priznavaju:

Because the effectiveness of a visualization can depend on low-level features not captured in a high-level specification (for example, over-plotting), we can imagine applying a re-ranking strategy in which Draco enumerates a number of top-scoring candidate designs (ranked by high-level features) that are then re-ranked by another learned classifier operating on low-level features that may be impractical to model directly in ASP. The sub-symbolic models learned by such classifiers could constitute another valuable form of visualization design knowledge to represent and share.

think about this (still from constraints paper):
* Visualization researchers can disseminate their results as constraints to make them more easily accessible by visualization designers; in a declarative system, designers might use more nuanced models that would otherwise be too complex to maintain. We contend that software engineering and developer productivity should be given more attention in the visualization community.  Human designers should focus on the design of the visualization design space and preferences rather than the design of search algorithms that are already available in domain-independent constraint solvers.

-- to consider:

With sufficient data, it may even be possible to go beyond learning weights and attempt to learn preference rules themselves. The AI community uses inductive logic programming methods to infer logic programs from databases of positive and negative examples @quinlan1990learning. To learn from noisy data (common in the visualization domain!), we could combine inductive logic programming with statistical models such as Markov logic networks.  For example, Law et al.’s ILASP (Inductive Learning of Answer Set Programs) (@law2014inductive) is a logic-based learning system that can learn preferences in answer set programs. To understand differences in preferences represented by two or more distinct data sources, we can use multi-objective (Pareto) optimization in ASP to enumerate designs that map the trade-off frontier.


# Interaction and beyond

what questions to ask

- cartographic concepts applicable in UI design and vice versa (TODO some reading on UX)
-- visual weight, negative space, generalization of ui components 

- tighter coupling of intra and extracomposition
-- legend 
-- do some design and usability reading (don't make me think, check some books on product design...) <https://www.fastcompany.com/1292961/30-most-important-books-product-designers>
-- user personas, user stories...
