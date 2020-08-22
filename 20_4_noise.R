n <- 100
x <- runif(n,min = -20,max=20)
a_star <- runif(1,max=5)
b_star <- runif(1,max=5)
sigma_sq <- runif(1,max=3)
noise <- rnorm(n,sd=sqrt(sigma_sq))
y <- a_star + b_star * x + noise
plot(x,y)
beta_hat <- lm(y~x)
points(x,beta_hat$coefficients['(Intercept)'] + beta_hat$coefficients['x']*x)