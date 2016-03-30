# View any training instance as an image
train <- read.csv("../input/train.csv", stringsAsFactors=FALSE) 
rows <- 28
cols <- 28
rowID <- 2
m <- matrix(as.integer(train[rowID,]), nrow = rows, ncol = cols)  #Convert row to a pixel matrix
image(m)  #Plots the pixel matrix

#Gray scale image plot
#Color ramp def. 
cus_col <- colorRampPalette(colors = c('white','black'))
image(m, col = cus_col(256))
