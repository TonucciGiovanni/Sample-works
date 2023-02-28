library(datasets)

?lynx
head(lynx)
tail(lynx)

hist(lynx)
hist(lynx,
     breaks = 14,
     freq = FALSE, #axis shows density not freq.
     col = "thistle1", #color for histogram
     main = paste("Histogram of Annual Canadian Lynx",
                  "Trappings, 1821 - 1934"),
     xlab = "Number of Lynx Trapped")

#add a normal distribution
# x - variable name

curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",
      lwd = 2, #line width of 2 pixels
      add = TRUE) #Superimpose on previous graph

#kernel density estimators
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

#add a rug plot
rug(lynx, lwd = 2, col = "gray")
