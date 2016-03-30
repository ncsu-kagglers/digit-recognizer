# View any training instance as an image
train <- read.csv("../input/train.csv", stringsAsFactors=FALSE) 
rows = 28
cols = 28
rowID = 2
m = matrix(as.integer(train[8,]), nrow = rows, ncols = cols)
image(m)
