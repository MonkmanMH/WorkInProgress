# read the csv file from GitHub using the package repmis
# http://christophergandrud.blogspot.kr/2013/01/repmis-misc-tools-for-reproducible.html
if (!require(repmis)) install.packages("repmis")
library(repmis)
#
# read the data
TESTbubble <- source_GitHubData("https://raw.github.com/MonkmanMH/BubbleChartTest_R/master/bubbledata.csv")
# print data
print(TESTbubble)
#
#
# X-Y BUBBLE CHART -- EXPLORATORY
#
# TESTbubble <- read.csv("bubbledata.csv", header=TRUE)
#
#make a bubble chart!
symbols(TESTbubble$Xval, TESTbubble$Yval, circles=TESTbubble$BUBval, 
        xlim=c(0,100), ylim=c(0,100),
        main = "Bubble chart test: R = 36/15/10/5")
#
#but this sizes the circles by making the radius = "BUBval" which is out of whack 
#-- we want the AREA of the circle to be proportional to the value of the bubble (BUBval)
#
#so create a new variable "radius" that transposes pi-r-squared
radius <- sqrt( TESTbubble$BUBval/ pi )
#then plot again
symbols(TESTbubble$Xval, TESTbubble$Yval, circles=radius, 
        xlim=c(0,100), ylim=c(0,100),
        main = "Bubble chart test: R = sqrt(36/15/10/5)")
#
