pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis,httr,lubridate,plotly,rio,
               rmarkdown,shiny,stringr,tidyr)
library(datasets)

?USJudgeRatings
head(USJudgeRatings)

data <- USJudgeRatings
#Define variable groups

x <- as.matrix(data[-12]) #don't include 12
y <- data[,12] #only read the 12th column

#REGRESSION WITH SIMULTANEOUS ENTRY

#Using variable groups
reg1 <- lm(y ~ x)

reg1 #Coefficients only
summary(reg1)
anova(reg1)
coef(reg1)
confint(reg1)
resid(reg1)
hist(residuals(reg1))

p_load(lars, caret)

#convectional stepwise regression
stepwise <- lars(x,y,type = "stepwise")

#LAR: Least Angle Regression
lar <- lars(x,y,type = "lar")

forward <- lars(x,y,type = "forward.stagewise")

#LASSO: Least Absolute Shrinkage and Selection Operator
lasso <- lars(x,y,type = "lasso")

#Comparison of R^2 for new models

r2comp <- c(stepwise$R2[6], forward$R2[6],
            lar$R2[6], lasso$R2[6])%>%
              round(2)
names(r2comp) <- c("stepwise", "forward", "lar", "lasso")
r2comp
