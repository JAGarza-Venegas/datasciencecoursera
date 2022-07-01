x <- 4L
class(x)
x<-c(4, "a", TRUE)
class(x)
x<-c(1,3,5)
y<-c(3,2,10)
cbind(x,y)
x<-list(2, "a", "b", TRUE)
x[[1]]
class(x[[1]])
x<- 1:4
y<-2
x+y
x<-c(3,5,1,10,12,6)
y<-x
y[y>=6] <-0
y
y<-x
y[y<=5] <-0
y
y<-x
y[y<6] <-0
y
y<-x

df <- read.csv("hw1_data.csv", header = TRUE)
colnames(df)

df[1:2,]

nrow(df)

df[47,]


bad <- is.na(df$Ozone)
length(bad)
onlygood <- bad[bad == TRUE]
length(onlygood)
mean(df$Ozone, na.rm = TRUE)


## Subset rows of the DF where Ozone > 31 and Temp > 90 and
## calculate the mean, in this subset, for Solar.R

ij<-complete.cases(df[])
dfWMV<-df[ij,]
dim(dfWMV)
SubSet<- dfWMV[dfWMV$Ozone > 31 & dfWMV$Temp>90,]
mean(SubSet$Solar.R)


mean(df$Solar.R[complete.cases(df[,]) & df$Ozone > 31 & df$Temp>90])
mean(df$Temp[df$Month == 6 & complete.cases(df[,])])
max(df$Ozone[df$Month == 5 & complete.cases(df[,])])
