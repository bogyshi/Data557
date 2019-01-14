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
lines(dnorm(x,0,1),type='l')
# as we can see, there is a heavier tail and smaller and flatter peak for the t distribution

#3
tSample = rt(10,3)
hist(tSample)
lines(dnorm(x,0,1),type='l')
#Unsure how I am supposed to compare this

#4
n=100
smallSample = (rnorm(n,0,1))
tSample = rt(n,3)
hist(smallSample)
hist(tSample)
#our normal historgram looks much more normal and true to its graph than our tdistribution generated values

#5

sampleMeans = numeric(200)
sampleSize = 10
for(i in 1:200)
{
  sampleMeans[i]=mean(rnorm(sampleSize,))
}
hist(sampleMeans)
