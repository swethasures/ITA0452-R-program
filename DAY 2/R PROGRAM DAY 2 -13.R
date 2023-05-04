data(iris)
#1
dim(iris)
str(iris)
summary(iris)
apply(iris[,1:4], 2, sd)
#2
aggregate(iris[,1:4], by=list(Species=iris$Species), mean)
aggregate(iris[,1:4], by=list(Species=iris$Species), sd)
#3
quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)
#4
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length), labels = c("Q1", "Q2", "Q3", "Q4"))
print(iris1)
#5
aggregate(iris1[,1:4], by=list(Species=iris1$Species, Sepal.Length.Cate=iris1$Sepal.Length.Cate), mean)
#6
iris$Sepal.Length.Cate <- ifelse(iris$Sepal.Length < mean(iris$Sepal.Length), 'Short', 'Long')
aggregate(cbind(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) ~ Species + Sepal.Length.Cate, data = iris, mean)
#7
library(reshape2)
iris_melted <- melt(iris, id.vars = c('Species', 'Sepal.Length.Cate'))
iris_pivot <- dcast(iris_melted, Species + Sepal.Length.Cate ~ variable, mean)
print(iris_pivot)


