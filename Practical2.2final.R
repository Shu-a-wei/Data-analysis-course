rm(list=ls())
rairuoho<-read.table("rairuoho.txt", header=T, sep="\t", dec=".")
rairuoho
rairuoho[9][rairuoho[9]=="nutrient"] <-"enriched"
Rairuoho_long <- rairuoho%>% pivot_longer(day3:day8, names_to = "day", values_to = "lenght")
rairuoho_spatial<- Rairuoho_long %>% unite("spatial", spatial1:spatial2, sep="_", remove=TRUE, na.rm=FALSE)
rairuoho_removed<- subset(rairuoho_spatial, select=-c(row,column))
