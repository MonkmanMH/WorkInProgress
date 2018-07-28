## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, 
                      message = FALSE, warnings = FALSE)

## ------------------------------------------------------------------------
library(tidyverse)
d2017 <- filter(read_csv("may13.csv"), PA >= 50)

## ------------------------------------------------------------------------
ggplot(d2017, aes(PA, HR / PA)) + geom_point()

## ------------------------------------------------------------------------
fit_individual <- glm(HR ~ Player + offset(log(PA)),
                      family=poisson,
                      data=d2017)
d2017$rate_estimates <- exp(fit_individual$linear.predictors) /
                      d2017$PA

## ------------------------------------------------------------------------
fit_pool <- glm(HR ~ 1 + offset(log(PA)),
                family=poisson,
                data=d2017)
exp(coef(fit_pool)) 

## ------------------------------------------------------------------------
library(lme4)
fit_pp <- glmer(HR ~ (1 | Player) + 
              offset(log(PA)),
                family=poisson,
                data=d2017)

## ------------------------------------------------------------------------
fit_pp

## ------------------------------------------------------------------------
library(rstanarm)
fit_partialpool <- stan_glmer(HR ~ (1 | Player) + 
                                offset(log(PA)),
                              family=poisson,
                              data=d2017)

## ------------------------------------------------------------------------
prior_summary(fit_partialpool)

## ---- fig.height=4-------------------------------------------------------
posterior <- as.matrix(fit_partialpool)
ggplot(data.frame(Sigma=sqrt(posterior[, 325])), 
       aes(Sigma)) +
      geom_density()

## ---- echo=FALSE---------------------------------------------------------
shift_draws <- function(draws) {
  exp(sweep(draws[, -c(1, 325)], MARGIN = 1, 
        STATS = draws[, 1], 
        FUN = "+"))
}
Sim_Rates <- shift_draws(as.matrix(fit_partialpool))
Post_medians <- apply(Sim_Rates, 2, median)
d_estimates <- data.frame(PA = exp(fit_partialpool$offset),
                          Estimate = Post_medians,
                          Type="Partial Pool")
Estimates <- data.frame(PA = d2017$PA,
                        Estimate = d2017$rate_estimates,
                        Type="Individual")

## ---- echo=FALSE---------------------------------------------------------
ggplot(rbind(d_estimates, Estimates), 
       aes(PA, Estimate, color=Type)) + geom_point() +
  geom_smooth(se=FALSE)

## ------------------------------------------------------------------------
library(lme4)
library(rstanarm)
fit <- glmer(cbind(Hits, AB - Hits) ~ (1 | Player),
      family=binomial, data=bball1970)

