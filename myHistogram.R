library(datasets)
tail(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#put graphs in 3 rows and 1 column
head(iris)

par(mfrow = c(3,1))
#histograms for each species using options
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9, 
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")

?datasets

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal width for versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal width for virginica",
     xlab = "",
     col = "blue")
