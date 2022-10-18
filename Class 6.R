#class 18/10/2022
# try some stuff from last week
plot(Petal.Length ~ Petal.Width, dat = iris,
     xlab = 'Petal width (cm)', 
     ylab = 'Petal length (cm)', 
     main = 'Petal width and length of iris flower',
     cex.axis=1.0, cex.lab=1.5, cex.main=1.5,
     pch = 19, cex=2, las=1,
     col = scales::alpha(col.iris, 0.2))

legend(x="bottomright", pch= 19, cex=1.0, legend= c("versicolor","setosa", "virginica"), col=levels(as.factor(scales::alpha(col.iris, 0.2))))
library(plot.new)
#did not work
library(maptools)
library(rgdal)
library (sp)
library(raster)
library(ggplot2)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggspatial)
library(rgbif)
library(mapr)
library(marmap)
library(leaflet)
#did not want to do it?
