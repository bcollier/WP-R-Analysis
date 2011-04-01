# TODO: Add comment
# 
# Author: bcollier
###############################################################################


mp <- barplot(1:16, axes = FALSE, axisnames = FALSE)
axis(2)
axis(1, at = mp, labels = 1:16, cex.axis = 0.5)



mydata <- matrix(c(10, 21, 22, 33, 45, 23, 22, 43, 33), nrow=3)

# b will contain the x midpoints of the bars
b <- barplot(mydata)

# This will write labels in the middle of the bars, horizontally and vertically
text(b, colMeans(mydata), c("Label1", "Label2", "Label3"))

# This will write labels in the middle of the middle block
text(b, mydata[1,]+mydata[2,]/2, c("LabelA", "LabelB", "LabelC"))



# Fitting Labels 
par(las=2) # make label text perpendicular to axis
par(mar=c(5,8,4,2)) # increase y-axis margin.    1=bottom, 2=left, 3=top, 4=right


pars <- par()
par()$mar
