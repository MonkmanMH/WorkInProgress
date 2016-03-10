---
layout: post
title: "Defining data science"
date: 2016-02-24
---

What is "data science"? A google search of that question generates 460,000,000 hits, and the first page of that search is populated with a variety of inconsistent definitions. So, to add another to the pile, here's some of my thoughts as I try to make sense of this.

### Is data science just a new name for applied statistics?

Nate Silver created a stir in his address to the Joint Statistical Meetings (JSM) when he said "Data scientist is just a sexed up word for statistician." (He's earlier said that he's not a statistician. But then again, neither am I, in spite of my job title.)

And nearly a quarter-century prior, V.P. Barabba noted that there's overlap between the work of a statistician.

So perhaps it's a good time to look at what's changed.

### The big data deluge

Data science is often spoken in the same breath as "big data". Which is also not a new thing; those gigabytes and megabytes were growing in the background until one day someone realized that we'll soon be dealing in yottabytes, and it wasn't just data anymore, it was "big data".

I think the UPC bar code is a perfect example of this shift. The UPC code was designed in the early 1970s as point-of-sale scanners were being adopted. This computerization was designed to improve business processes---instead of the clerk at the checkout punching in every price, the scanner did that work. Coupled with the increasing power and memory of computers, it also allowed stores to better track sales and inventory.

######![UPC bar code](http://images.all-free-download.com/images/graphiclarge/upca_bar_code_clip_art_16286.jpg)


Since then there has been exponential growth in the volume of data collected as part of business process.  And there have been similar expansions in how that data is used. The UPC codes have revolutionized supply chain management, and are used by stores to understand consumer behaviour. It’s not just “How many boxes of strawberry Pop Tarts are on the shelves?” or “How many boxes of strawberry Pop Tarts do we need to order?” but “What environmental conditions can be used to predict when shoppers will buy strawberry Pop Tarts?” [(Spoiler: hurricanes.)](http://www.nytimes.com/2004/11/14/business/yourmoney/what-walmart-knows-about-customers-habits.html)

And retailers are using information about what we buy to try to sell us more stuff---think of amazon’s “frequently bought together” and “customers who viewed this item also viewed” entires.

In parallel with big data, public agencies around the world are being more transparent by releasing more and more data, and making it available in formats that can be read by any computer. This supports transparency and accountability, and also provides a public good by allowing outside entities to use publically-collected data and information in other applications.


### Defining data science

So what does it take to make sense of all of this data? To collect it, shape it, analyze it, and draw from it intelligence and knowledge?

“Data science” is a term increasingly used to describe a range of skills necessary to make this happen.

Nearly three years ago, Drew Conway created a blog entry ["The Data Science Venn Diagram"](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram) wherein he started to define what constitutes data science. 

One of the opening remarks Conway made in the blog was "The difficulty in defining these skills is that the split between substance and methodology is ambiguous...". His solution was very clever---simply acknowledge that there _is_ an overlap between substance and methodology across disciplines.

He used three broad areas to define the skill necessary to do "data science":

* Hacking skills: the ability to take large sets of data and work with them so that they can be used to draw out key pieces of information

* Math & Statistics Knowledge: this is the academic discipline of statistics, and its applications in other disciplines (econometrics is statistics applied to economic research; psychometrics is the application of quantitative methods in psychology, etc.)

* Substantive Expertise:  this is “subject matter knowledge”, knowing enough about the topic at hand to be able to formulate meaningful research questions

Bob Hayes' blog piece ["Getting More Insights from Data: Nine Facts about the Practice of Data Science"](http://businessoverbroadway.com/getting-more-insights-from-data-nine-facts-about-the-practice-of-data-science) gets more specific:
1. Three skill groups: business, technology/programming, and statistics/math
2. Four types of data scientist: developer, researcher, creative, and business management
3. Proficiency in the skill groups varies by job type
4. "The scientific method is an effective way to approach data-intensive projects"
5. "Statistics skills, compared to other data skills, are good predictors of success of analytics projects"
6. People possessing all five skills in the three skill groups are rare
7. A team approach, where the members possess complementary skills, can provide a successful approach to doing data science 
8. We need more women in data science (ok, that's my own editorializing, but only 25% of data scientists are women)


### The role of technology

I just want to loop back to technology for a minute.

######![Navvies digging the Manchester Ship Canal](http://www.creativetourist.com/cms/wp-content/uploads/2016/01/PHM-Grafters-Industrial-society-in-image-and-word-@-Peoples-History-Museum.-Navvies-Manchester-Ship-Canal-by-W-E-Birtles-%C2%A9-Chethams-Library-smaller-472x264.jpg)

The people in this picture are “navvies”---the men who dug the canals that criss-cross Britain, which were an important part of the industrial revolution. The idea of canals was an old one, and the use of the steam train to move the dirt was an innovation that helped speed the construction of the [Manchester Ship Canal](http://www.victorianweb.org/history/work/sullivan/13.jpg).

But when it came to building the Panama Canal, human effort was insufficient---and the harnessing of steam power in a new way, with the steam shovel, was the technology that accelerated canal building.

######![Stereo pair of steam shovel digging the Panama Canal](http://cdn.loc.gov/service/pnp/cph/3c10000/3c17000/3c17200/3c17220r.jpg)
(source: [Library of Congress](https://www.loc.gov/item/96520543/))

The same is true with information technology---it can be used to accelerate the use of data, but it is _not_ the solution.

Simultaneous with the increased volume and variety of data that are being collected (and in some cases shared), we have more accessible technology to work with the data. This includes powerful desktop computers with lots of storage, networks and clouds to share the information, and advances in analytic tools.


___

## References

Barabba, V.P. (1990) “Through a Glass _Less_ Darkly”, Presidential Address at the Annual Meeting of the American Statistical Association, Aug. 7, 1990. Printed in the _Journal of the American Statistical Association_, [Volume 86, Issue 413, 1991] (http://amstat.tandfonline.com/doi/abs/10.1080/01621459.1991.10474995).

Conway, Drew (2013) ["The Data Science Venn Diagram"](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram).

Darmon, David (2013?) ["Statistics, Data Science, and Silver"](http://thirdorderscientist.org/homoclinic-orbit/2013/8/11/statistics-data-science-and-silver), _Third Order Scientist_, 2013-08-11

Foreman, John W. (2014) _Data Smart: Using Data Science to Transform Information into Insight_. Wiley.

Franck, Christopher (2013) ["Is Nate Silver a Statistician?"](http://magazine.amstat.org/blog/2013/10/01/is-nate-silver/), _AmStatNews_, 2013-10-01.

Hayes, Bob (2015) ["Getting More Insights from Data: Nine Facts about the Practice of Data Science"](http://businessoverbroadway.com/getting-more-insights-from-data-nine-facts-about-the-practice-of-data-science), businessoverbroadway.com, 2015-12-14.

Kennedy, Pagan (2013) ["Who Made That Universal Product Code?"](http://www.nytimes.com/2013/01/06/magazine/who-made-that-universal-product-code.html), New York Times, 2013-01-04.

Loukids, Mike (2010) ["What is data science? The future belongs to the companies and people that turn data into products."](https://www.oreilly.com/ideas/what-is-data-science), _o'reilly.com_ 2010-06-02.

New York University, Data Science Department (?) ["What is Data Science?"](http://datascience.nyu.edu/what-is-data-science/)

Peng, Roger D. (2015) _Exploratory Data Analysis with R_, Lean Pub (https://leanpub.com/exdata)

Peng, Roger D. (2014-2016) _R Programming for Data Science_, Lean Pub (https://leanpub.com/rprogramming)

Peng, Roger D. (2015-2016) _Report Writing for Data Science in R_, Lean Pub (https://leanpub.com/reportwriting)

Peng, Roger D. and Elizabeth Matsui (2015) _The Art of Data Science: A Guide for Anyone Who Works with Data_, Lean Pub (https://leanpub.com/artofdatascience).

Rickert, Joseph (2013) ["Nate Silver addresses assembled statisticians at this year's JSM"](http://blog.revolutionanalytics.com/2013/08/nate-silver-jsm.html), _Revolution Analytics_, 2013-08-08.

Schutt, Rachel & O'Neil, Cathy (2014) _Doing Data Science: Straight Talk From the Frontline_. O'Reilly.

Simply Statistics (2012) ["Schlep blindness in statistics"](http://simplystatistics.org/2012/05/28/schlep-blindness-in-statistics/), 2012-05-28.

Simply Statistics (2012) ["Statistics/statisticians need better marketing"](http://simplystatistics.org/2012/08/14/statistics-statisticians-need-better-marketing/), 2012-08-14.

Simply Statistics (2013) ["Data scientist is just a sexed up word for statistician"](http://simplystatistics.org/2013/08/08/data-scientist-is-just-a-sexed-up-word-for-statistician/), 2013-08-08.

Statistics Views (2013) ["Nate Silver: What I need from statisticians"](http://www.statisticsviews.com/details/feature/5133141/Nate-Silver-What-I-need-from-statisticians.html), _Statistics Views_,  2013-08-23.

Hays, Constance L. (2004) ["What Wal-Mart Knows About Customers' Habits"](http://www.nytimes.com/2004/11/14/business/yourmoney/what-walmart-knows-about-customers-habits.html), _New York Times_, 2004-11-14

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

