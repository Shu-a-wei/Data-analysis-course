rm(list=ls())
view(rairuoho)
rairuoho<-read.table("rairuoho.txt", header=T, sep="\t", dec=".")
rairuoho
enriched <- replace_na("rairuoho treatment", "nutrient", "enriched")
?replace
enriched <- replace(rairuoho, nutrient, enriched)
enriched <- if treatment = "nutrient" replace(rairuoho, treatment, "enriched")
?if then
enriched <- replace("nutrient", "treatment", "enriched")
treatment <- rairuoho[treatment]
df[df=="nutrient"] <-"enriched"
df[9][df[9]=="nutrient"] <-"enriched"
rairuoho[9][rairuoho[9]=="nutrient"] <-"enriched"
Rairuho_wide <- rairuoho %>% pivot_wider(day3:day8, names_to = "period", values_to = "length")
Rairuho_wide <- rairuoho%>% pivot_wider(names_from="day3", values_from="dayRairuho_wide <- pivot_wider(day3:day8, names_to =period, values_to= length) 8")
Rairuho_wide<- rairuoho %>% pivot_wider(day3:day8, names_from="day3:day8", values_from="lenght")
Rairuoho_long <- rairuoho%>% pivot_longer(day3:day8, names_to = "day", values_to = "lenght")
Rairuoho_long
unite("spatial", spatial1:spatial2, "_", remove=TRUE)
?unite()
rairuoho_long_spatial<- Rairuoho_long %>% unite("spatial", spatial1:spatial2, sep="_", remove=TRUE, na.rm=FALSE)
rairuoho_removed<- subset(rairuoho_long_spatial, select=-c(row,column))
