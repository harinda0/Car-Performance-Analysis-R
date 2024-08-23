#Load Library
library(ggplot2)

#Load Data
carsDB

#Load Libraries
library(lattice)
library(psych)
library(gmodels)

#mpg vs wt with smoothing and with titles and clear labels
ggplot(data = carsDB,aes(x = wt, y = mpg)) + geom_point()+ geom_smooth()+labs(title="Scatterplot of Fuel efficiency vs Weight",subtitle = "Fuel economy data from 1999 and 2008 for 38 popular models of cars")+theme(plot.title = element_text(hjust=0.5)) + xlab('Weight (1000 lb)') + ylab('Fuel Efficiency (miles per gallon)')


#Correlation between Weight and Mpg
cor(carsDB$wt,carsDB$mpg, use="complete.obs")

#BoxPlot for disp vs cyl with titles and labels
ggplot(data=carsDB, aes(factor(cyl), disp))+ geom_boxplot(aes(fill = factor(cyl))) +
  labs(title="Boxplot of No. of Cylinders vs Displacement", subtitle = "Fuel economy data from 1999 and 2008 for 38 popular models of cars", x = "Number of Cylinders (cyl)", y = "Displacement (cu.in.)")+ theme(plot.title = element_text(hjust=0.5))


