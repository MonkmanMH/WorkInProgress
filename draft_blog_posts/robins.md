# Same name, different bird

What do we mean when we see a bird and say that it's a robin? A simple description would be a small brownish bird with a red breast. But that's a superficial description, and when we say "robin" what we mean depends on your location; you don't have to look very closely to see that the European and American robins are fundamentally different. The European robin (_Erithacus rubecula_) is an Old World flycatcher, catching insects on the wing. 
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Erithacus_rubecula_with_cocked_head.jpg/1280px-Erithacus_rubecula_with_cocked_head.jpg" 
    alt="European robin" width="600">
(_Source: Wikipedia_)


The American robin (_Turdus migratorius_) is a thrush, and eats earthworms and other invertebrates, along with fruits and berries.
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Turdus-migratorius-002.jpg/1280px-Turdus-migratorius-002.jpg" alt="American robin" width="600">
(_Source: Wikipedia_)

(The naming of the American robin is a classic case of ["The Captain's Hat"](https://www.youtube.com/watch?v=dOBhf8f7cXM); European explorers and colonists arriving in other parts of the world and naming things in a way that isn't necessarily accurate.)

***

Similarly, what do we mean when we say "data scientist"? 

Here's a tweet by JD Long:
<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Why does data science exist as “a thing”? I postulate: the transaction costs of getting stats, biz, &amp; dev people working together outweigh the gains from specialization. This has been wildly misunderstood by management consultants who fetishize gains from specialization.</p>&mdash; JD Long (@CMastication) <a href="https://twitter.com/CMastication/status/1126457956269285376?ref_src=twsrc%5Etfw">May 9, 2019</a></blockquote>

The second tweet in his thread was the one that caught my attention:
<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Data Science got initial traction inside of small firms &amp; startups that needed fast iteration &amp; could not support specialists in data, stats, hacking &amp; biz. They grew up this hybrid that combines domains and doesn’t specialize. In large orgs there becomes friction w specialists.</p>&mdash; JD Long (@CMastication) <a href="https://twitter.com/CMastication/status/1126458904060276736?ref_src=twsrc%5Etfw">May 9, 2019</a></blockquote>

Eric Colson's paper at HBR (2019-03-08), [Why Data Science Teams Need Generalists, Not Specialists](https://hbr.org/2019/03/why-data-science-teams-need-generalists-not-specialists), provides a compelling argument the generalist data scientist provides significant value to the organization, particularly small organizations.

Explicit in both Long and Colson's statements is that there are two different types of data scientists: the generalist and the specialist.

I want to go further in refining this typology, and postulate (based on my own anecdotal observations) some of the differences between the two.

### Generalists

Generalists can be found, as JD Long has noted, in smaller organizations. 

The academic backgrounds of data scientists tend to be [Statistics](https://sharla.party/) (as a discipline), or they are people with a quantitative bent from (for want of a better term) subject matter disciplines, such as [Astronomy](https://juliasilge.com/resume/), [Economics](https://medium.com/@metjush/4-reasons-why-economists-make-great-data-scientists-and-why-no-one-tells-them-524478845ec2), [Geography](http://personal.tcu.edu/kylewalker/projects.html), and [Psychology](https://psyr.org/).

This tends to position them smack dab in the middle of [Drew Conway's famous Venn diagram](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram):
<img src="https://static1.squarespace.com/static/5150aec6e4b0e340ec52710a/t/51525c33e4b0b3e0d10f77ab/1364352052403/Data_Science_VD.png?format=750w">

They bring subject matter expertise, foundational statistical knowledge, and some pragmatic programming skills.

The work of the generalist tends to follow the full sequence of a typical data science project as envisioned by Grolemund and Wickham in [_R for Data Science_](https://r4ds.had.co.nz/index.html):

<img src="https://d33wubrfki0l68.cloudfront.net/795c039ba2520455d833b4034befc8cf360a70ba/558a5/diagrams/data-science-explore.png" 
    alt="the data science process" width="400">
    
I would go further, and argue that data scientists can (and perhaps should!) be involved earlier in the process, providing insights and expertise to the framing of the research question and the data collection phase. I am supported in this thinking by Stephanie Hicks and Roger Peng, whose recent paper ["Elements and Principles of Data Analysis"](https://arxiv.org/abs/1903.07639) (2019-03-18) includes the following definition of data science:

> Data science is the science and design of (1) actively creating a question to investigate a hypothesis with data, (2) connecting that question with the collection of appropriate data and the application of appropriate methods, algorithms, computational tools
or languages in a data analysis, and (3) communicating and making decisions based on
new or already established knowledge derived from the data and data analysis.
_(p.2)_

And following this line of thinking, I have observed that generalist data scientists tend to favour R as their tool of choice. Roger Peng (a biostatistician) has said "The R programming language has become the de facto programming language for data science." R was developed first as a programming environment in which to do statistics, so many of the defaults and behaviours are optimized around how statisticians and subject-matter practitioners tend to think about their data analysis problem.

R's foundational data structures are mathematical and statistical in nature: vectors, matricies, and data frames. As well, base R has a plethora of statistical functionality built in--for example, t tests, regression models, and statistical distributions.



### Specialists

The specialist data scientist is a different creature. They tend to have a degree in Computer Science or Computational Statistics, often at the graduate level. In Drew Conway's Venn diagram, they tend to be very deep on the "hacking skills", with less emphasis on the statistics (as a discipline) or subject matter expertise.

Their work seems to fall largely on the "exploration" phases, with a strong emphasis on the "modeling" part of the data science process. They work with tidy, pre-processed data, often as part of an automated data processing flow from collection through analysis and modeling, to communication (which might also included automated feedback to points earlier in the process).

Because of their computer science backgrounds, these data scientists, in general, favour Python as their programming environment of choice. Python is a programming language first, to which data analytics packages (such as the [{pandas} data analysis package](https://pandas.pydata.org/)) has been added. 

Roger Peng and Hilary Parker touch on these differences in their podcast [Not So Standard Deviations 81](http://nssdeviations.com/81-getting-to-yes-with-data-analysis). Their nomenclature uses "statistician" for what I've called "generalist", and "data scientist" for "specialist". Starting at 25' 00" through 30' 00", they first discuss sampling and how that's not something that a specialist would think about (supporting my contention that the specialist emphasis is not on tried-and-true statistical methods). Peng summarizes the "data science mindset" regarding sampling as follows:

> If I use all the data then I'm doing Big Data, but if I'm sampling then I'm just a Statistician.

Hilary Parker adds another dimension to the typology: 

> Data scientists working in tech...are really quick to say "I need to spin up this infrastructure to do _this_" \[They ask\] "What big data tool can deal with this problem?", rather than \[what a statistician might ask\] "Does the confidence interval really need to be this small for this application?" And \[for specialists\] there's a certain joy with building out the infrastructure.



Kareem Carr goes further, and parses what I've described as a dichotomy into four separate categories:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Big data: Create huge datasets. Insights will be obvious!<br><br>Data science: Play with data. Visualize it. Insights will be obvious!<br><br>Machine learning: Feed data into cool algorithms. Insights will be obvious!<br><br>Statistics: The insights will never obvious.<a href="https://twitter.com/hashtag/epitwitter?src=hash&amp;ref_src=twsrc%5Etfw">#epitwitter</a> <a href="https://twitter.com/hashtag/statstwitter?src=hash&amp;ref_src=twsrc%5Etfw">#statstwitter</a></p>&mdash; 🔥Kareem Carr🔥 (@kareem_carr) <a href="https://twitter.com/kareem_carr/status/1132311323218501632?ref_src=twsrc%5Etfw">May 25, 2019</a></blockquote>

If I am interpreting this correctly, in my typology the "big data" and "machine learning" are part of the specialist group, and "data science" and "statistics" are generalists.




### Summary

Characteristic | Generalist | Specialist
--- | --- | ---
academic background | Statistics, social science, physical science | Computer Science, Computer Engineering, Computational Statistics
Venn diagram emphasis | subject matter, statistics | hacking
Data science project | start-to-finish | exploration
language | R | Python



***

### The view from a small organization

I work in a small data analytics organization, and lead a crack team of data scientists. Like myself, they fit the "generalist" typology--although computer science courses have been part of our training, we don't hold degrees in that area.

An example of our workflow can be shown in the example of an employee survey. Our process used to look like this:

<img src="survey_workflow_1.png" 
    alt="survey workflow: past" width="600">
    
[_source: modified from Andy Teucher and Stephanie Hazlitt_](https://github.com/bcgov/bcgov-rstats-public-presentations/tree/master/2018-11-05_UBC_GEM580)

Data was extracted from the human resources database; we relied on database administrators from outside our organization to do this for us. This formed the survey frame, which was used in our survey software to administer the survey; the survey data then flowed into SPSS, where it was joined with demographic values from the HR database. Manipulation and modelling occured in three programs: SPSS, Excel, and Stata. 

The reporting to the clients was in the form of summary tables in Excel, along with PDF and HTML versions of documents written in Word. Note that programmers outside the organization were responsible for automating the production of these outputs, which have consistent structure and vary only by department.

Now it looks like this:

<img src="survey_workflow_2.png" 
    alt="survey workflow: future" width="600">
[_source: modified from Andy Teucher and Stephanie Hazlitt_](https://github.com/bcgov/bcgov-rstats-public-presentations/tree/master/2018-11-05_UBC_GEM580)

The data scientists in our organization can write (in R) code that pulls the extract from the database which is used for the survey frame. They deploy the survey to collect the data, and then use R to wrangle and model the survey data--work that was done in a variety of other tools. The data scientists have also written R code (using the [{xlsx} package](https://github.com/colearendt/xlsx)), and creates a variety of outputs including Excel, PDF, and (coming soon) web-based reports (using [Shiny](https://shiny.rstudio.com/)).



### Growing data science in a small data-centric organization

The challenge: growing generalist data science practice. The people in your organization are already busy working on data-centric analytic tasks, whether that's calculating growth rates, adjusting monthly data points for seasonality, or determining if there are differences between demographic groups in survey respondents in how they answered the questions.  

By "growing data science practice" I mean adopting [Opinionated Analysis Development](https://peerj.com/preprints/3210/), making their work more effective and efficient through practices that are reproducible and auditable, accurate, and collaborative. R, and the surrounding elements of the R ecosystem, clearly support this direction.

My understanding of the sub-sets of generalists has been coloured by the presentation given by Aimée Gott at the EARL Conference in Seattle (2018-11-07). (You can find a [video of an earlier presentation she gave at the European R Users Meeting (eRum), 2018-05-18](https://www.youtube.com/watch?v=0Y1jRwMBElc), which included the same groups.)

Super Users: 
* self-directed learning based on problem-solving mindset, often driven by inate urge to find efficiencies

* need to empower them, find 

Future Super Users -- "generally interested in R, people who want to get knowledge. Will take every course that's available.

The Casual Users: the person who will happily do analysis and write scripts, but won't go further (eg workflow, functions, packages)

* how do we interact with them? What gets tehm excited?

The Copy, Paste, Tweak-er: I'm going to figure out which line of your code will change the colour. Main doers of every day analytics. Probably never going to get them to build an R package.


Liz Matthews, ["How to grow your own data scientists: a practical guide for the data-driven C-Suite"](https://www.hrzone.com/talent/development/how-to-grow-your-own-data-scientists-a-practical-guide-for-the-data-driven-c#.XO0MXbwbtig.twitter), hrzone.com, 2019-05-28

_ELABORATE_

### Plugging data science into a large data-centric organization

Two challenges: 

* growing generalist data science practice in the specialist areas.

* fitting the specialists into an existing workflow

_ELABORATE_


### Generalists in large organizations

And yes, they exist. How can they co-exist with specialist data scientists?


### It's not just the people

Key point: data scientists of both stripes need a robust tech platform. Not rejecting IT, but need something different than app development

(similarity to dev ops -- tweet in JD Long's thread)


### Leadership

Leaders of data scientists need to be able to empower their teams

A significant part of that leadership is being the person to [work through and around the Giant Hairball, and help the team overcome the gravity of the Hairball](https://github.com/bcgov/bcgov-rstats-public-presentations/blob/master/2018-11-07_EARL_Seattle/Overcoming_gravity.md)



### A biased view

Of course, there is significant bias in the Euro- and North American-centric definition of what defines a "robin". (As I don my Captain's Hat.) In the same way that there is a [Japanese robin](https://en.wikipedia.org/wiki/Japanese_robin) and a [Siberian blue robin](https://en.wikipedia.org/wiki/Siberian_blue_robin) (below), my view of what defines a "data scientist" might also be too narrow.

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Luscinia_cyane_-_Khao_Yai.jpg/1024px-Luscinia_cyane_-_Khao_Yai.jpg" alt="Siberian blue robin" width="600">
(_Source: Wikipedia_)



## Notes

[PDF](robins_notes.pdf) 
