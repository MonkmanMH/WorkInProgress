---
title: "migration_circleplot"
author: "Martin Monkman"
date: "July 29, 2016"
output: word_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Engagement State Migration

This uses the R package `circlize` to create a migration plot showing the volume of change from one engagement state to another between cycles of the WES.


[http://urbandemographics.blogspot.ca/2014/04/circular-migration-flow-plots-in-r.html]

[https://gjabel.wordpress.com/2016/05/18/updated-circular-plots-for-directional-bilateral-migration-data/]

[https://gjabel.wordpress.com/2014/03/28/circular-migration-flow-plots-in-r/]

[https://cran.r-project.org/web/packages/circlize/index.html]

[https://cran.r-project.org/web/packages/circlize/vignettes/circlize.pdf]

```{r package}

setwd("J:/TRANSFER/najs/Migration/2013-15/Development/circleplot_R")

library(circlize)


```
