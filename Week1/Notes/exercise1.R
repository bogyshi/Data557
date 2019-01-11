#This is excersice 1 of the class.
#1
set.seed(123)
smallSample = (rnorm(10,0,1))
hist(smallSample)
qqnorm(smallSample)
abline(0,1)
#surprisingly, this does look rather normal! or at least the qqplot says so. The histogram does not look normal, more uniform if anything.

#2
x = seq(-4,4,.01)
plot(dt(x,3),type='l')
plot(dnorm(x,0,1),type='l')
