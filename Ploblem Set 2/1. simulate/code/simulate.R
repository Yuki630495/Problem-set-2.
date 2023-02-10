set.seed(630495)
ln_X <- rnorm(100, mean = 3, sd = sqrt(2))
X <- exp(ln_X)
error <- rnorm(100, mean = 0, sd = 1)

Y <- c()
for (i in 1:100) {
  if(ln_X[i] + error[i] >= 4) {
    Y <- c(Y,1) } else {
    Y <- c(Y,0) }
}

Z <- (0.1*X - 0.3*X^3 +0.5*X^5 - 0.7*X^7)

saveRDS(error, "error.rds")
saveRDS(ln_X, "ln_X.rds")
saveRDS(X, "X.rds")
saveRDS(Y, "Y.rds")
saveRDS(Z, "Z.rds")
