library(here)

ln_X <- readRDS(here("1. simulate", "output", "ln_X.rds"))
Y <- readRDS(here("1. simulate", "output", "Y.rds"))

probit <- glm(Y ~ ln_X , family = binomial(link = "probit"))
probit

linear <- lm(Y ~ ln_X)
linear
