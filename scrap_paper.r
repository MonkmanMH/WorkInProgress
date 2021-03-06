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

data_agedistrib <- read_csv("./data_source/00510001-eng.csv")

ls.str(data_agedistrib)

unique(data_agedistrib$AGE)
unique(data_agedistrib$GEO)
unique(data_agedistrib$Ref_Date)
unique(data_agedistrib$SEX)


# define a list of the values in the field "AGE" that need to be dropped
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

# filter out the values
data_agedistrib01 <- data_agedistrib %>%
  filter(!AGE %in% drop.age.vals)

# check the list again
unique(data_agedistrib01$AGE)


# create a new variable age.num that converts the age variable to an integer 
# (instead of a string that has " year" AND no padding, so an alpha sort will yield inappropriate results)
# step 1: use gsub to replace " years" (and its variants) with blank in string
# step 2: set as.integer
data_agedistrib01$age.num <- gsub(" years", "", data2$AGE)
data_agedistrib01$age.num <- gsub(" year", "", data2$age.num)
data_agedistrib01$age.num <- as.integer(gsub(" and over", "", data2$age.num))
unique(data2$age.num)


#colnames(data_agedistrib01) <- c("year", "All.ages", 
#                                 "00", "01", "02", "03", "04", 
#                                 "05", "06", "07", "08", "09",
#                                 seq(10, 99, by = 1), "100+")

# turn the wide version of data_medianage into long format
#data_agedistrib01_long <- data_agedistrib01 %>%
#  gather(age, popul, -year) %>%
#  filter(age != "All.ages")

#head(data_agedistrib01_long)

# turn the wide version of data_medianage into long format, add pctage column

data_agedistrib01_long <- data_agedistrib01 %>%
  gather(age, popul, -year) %>%
  filter(age != "All.ages") %>%
  group_by(year, age) %>%
  summarise(popul = sum(popul)) %>%
  mutate(year_pct = (popul / sum(popul) * 100)) 

#head(data_agedistrib01_long)

data_totalpop_19712015 <- data_agedistrib01 %>%
  gather(age, popul, -year) %>%
  filter(age == "All.ages")
