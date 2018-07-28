## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = FALSE, 
                      message = FALSE, warnings = FALSE)

## ---- echo=TRUE----------------------------------------------------------
a <- 3.5            # average morning wait time
b <- (-1)           # average difference afternoon wait time
sigma_a <- 1        # std dev in intercepts
sigma_b <- 0.5      # std dev in slopes
rho <- (-0.7)       # correlation between intercepts and slopes

## ---- echo=TRUE----------------------------------------------------------
Mu <- c( a , b )
cov_ab <- sigma_a * sigma_b * rho
Sigma <- matrix( c(sigma_a^2, cov_ab, cov_ab, sigma_b^2), 
                 ncol=2 )

## ---- echo=TRUE----------------------------------------------------------
N_cafes <- 20
library(MASS)
set.seed(5) # used to replicate example
vary_effects <- mvrnorm( N_cafes , Mu , Sigma )
a_cafe <- vary_effects[, 1]
b_cafe <- vary_effects[, 2]

## ---- echo=TRUE----------------------------------------------------------
N_cafes <- 20
N_visits <- 10
afternoon <- rep(0:1, N_visits * N_cafes / 2)
cafe_id <- rep( 1:N_cafes , each=N_visits )
mu <- a_cafe[cafe_id] + b_cafe[cafe_id] * afternoon
sigma <- 0.5  # std dev within cafes
wait <- rnorm( N_visits * N_cafes , mu , sigma )
d <- data.frame( cafe=cafe_id , 
                 afternoon=afternoon , wait=wait )

## ------------------------------------------------------------------------
library(ggplot2)
d0 <- data.frame(cafe=rep(1:20, 2),
                 afternoon=c(rep(0, 20), rep(1, 20)),
                 wait=c(a_cafe, a_cafe + b_cafe))
d0$Cafe <- paste("Cafe", d0$cafe)
d$Cafe <- paste("Cafe", d$cafe)
ggplot(d0, aes(afternoon, wait)) + geom_line() +
  facet_wrap(~ Cafe, ncol=4) +
  geom_point(data=d, aes(afternoon, wait), color="red") +
  ggtitle("Plot of Simulated Data from Varying Slopes/Varying Intercepts Model")

## ---- echo=TRUE----------------------------------------------------------
library(rethinking)
m13.1 <- map2stan(
  alist(
    wait ~ dnorm( mu , sigma ),
    mu <- a_cafe[cafe] + b_cafe[cafe] * afternoon,
    c(a_cafe, b_cafe)[cafe] ~ dmvnorm2(c(a, b), sigma_cafe, Rho),
    a ~ dnorm(0, 10),
    b ~ dnorm(0, 10),
    sigma_cafe ~ dcauchy(0, 2),
    sigma ~ dcauchy(0, 2),
    Rho ~ dlkjcorr(2)
  ) ,
  data=d ,
  iter=5000 , warmup=2000 , chains=2 )

## ------------------------------------------------------------------------
post <- extract.samples(m13.1)
names(post)

## ------------------------------------------------------------------------
library(coda)
plot(mcmc(cbind(post$sigma, post$sigma_cafe)))

## ------------------------------------------------------------------------
library(coda)
summary(mcmc(cbind(post$sigma, post$sigma_cafe)))

## ---- echo=TRUE----------------------------------------------------------
logpost <- function(theta_vector, data){
   theta <- theta_vector[1]
   tausq <- exp(theta_vector[2])
   ybar <- data[, 1]
   sigmasq <- data[, 2]
   sum(dnorm(ybar, theta, sqrt(sigmasq + tausq), 
             log=TRUE)) + log(tausq)
}

## ---- echo=TRUE----------------------------------------------------------
modelString = "
model {
for (i in 1:J){
y[i] ~ dnorm (mu[i], prec.y)
mu[i] ~ dnorm(theta, prec.mu)
}
prec.mu <- pow(tau2, -1)
tau2 ~ dunif(0, 100)
theta ~ dunif(0, 100)
}"
writeLines(modelString, con="normexch.bug")

