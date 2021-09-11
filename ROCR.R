install.packages("binary classification")
install.packages("party")
install.packages("ROCR")

library(party)
library(rpart)
library(ROCR)

x <- kyphosis[sample(1:nrow(kyphosis), nrow(kyphosis), replace=F),]
x.train <- kyphosis[1:floor(nrow(x)*0.75),]
x.evaluate <- kyphosis[floor(nrow(x)*0.75):nrow(x),]
x.model <- cforest(Kyphosis~Age+Number+Start, data=x.train)
x.evaluate$prediction <- predict(x.model, newdata=x.evaluate)
x.evaluate$correct <- x.evaluate$prediction == x.evaluate$Kyphosis
print(paste("% of predicted classification correct", mean(x.evaluate$correct)))


