library(pROC)
library(caret)
library(e1071)
data <- read.csv(file.choose(), header = TRUE)
#removing customer ID from data as not required for classification
data<-data[c(2:ncol(data))]

str(data)
#
ind<-sample(2,nrow(data),replace = TRUE,prob = c(0.75,0.25))
train<-data[ind==1,]
test<-data[ind==2,]

library(randomForest)
#omit for remove NA values
#only 11 rows needed to omit as it will not affect classification
cleanData=na.omit(data)
cleanTest=na.omit(test)
#testing of na values by counting all NA value
#value will be zero after omit function
sum(is.na(cleanData))
sum(is.na(cleanTest))

#building model using random forest
model<-randomForest(Churn~.,data=cleanData,
                    ntree = 50,
                    mtry = 4,
                    importance = TRUE)

#for fine tune the model and decide number of ntrees required
plot(model)
#to decide number of mtry required for better result
tuneRF(cleanData[,c(1:19)],cleanData[,20],stepFactor = 1,plot=T,ntree=100,trace = T,improve = 0.5)

predict<-predict(model,cleanTest,type="prob")
predict

#implementing logLoss
#as we are taking yes as 1 : (1-actual)*log(1-predict) always = 0
logloss=(-log(predict[,2]))
predicted_Prob<-predict[,2]
plot(predicted_Prob,logloss,pch=20)