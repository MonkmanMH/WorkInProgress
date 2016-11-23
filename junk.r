# load the necessary packages
# data manipulation
library(readr)
library(tidyr)
library(dplyr)
# graphics
library(ggplot2)
library(scales)
# tables
library(xtable)
# install necessary packages
# utilities
library(zoo)


# PLOTTING ESSENTIALS

# create a chart theme & colour palette for use in ggplot2
# this theme is the basic background for a BC Stats chart
#
theme_BCStats <- 
  theme_bw() +
  theme(
    panel.border = element_rect(colour="white"),
    axis.line = element_line(colour="black"),
    legend.position=c(1,0), 
    legend.justification=c(1,0),
    legend.title = element_text(size=12),
    legend.text = element_text(size=11),
    axis.title = element_text(size=16),
    axis.text = element_text(size=16),
    plot.title = element_text(size=18)
  )
#

# colour palette for BC Stats charts (use with scale_colour_manual)
palette_BCStats <- c("#234275", "#E3A82B", "#26BDEF", "#11CC33", "#D3E2ED", "8A8A8A")

# grayscale for fill (use with scale_fill_manual)
palette_BCStats_fill <- c("#3F3F3F", "#ABABAB", "#DFDFDF", "#969696", "#838383", "8A8A8A")



```



```{r, echo=FALSE, message=FALSE}

# read the data
#setwd("C:/@data/GitHub/BC_demography")
setwd("C:/@data/GitHub/BC_demographic_trends")
#

data_agedistrib01 <- read_csv("./data_source/00510001-eng.csv")

ls.str(data_agedistrib01)

unique(data_agedistrib01$AGE)
unique(data_agedistrib01$GEO)
unique(data_agedistrib01$Ref_Date)
unique(data_agedistrib01$SEX)


drop.age.vals <- c("All ages", "0 to 4 years", "5 to 9 years",
                   "10 to 14 years", "15 to 19 years", 
                   "20 to 24 years", "25 to 29 years", 
                   "30 to 34 years", "35 to 39 years", 
                   "40 to 44 years", "45 to 49 years", 
                   "50 to 54 years", "55 to 59 years", 
                   "60 to 64 years", "65 to 69 years", 
                   "70 to 74 years", "75 to 79 years", 
                   "80 to 84 years", "85 to 89 years", 
                   "90 to 94 years", "95 to 99 years",
                   "0 to 14 years", "0 to 15 years", "0 to 16 years", "0 to 17 years",
                   "15 to 49 years", "15 to 64 years", "16 to 64 years", "17 to 64 years",
                   "18 years and over", "18 to 64 years", "18 to 24 years", "25 to 44 years",
                   "45 to 64 years", "65 years and over", "90 years and over", 
                   "Median age (years)")

data2 <- data_agedistrib01 %>%
  filter(!AGE %in% drop.age.vals)

unique(data2$AGE)


gsub(" years", "", "0 years")

