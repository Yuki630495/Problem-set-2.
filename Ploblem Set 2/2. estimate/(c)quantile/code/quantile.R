library(here)
install.packages("quantreg")
library(quantreg)

X <- readRDS(here("1. simulate","output", "X.rds"))
Z <- readRDS(here("1. simulate","output", "Z.rds"))

OLS <- lm(Z ~ X)
OLS

tau <- c(0.25, 0.5, 0.75)
quantile <- rq(Z ~ X, tau = tau)
quantile
