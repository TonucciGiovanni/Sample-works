pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis,httr,lubridate,plotly,rio,
               rmarkdown,shiny,stringr,tidyr)

library(datasets)

cars <- mtcars[, c(1:4, 6:7, 9:11)]

#COMPUTE PCA(Principle Component
#Analysis)

#for entire data frame
pc <- prcomp(cars,
             center = T, #center means to 0(optional)
             scale = T #sets unit variance
             )

summary(pc)
plot(pc)
pc
#see how cases load on PCs
predict(pc) %>% round(2)

biplot(pc)
