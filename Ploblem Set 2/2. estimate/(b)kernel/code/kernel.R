library(here)

X <- readRDS(here("1. simulate","output", "X.rds"))

plot(density(X))
plot(density(X, bw = 10))
plot(density(X, bw = 100))