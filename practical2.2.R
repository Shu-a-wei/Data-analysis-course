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
