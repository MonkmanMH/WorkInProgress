### ---
#
# from @expersso

set.seed(894)  # number of regular season NHL goals Wayne Gretzky scored 

x <- replicate(10000, sum(sample(0:1, 20, TRUE, c(0.945, 0.055))))

table(ifelse(x == 0, "Team A win", ifelse(x == 1, "Draw", "Team B win"))) / 100

### ---

library(tidyverse)

x <- as.tibble(x)

x %>%
  group_by(value) %>%
  tally()

### --- plot

ggplot(data=x, aes(value)) + 
  geom_histogram(binwidth = 1, fill = "white", colour = "black") +
  scale_x_continuous(breaks=seq(0,8,1)) +
  theme(panel.grid.major.x = element_blank()) +
  labs(x = "goals per 20 shots",
       y = "number of games (out of 10,000",
       title = "Distribution of games by number of goals scored",
       subtitle = "20 shots per game each with 5.5% chance of scoring",
       caption = "source: a question @nnstats posed on twitter")

