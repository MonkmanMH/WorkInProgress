---
layout: post
title: "Defining data science"
date: 2016-02-24
---

What is "data science"? A google search of that question generates 460,000,000 hits, and the first page of that search is populated with a variety of inconsistent definitions. So, to add another to the pile, here's some of my thoughts as I try to make sense of this.

Nate Silver created a stir in his address to the Joint Statistical Meetings (JSM) in 2013 when he said "Data scientist is just a sexed up word for statistician." (Earlier in his address he'd said that he's not a statistician. But then again, neither am I, in spite of my job title.)

In 1962, the statistician John Tukey (author of the classic _Exploratory Data Analysis_) wrote that his central interest was in 
> data analysis, which I take to include, among other things: procedures for analyzing data, techniques for interpreting the results of such procedures, ways of planning the gathering of data to make its analysis easier, more precise or more accurate, and all the machinery and results of (mathematical) statistics which apply to analyzing data.

In 1974, Peter Naur published _Concise Survey of Computer Methods_, wherein he uses the term "data science". It took some time, but the term has really caught on lately.

The term as applied to an individual---a "data scientist"---doesn't appear until 2008.

(The above was drawn from Hannah Augur's recent post, ["Beginner's Guide to the History of Data Science"](http://dataconomy.com/beginners-guide-history-data-science/).)

So perhaps it's a good time to look at what's changed.

### The big data deluge

Data science is often spoken in the same breath as "big data". Which is also not a new thing; those gigabytes and megabytes were growing in the background until one day someone realized that we'll soon be dealing in yottabytes, and it wasn't just data anymore, it was "big data".

I think the UPC bar code is a perfect example of this shift. The UPC code was designed in the early 1970s as point-of-sale scanners were being adopted. This computerization was designed to improve business processes---instead of the clerk at the checkout punching in every price, the scanner did that work. Coupled with the increasing power and memory of computers, it also allowed stores to better track sales and inventory.

######![UPC bar code](http://images.all-free-download.com/images/graphiclarge/upca_bar_code_clip_art_16286.jpg)


Since then there has been exponential growth in the volume of data collected as part of business process.  And there have been similar expansions in how that data is used. The UPC codes have revolutionized supply chain management, and are used by stores to understand consumer behaviour. It’s not just “How many boxes of strawberry Pop Tarts are on the shelves?” or “How many boxes of strawberry Pop Tarts do we need to order?” but “What environmental conditions can be used to predict when shoppers will buy strawberry Pop Tarts?” [(Spoiler: hurricanes.)](http://www.nytimes.com/2004/11/14/business/yourmoney/what-walmart-knows-about-customers-habits.html)

And retailers are using information about what we buy to try to sell us more stuff---think of amazon’s “frequently bought together” and “customers who viewed this item also viewed” entires. 

Another thing that has changed is that in many cases data are updated frequently, and made available to analysts on the fly. This means that there is very little lag between the data collection and the analytic output. (Think of the GPS system in your car or on your phone.)

In parallel with big data, public agencies around the world are being more transparent by releasing more and more data, and making it available in formats that can be read by any computer. This supports transparency and accountability, and also provides a public good by allowing outside entities to use publically-collected data and information in other applications.


### The Data Science Process


So what does it take to make sense of all of this data? To collect it, shape it, analyze it, and draw from it intelligence and knowledge?

“Data scientist” is a term increasingly used to describe an individual with a range of skills necessary to make this happen. But what do data scientists _do_?

It turns out that Tukey was prescient. "Data science" as currently understood is a process that is essentially what he'd described over 50 years ago. My own thinking about this is:

1. Defining the research question
2. Collecting data
3. Data carpentry (a.k.a. tidying, munging, hacking)
4. Exploratory data analysis
5. Data modeling
6. Data visualization
7. Communication

Grolemund & Wickham's forthcoming book [_R for Data Science_](http://r4ds.had.co.nz/do-science-with-data.html) has the following diagram:

![A data science project](http://r4ds.had.co.nz/diagrams/data-science.png)

While this diagram is a good place to start thinking about how to approach the data science, it has some shortcomings. They have a) skipped the important first step of collecting data (it has to come from somewhere), b) assumed that the "Understanding" phase won't send you back to the "Tidy" step, and c) looped the "Understanding" phase. I would also argue that visualization is an important tool that applies to exploring, modeling, and communicating...it's not constrained to the "Understanding" phase.

(Note: statistics, as in the academic discipline, is one of the subject areas that a data scientist _absolutely_ needs to know. Knowledge of robust statistical methods supports accurate and informed EDA and modeling. These techniques and tools applied in these two phases of the data science process _are_ statistics, and a good practitioner of data science will benefit from advances in statistics. Contrary to some writers you may encounter, I don't believe that it is a "versus" thing, or that one is better than the other. Statistics makes good data science, and data science is one place that someone trained in statistics can become a practioner.)


Each of the five components separately:

#### 1. Defining the research question

Too often overlooked!

#### 2. Collecting data

* Three sources:
+ Pre-packaged
+ Administrative or business data
+ Original (e.g. survey)

Pre-packaged data: whether in the text book or from open data source (Statistics Canada, Data BC)

#### 3. Data carpentry

> Raw data is rarely usable for analysis without significant work. (Peter Mimno, ["Data carpentry"](http://www.mimno.org/articles/carpentry/))

Sometimes called "data hacking", "data wrangling", or "data munging", a better term is "data carpentry". Peter Mimno rightly points out that the other terms either mischaracterize the nature of the work, or are essentially meaningless. He continues:

> the process is more like deciding how to cut into a piece of material, or how much to plane down a surface. It’s not that there’s any real distinction between good and bad, it’s more that some parts are softer or knottier than others. Judgement is critical.

The other key point is that data are often messy. [The Quartz guide to bad data](https://github.com/Quartz/bad-data-guide) provides a rather comprehensive list of all the problems you might encounter on your road to the analysis.

There's a whole sub-topic on tidy vs. non-tidy (different than untidy!) data (see for instance Roger Peng's [blog entry of 2016-02-17](http://simplystatistics.org/2016/02/17/non-tidy-data/). That's a tangent for another day.


#### 4. Exploratory data analysis

Tukey

#### 5. Data modeling

Advanced statistical methods

Where computing power has really changed the game; expanded possibilities of techniques such as K-NN and Monte Carlo

(add machine learning, K-NN etc)


#### 6. Data visualization

An important component of understanding your data at the EDA and modeling, and in how the data's meaning is communicated



Data visualization is also an important component of the last stage of the data science process: communication.

#### 7. Communication



### The Role of R in Data Science

R won't help you collect data, but in the subsequent steps R is a great tool. Having been designed initially to facilitate exploratory data analysis and statistical modeling (i.e. statistics), packages have subsequently been created that provide the tools to quickly and efficiently undertake data carpentry and data visualization. 

As Roger D. Peng has put it, "The R programming language has become the de facto programming language for data science." (From the book "jacket blurb" for [_R Programming for Data Science_](https://leanpub.com/rprogramming).)

And as the dataviz and web display packages improve (e.g. the recent release of `ggplot2` v.2 was a big leap forward; yes it broke some of my code but the additional functionality is worth the trouble) R will only get better. 

Another sidebar: ggplot2 2.0.0 was released on 2016-01-01 [look up the correct date]. Since then there have been enough additions to warrant a 2.1.0 release; and meanwhile there are new extensions being added in the development version (e.g. [sub-title functionality by Bob Rudis](http://rud.is/b/2016/03/12/ggplot2%E3%81%A7%E5%AD%97%E5%B9%95-subtitles-in-ggplot2/?utm_content=buffer42831&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer).)

Future presentations will cover specific applications of R packages to the steps in a data science project.

### The role of technology

I just want to loop back to technology for a minute.

######![Navvies digging the Manchester Ship Canal](http://www.creativetourist.com/cms/wp-content/uploads/2016/01/PHM-Grafters-Industrial-society-in-image-and-word-@-Peoples-History-Museum.-Navvies-Manchester-Ship-Canal-by-W-E-Birtles-%C2%A9-Chethams-Library-smaller-472x264.jpg)

The people in this picture are “navvies”---the men who dug the canals that criss-cross Britain, which were an important part of the industrial revolution. The idea of canals was an old one, and the use of the steam train to move the dirt was an innovation that helped speed the construction of the [Manchester Ship Canal](http://www.victorianweb.org/history/work/sullivan/13.jpg).

But when it came to building the Panama Canal, human effort was insufficient---and the harnessing of steam power in a new way, with the steam shovel, was the technology that accelerated canal building.

######![Stereo pair of steam shovel digging the Panama Canal](http://cdn.loc.gov/service/pnp/cph/3c10000/3c17000/3c17200/3c17220r.jpg)
(source: [Library of Congress](https://www.loc.gov/item/96520543/))

The same is true with information technology---it can be used to accelerate the use of data, but it is _not_ the solution.

Simultaneous with the increased volume and variety of data that are being collected (and in some cases shared), we have more accessible technology to work with the data. This includes powerful desktop computers with lots of storage, networks and clouds to share the information, and advances in analytic tools.


### In closing:

> The scientific method guides data science. Data science solves known problems with the scientific method. (Grolemund & Wickham, [_R for Data Science_](http://r4ds.had.co.nz/do-science-with-data.html), chapter 20)


___

### Sidebar: I didn't make this up

This paper draws largely on: 

* the aforementioned Tukey (1962) paper;
* Drew Conway's blog entry ["The Data Science Venn Diagram"](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram); 
* Bob Hayes' blog piece ["Getting More Insights from Data: Nine Facts about the Practice of Data Science"](http://businessoverbroadway.com/getting-more-insights-from-data-nine-facts-about-the-practice-of-data-science); and
* Roger Peng's books on data science (see list in the References below).

Conway comes at the question from the perspective of the necessary skills. One of the opening remarks Conway made in the blog was "The difficulty in defining these skills is that the split between substance and methodology is ambiguous...". His solution was very clever---simply acknowledge that there _is_ an overlap between substance and methodology across disciplines.

He used three broad areas to define the skill necessary to do "data science":

* Hacking skills: the ability to take large sets of data and work with them so that they can be used to draw out key pieces of information

* Math & Statistics Knowledge: this is the academic discipline of statistics, and its applications in other disciplines (econometrics is statistics applied to economic research; psychometrics is the application of quantitative methods in psychology, etc.)

* Substantive Expertise:  this is “subject matter knowledge”, knowing enough about the topic at hand to be able to formulate meaningful research questions

Bob Hayes' blog piece ["Getting More Insights from Data: Nine Facts about the Practice of Data Science"](http://businessoverbroadway.com/getting-more-insights-from-data-nine-facts-about-the-practice-of-data-science) gets more specific and expansive:

1. Three skill groups: business, technology/programming, and statistics/math

2. Four types of data scientist: developer, researcher, creative, and business management

3. Proficiency in the skill groups varies by job type

4. "The scientific method is an effective way to approach data-intensive projects"

5. "Statistics skills, compared to other data skills, are good predictors of success of analytics projects"

6. People possessing all five skills in the three skill groups are rare

7. A team approach, where the members possess complementary skills, can provide a successful approach to doing data science 

8. We need more women in data science [ok, that's my own editorializing, as Hayes calls it "diversity". But as he notes, only 25% of data scientists are women]
 

My own perspective is close to Roger Peng's. It's interesting to note that even in the book _The Art of Data Science_ Peng and his co-author Elizabeth Matsui don't define "data science". They simply dive in and describe a process, one that looks very similar to what Tukey wrote about more than 50 years ago.


___

## References

Augur, Hannah (2016) ["Beginner's Guide to the History of Data Science"](http://dataconomy.com/beginners-guide-history-data-science/), Dataconomy.com, 2016-03-11 .

Barabba, V.P. (1990) “Through a Glass _Less_ Darkly”, Presidential Address at the Annual Meeting of the American Statistical Association, Aug. 7, 1990. Printed in the _Journal of the American Statistical Association_, [Volume 86, Issue 413, 1991] (http://amstat.tandfonline.com/doi/abs/10.1080/01621459.1991.10474995). (An [alternate version that is not behind a paywall is on the ASA website](asapresidentialpapers.info/documents/Barabba_1990_BAK_07-27-09.pdf), in the [Presidential Papers section](https://asapresidentialpapers.info/4a.html) {PDF}.)

Conway, Drew (2013) ["The Data Science Venn Diagram"](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram).

Darmon, David (2013?) ["Statistics, Data Science, and Silver"](http://thirdorderscientist.org/homoclinic-orbit/2013/8/11/statistics-data-science-and-silver), _Third Order Scientist_, 2013-08-11

Donoho, David (2015) ["50 years of Data Science"](http://courses.csail.mit.edu/18.337/2015/docs/50YearsDataScience.pdf), 2015-09-18.

Foreman, John W. (2014) _Data Smart: Using Data Science to Transform Information into Insight_. Wiley.

Franck, Christopher (2013) ["Is Nate Silver a Statistician?"](http://magazine.amstat.org/blog/2013/10/01/is-nate-silver/), _AmStatNews_, 2013-10-01.

Grolemund, Garrett and Hadley Wickham (2016), [_R for Data Science_](http://r4ds.had.co.nz/do-science-with-data.html)

Hayes, Bob (2015) ["Getting More Insights from Data: Nine Facts about the Practice of Data Science"](http://businessoverbroadway.com/getting-more-insights-from-data-nine-facts-about-the-practice-of-data-science), businessoverbroadway.com, 2015-12-14.

Hayes, Bob (2016) ["Top 10 Skills in Data Science"](http://businessoverbroadway.com/top-10-skills-in-data-science), businessoverbroadway.com, 2016-03-12.

Hays, Constance L. (2004) ["What Wal-Mart Knows About Customers' Habits"](http://www.nytimes.com/2004/11/14/business/yourmoney/what-walmart-knows-about-customers-habits.html), _New York Times_, 2004-11-14

Kennedy, Pagan (2013) ["Who Made That Universal Product Code?"](http://www.nytimes.com/2013/01/06/magazine/who-made-that-universal-product-code.html), New York Times, 2013-01-04.

Loukids, Mike (2010) ["What is data science? The future belongs to the companies and people that turn data into products."](https://www.oreilly.com/ideas/what-is-data-science), _o'reilly.com_ 2010-06-02.

Matloff, Norm (2016) ["Some Comments of Donoho's "50 Years of Data Science"](https://matloff.wordpress.com/2016/01/23/some-comments-on-donahos-50-years-of-data-science/), matloff.wordpress.com, 2016-01-23.

Mimno, David (2014) "Data carpentry", [blog entry at mimno.org](http://www.mimno.org/articles/carpentry/), 2014-08-19.

Naur, Peter (1974) _Concise Survey of Computer Methods_, Studentlitteratur.
(A summary of the book is [here](http://www.naur.com/Conc.Surv.html).)

New York University, Data Science Department (?) ["What is Data Science?"](http://datascience.nyu.edu/what-is-data-science/)

Ojeda, Tony; Sean Patrick Murphy; Benjamin Bengfort; and Abhijit Dasgupta (2014) _Practical Data Science Cookbook_, Packt Publishing.

Peng, Roger D. (2015) _Exploratory Data Analysis with R_, [Lean Pub](https://leanpub.com/exdata)

Peng, Roger D. (2014-2016) _R Programming for Data Science_, [Lean Pub](https://leanpub.com/rprogramming)

Peng, Roger D. (2015-2016) _Report Writing for Data Science in R_, [Lean Pub](https://leanpub.com/reportwriting)

Peng, Roger D. (2016) ["Non-tidy data"](http://simplystatistics.org/2016/02/17/non-tidy-data/), simplystatistics.org, 2016-02-17.

Peng, Roger D. and Elizabeth Matsui (2015) _The Art of Data Science: A Guide for Anyone Who Works with Data_, [Lean Pub](https://leanpub.com/artofdatascience).

Rickert, Joseph (2013) ["Nate Silver addresses assembled statisticians at this year's JSM"](http://blog.revolutionanalytics.com/2013/08/nate-silver-jsm.html), _Revolution Analytics_, 2013-08-08.

Saunders, Todd (2014) ["Data Science and Data Scientists: What’s in a Name?"](http://www.cbigconsulting.com/wp-content/uploads/2014/03/data-scientist.pdf), CBIG Counsulting, 2013-11-11

Schutt, Rachel & O'Neil, Cathy (2014) _Doing Data Science: Straight Talk From the Frontline_. O'Reilly.

Simply Statistics (2012) ["Schlep blindness in statistics"](http://simplystatistics.org/2012/05/28/schlep-blindness-in-statistics/), 2012-05-28.

Simply Statistics (2012) ["Statistics/statisticians need better marketing"](http://simplystatistics.org/2012/08/14/statistics-statisticians-need-better-marketing/), 2012-08-14.

Simply Statistics (2013) ["Data scientist is just a sexed up word for statistician"](http://simplystatistics.org/2013/08/08/data-scientist-is-just-a-sexed-up-word-for-statistician/), 2013-08-08.

Statistics Views (2013) ["Nate Silver: What I need from statisticians"](http://www.statisticsviews.com/details/feature/5133141/Nate-Silver-What-I-need-from-statisticians.html), _Statistics Views_,  2013-08-23.

Toomey, Dan (2014) _R for Data Science_, Packt Publishing.

Tukey, John (1962) "The Future of Data Analysis", [_The Annals of Mathematical Statistics_, 33-1, pp.1-67](https://projecteuclid.org/download/pdf_1/euclid.aoms/1177704711).

Tukey, John (1977) _Exploratory Data Analysis_, Addison Wesley.

Wickham, Hadley (2015) _Advanced R_, CRC Press.

Zumel, Nina and John Mount (2014) _Practical Data Science with R_, Manning.

-30-

___


Jim Collins, Good to Great:

> “Technology as an accelerator, not a creator, of momentum”
> 
> “Technology-induced change is nothing new. The real question is not, What is the role of technology? Rather, the real question is, 
> How do good-to-great organizations think differently about technology?” [p.147]
> 
> On Nucor’s success: “The primary factors ... were the consistency of the company, and our ability to project its philosophies 
> throughout the whole organization, enabled by our lack of layers and bureacracy.”  [p.156]
> 
> [Jim Collins, _Good to Great_]

___

> (http://discovery.nationalarchives.gov.uk/)
> Most of the Library's Belle Vue holdings are included in Discovery, the National Archives portal 
> where you should add "Belle Vue" and "Chetham's Library” to the search box for a detailed list.


![Navvies digging the Manchester Ship Canal](https://www.flickr.com/photos/101589379@N07/9797490684/in/photostream/)

