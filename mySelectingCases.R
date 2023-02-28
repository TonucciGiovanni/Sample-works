library(datasets)

hist(iris$Petal.Length)
summary(iris$Petal.Length)
summary(iris$Species)

#SELECT BY CATEGORY

hist(iris$Petal.Length [iris$Species == "versicolor"],
     main = "Petal Length: Versicolor",
     xlab = "Petal Length" )

hist(iris$Petal.Length [iris$Species == "virginica"],
     main = "Petal Length: Virginica",
     xlab = "Petal length")

hist(iris$Petal.Length [iris$Species == "setosa"],
     main = "Petal Length: Setosa",
     xlab = "Petal length")

#SELECT BY VALUE

#short petals only(all setosa)
hist(iris$Petal.Length [iris$Petal.Length < 2],
     main = "Petal length < 2")

#SELECT MULTIPLE SELECTORS

#short virginica petals only
hist(iris$Petal.Length [iris$Species == "virginica" & iris$Petal.Length < 5.5],
     main = "Petal length: Short Virginica")

#CREATE SUBSAMPLE
# FORMAT: DATA[ROWS, COLUMNS]
#leave rows or columns blank to select all

s.setosa <- iris[iris$Species == "setosa",]

#EXPLORE SUBSAMPLE

head(s.setosa)
summary(s.setosa$Petal.Length)
hist(s.setosa$Petal.Length)
hist(s.setosa$Petal.Width)
