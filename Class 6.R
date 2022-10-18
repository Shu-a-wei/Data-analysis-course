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
# library(plot.new)
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
install.packages("leaflet")
install.packages("maptools")
data("wrld_simpl")
library("maptools")
data("wrld_simpl")
plot(wrld_simpl)
plot(wrld_simpl,xlim=c(100,130),ylim=c(-20,50),col='olivedrab3',bg='lightblue')
plot(wrld_simpl,xlim=c(120,125),ylim=c(20,30),col='olivedrab3',bg='lightblue')
#resolution is too low
install.packages("readOGR")
