# Same name, different bird

What do we mean when we see a bird and say that it's a robin? Superficially, the European robin and the American robin are similar--brownish birds with a red breast. But a lot depends on your location; you don't have to look very closely to see that they are fundamentally different. The European robin (_Erithacus rubecula_) is an Old World flycatcher, catching insects on the wing. 
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Erithacus_rubecula_with_cocked_head.jpg/1280px-Erithacus_rubecula_with_cocked_head.jpg" 
    alt="European robin" width="400">
(_Source: Wikipedia_)


The American robin (_Turdus migratorius_) is a thrush, and eats earthworms and other invertebrates, along with fruits and berries.
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Turdus-migratorius-002.jpg/1280px-Turdus-migratorius-002.jpg" alt="American robin" width="400">
(_Source: Wikipedia_)

(The naming of the American robin is a classic case of ["The Captain's Hat"](https://www.youtube.com/watch?v=dOBhf8f7cXM); European explorers and colonists arriving in other parts of the world and naming things in a way that isn't necessarily accurate.)

***

Similarly, what do we mean when we say "data scientist"? 

Here's a tweet by JD Long:
<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Why does data science exist as “a thing”? I postulate: the transaction costs of getting stats, biz, &amp; dev people working together outweigh the gains from specialization. This has been wildly misunderstood by management consultants who fetishize gains from specialization.</p>&mdash; JD Long (@CMastication) <a href="https://twitter.com/CMastication/status/1126457956269285376?ref_src=twsrc%5Etfw">May 9, 2019</a></blockquote>

The second tweet in his thread was the one that caught my attention:
<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Data Science got initial traction inside of small firms &amp; startups that needed fast iteration &amp; could not support specialists in data, stats, hacking &amp; biz. They grew up this hybrid that combines domains and doesn’t specialize. In large orgs there becomes friction w specialists.</p>&mdash; JD Long (@CMastication) <a href="https://twitter.com/CMastication/status/1126458904060276736?ref_src=twsrc%5Etfw">May 9, 2019</a></blockquote>

Eric Colson's paper at HBR (2019-03-08), [Why Data Science Teams Need Generalists, Not Specialists](https://hbr.org/2019/03/why-data-science-teams-need-generalists-not-specialists), provides a compelling argument the generalist data scientist provides significant value to the organization, particularly small organizations.

Implicit in both Long and Colson's positions is that there are two different types of data scientists: the generalist and the specialist.

I want to go further in this typology, and postulate (based on my own anecdotal observations) some of the differences between the two.

Generalists can be found, as JD Long has noted, in smaller organizations. 

The academic backgrounds of data scientists tend to be [Statistics](https://sharla.party/) (as a discipline), or they are people with a quantitative bent from (for want of a better term) subject matter disciplines, such as [Astronomy](https://juliasilge.com/resume/), [Economics](https://medium.com/@metjush/4-reasons-why-economists-make-great-data-scientists-and-why-no-one-tells-them-524478845ec2), [Geography](http://personal.tcu.edu/kylewalker/projects.html), and [Psychology](https://psyr.org/).

This tends to position them smack dab in the middle of [Drew Conway's famous Venn diagram](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram):
<img src="https://static1.squarespace.com/static/5150aec6e4b0e340ec52710a/t/51525c33e4b0b3e0d10f77ab/1364352052403/Data_Science_VD.png?format=750w">

They bring subject matter expertise, foundational statistical knowledge, and some pragmatic programming skills.

The work of the generalist tends to follow the full sequence of a typical data science project as envisioned by Grolemund and Wickham in [_R for Data Science_](https://r4ds.had.co.nz/index.html):

<img src="https://d33wubrfki0l68.cloudfront.net/795c039ba2520455d833b4034befc8cf360a70ba/558a5/diagrams/data-science-explore.png" 
    alt="the data science process" width="400">
    
I would go further, and argue that data scientists can (and perhaps should!) be involved earlier in the process, providing insights and expertise to the framing of the research question and the data collection phase.

And following this line of thinking, I have observed that generalist data scientists tend to favour R as their tool of choice. Roger Peng (a biostatistician) has said "The R programming language has become the de facto programming language for data science." R was developed first as a programming environment in which to do statistics, so many of the defaults and behaviours are optimized around how statisticians and subject-matter practitioners tend to think about their data analysis problem.

The specialist data scientist is a different creature. They tend to have an advanced degree in Computer Science or Computational Statistics, and work largely on the "modeling" part of the process.


