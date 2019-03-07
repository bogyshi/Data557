lowMedsplit = 65123
medHighSplit = 80915
allData = read.csv('/home/bdvr/Documents/GitHub/Data557/finalProj/data/Filtered Data.csv')
print(names(allData))
hist(allData$Median.Household.Income)
lowIncome = allData[allData$Median.Household.Income<=lowMedsplit,]
medIncome = allData[allData$Median.Household.Income>lowMedsplit & allData$Median.Household.Income<=medHighSplit,]
highIncome = allData[allData$Median.Household.Income>medHighSplit,]

par(mfrow=c(1,3))
hist(lowIncome$Dogs.Cats,main = "Low Income Histogram of Dogs/Cats",xlab = 'dogs/cats ratio',breaks=c(0,0.8,1.6,2.4,3.0,3.75,4.5))
hist(medIncome$Dogs.Cats,main = "Medium Income Histogram of Dogs/Cats",xlab = 'dogs/cats ratio',breaks=c(0,0.8,1.6,2.4,3.0,3.75,4.5))
hist(highIncome$Dogs.Cats,main = "High Income Histogram of Dogs/Cats",xlab = 'dogs/cats ratio',breaks=c(0,1.0,1.5,2.0,2.5,3.0,3.5,5))

par(mfrow=c(1,3))
qqnorm(lowIncome$Dogs.Cats,main = "Normal QQ Plot of Low Income")
qqline(lowIncome$Dogs.Cats)
qqnorm(medIncome$Dogs.Cats,main = "Normal QQ Plot of Medium Income")
qqline(medIncome$Dogs.Cats)
qqnorm(highIncome$Dogs.Cats,main = "Normal QQ Plot of High Income")
qqline(highIncome$Dogs.Cats)
