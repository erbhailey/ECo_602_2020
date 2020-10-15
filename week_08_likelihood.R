# we'll be calculating likelihoods using probability 
# distributions and their parameter values


# likelihood of a single observation is proportional 
# to the value of the probability density/mass function.
# Likelihood of multiple independent observations is 
# proportional to the product of individual likelihoods.

# maximum likelihood (ML) is a criterion for selecting a model. 
# the likelihood of a collection of observations is 
# measured as the sum of log-likelihoods of individual
# observations in a dataset. ML selects for the model 
# parameters that maximize the sum of log-likelihoods. 

# Likelihood is calculated from the probability
# density/mass functions. 



# dpois() can be used to calculate the probability mass
# for a single value given a Poisson dist. with lambda = 4.5
dpois(x = 2, lambda = 4.5)
# prob of observing 2 is 0.1125
dpois(x = 2, lambda = 4.5) * dpois(x = 6, lambda = 4.5)
# prob of observing both values is smaller

wiwa_counts = c(2,6)
dpois(x = wiwa_counts, lambda = 4.5) # list of probabilities
prod(dpois(x = wiwa_counts, lambda = 4.5)) # product of probabilities

sum(log(dpois(x = wiwa_counts, lambda = 4.5)))
# this is the sum of log likelihoods

dat_bird = read.csv(here::here("data", "bird.sta.csv"))
dat_habitat = read.csv(here::here("data", "hab.sta.csv"))
dat_all = merge(dat_bird, dat_habitat)

hist(dat_all$WIWA)

wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.5)
sum(log(dpois(x = wiwa_counts, lambda = 4.000)))
# value of 4 maximizes sum of log likelihoods


dat_all$WIWA
dpois(x = dat_all$WIWA, lambda = 1)
sum(log(dpois(x = dat_all$WIWA, lambda = 1.670))) # this is max
mean(dat_all$WIWA)


wiwa <- dat_all$WIWA
logical <- as.numeric(wiwa!=0)
sum(logical)
length(logical)
summary(wiwa)
quantiles <- c(0, 1, 2, 2, 6)
mean(wiwa)

sum(logical)/length(logical)

sum(log())
sum(log(dbinom(x = wiwa, size = length(wiwa), prob = 0.8843212)))






