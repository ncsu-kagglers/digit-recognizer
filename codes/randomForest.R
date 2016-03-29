# Performance evaluation on Random Forest

library(readr)
library(randomForest)

# The competition datafiles are in the directory ../input
# Read competition data files:
train <- read.csv("../input/train.csv", stringsAsFactors=FALSE) 
test <- read.csv("../input/test.csv", stringsAsFactors=FALSE) 

# Write to the log:
cat(sprintf("Training set has %d rows and %d columns\n", nrow(train), ncol(train)))
cat(sprintf("Test set has %d rows and %d columns\n", nrow(test), ncol(test)))
 
set.seed(0)

numTrain <- 10000
numTrees <- 25

rows <- sample(1:nrow(train), numTrain)
labels <- as.factor(train[rows,1])
train <- train[rows,-1]

rf <- randomForest(train, labels, xtest=test, ntree=numTrees)
predictions <- data.frame(ImageId=1:nrow(test), Label=levels(labels)[rf$test$predicted])
head(predictions)

write_csv(predictions, "RandomForest_output.csv") 
