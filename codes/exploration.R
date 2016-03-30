# View any training instance as an image
train <- read.csv("../input/train.csv", stringsAsFactors=FALSE) 
rows = 28
cols = 28
rowID = 2
m = matrix(as.integer(train[rowID,]), nrow = rows, ncols = cols)  #Convert row to a pixel matrix
image(m)  #Plots the matrix
