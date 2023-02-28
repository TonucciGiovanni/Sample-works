library(datasets)
library(e1071)
library(rpart)
library(rpart.plot)
library(class)
library(caTools)
library(randomForest)
library(C50)
library(neuralnet)
library(kknn)
library(caret)
library(ROSE)
library(pROC)
library(ROCR)
library(DT)
library(dplyr)
library(ranger)
library(Metrics)
split <- sample.split(iris, SplitRatio = 0.7)
split

train <- subset(iris, split == "TRUE")
test <- subset(iris, split == "FALSE")
set.seed(120)
class_rf = randomForest(x=train[-5],
                        y=train$Species,
                        ntree = 500)
class_rf
y_pred = predict(class_rf, newdata = test[-5])
con_mtx = table(test[,5],y_pred)
con_mtx
plot(class_rf)
importance(class_rf)
varImpPlot(class_rf)
acc <- (test[,5]==y_pred)*100
rf_acc <- sum(acc)/length(acc)
rf_acc
head(iris)
uni <- read.csv("~/stircom.csv", header = TRUE)
(uni = uni[, c(-1,-2)])
(uni$outcome_previous_campaign = as.numeric(factor(uni$outcome_previous_campaign, levels = c('failure','other','success','unknown'), labels = c(0,1,2,3))))
(uni$new_contract_this_campaign = as.numeric(factor(uni$new_contract_this_campaign, levels = c('yes','no'), labels = c(1,2))))
(uni$country = as.numeric(factor(uni$country, levels = c('UK','France', 'Germany', 'Portugal', 'USA'), labels = c(0,1,2,3,4))))
(uni$job = as.numeric(factor(uni$job, levels = c('admin.', 'blue-collar', 'entrepreneur', 'housemaid', 'management', 'retired', 'self-employed', 'services', 'student', 'technician', 'unemployed', 'unknown'), labels = c(0,1,2,3,4,5,6,7,8,9,10,11))))
(uni$married = as.numeric(factor(uni$married, levels = c('divorced', 'married', 'single'), labels = c(0, 1, 2))))
(uni$education = as.numeric(factor(uni$education, levels = c('primary','secondary', 'tertiary', 'unknown'), labels = c(0,1,2,3))))
(uni$arrears = as.numeric(factor(uni$arrears, levels = c('yes','no'), labels = c(0,1))))
(uni$housing = as.numeric(factor(uni$housing, levels = c('yes','no'), labels = c(0,1))))
(uni$has_tv_package = as.numeric(factor(uni$has_tv_package, levels = c('yes','no', 'n'), labels = c(0,1,2))))
(uni$last_contact = as.numeric(factor(uni$last_contact, levels = c('cell','cellular', 'telephone', 'unknown'), labels = c(0,1,2,3))))
(uni$last_contact_this_campaign_month = as.numeric(factor(uni$last_contact_this_campaign_month, levels = c('jan','feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec', 'j'), labels = c(1,2,3,4,5,6,7,8,9,10,11,12,13))))
split <- sample.split(uni, SplitRatio = 2)
split

train <- subset(uni, split == "TRUE")
test <- subset(uni, split == "FALSE")
set.seed(120)
rf_cla = randomForest(x = train[-20],
                      y = train$contacted_during_previous_campaign,
                      ntree = 300)
rf_cla
pred = predict(rf_cla, newdata = test[-20])
comtx = table(test[,20],pred)
comtx
accu <- (test[,20]==pred)*100
rf_accu <- sum(accu)/length(accu)
rf_accu
C50 <- C5.0(uni$this_campaign + uni$contacted_during_previous_campaign + uni$days_since_last_contact_previous_campaign + uni$outcome_previous_campaign, data=train )
C50Predict <-predict(C50,test, type="class")
table(actual=test[,20],C50=C50Predict)
table(actual=test[,20],C5.0=C50Predict)
