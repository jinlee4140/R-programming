#A good dataset for example graphs is included with ggplot2.
#In order to access it, ggplot2 must first be installed and loaded
#Then the diamonds data can be loaded and inspected
require(ggplot2)
data(diamonds)
head(diamonds)
diamonds
#Base Histograms.
#The Most common graph of data in a single variable = Histogram
hist(diamonds$carat, main = "Carat Histogram", xlab = "Carat")

#Title was set using the main argument and the x-axis label with the xlab argument

#Base Scatterplot
plot(price ~ carat, data = diamonds)
#This is a scatterplot of diamond price versus carat

plot(diamonds$carat, diamonds$price)

#Boxplots
boxplot(diamonds$carat)



ggplot(data = diamonds, aes(x = carat)) + geom_histogram()

ggplot(data = diamonds, aes(x = carat)) + geom_density(fill = "grey50")

#ggplot2 Scatterplots
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()

ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point(aes(color = color))

#Notice that we set color = color inside aes. This is because the designated color
#will be determined by the data. Also see that a legend was automatically generated.
#*** What is legend?
#Recent versions of ggplot2 have added flexibility with the legend.
