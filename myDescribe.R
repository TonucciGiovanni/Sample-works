dataset(psych)
library(psych)
library(pacman)
pacman::p_load(pacman, dplyr, GGally, ggplot2,
               ggthemes, ggvis, httr, lubridate,
               plotly, rio, rmarkdown, shiny, stringr,
               tidyr)

library(datasets)
head(iris)

p_load(psych)

#quantitative variables only
describe(iris$Sepal.Length) #one quantitative variable
describe(iris)
