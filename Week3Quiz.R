library(datasets)
data(iris)
?iris
## Mean of Sepal.Length by species.
tapply(iris$Sepal.Length, iris$Species, mean)
## Mean by columns.
apply(iris[,1:4],2, mean)
## Average miles per gallon by number of cylinders.
data(mtcars)
head(mtcars)
res<-sapply(split(mtcars$mpg, mtcars$cyl), mean)
res2<- tapply(mtcars$hp, mtcars$cyl, mean)
with(mtcars, tapply(mpg,cyl,mean))

abs(res2[1] - res2[3])

