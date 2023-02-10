library(here)

X <- readRDS(here("1. simulate","output", "X.rds"))

hist(X)
hist(X, breaks = 10)
hist(X, breaks = 50)
