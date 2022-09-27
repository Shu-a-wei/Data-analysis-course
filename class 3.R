install.packages(dplyr)
library(dplyr)
summary(iris)
install.packages("dplyr")
library(dplyr)
summary(iris)
rm(list=ls())
selected1 <- dplyr::select(iris, Sepal.Length, Sepal.Width, Petal.Length)
head(selected1) 
selected1<-dplyr::select(iris, Sepal.Length, Sepal.width, petal.Length) 
selected2 <- dplyr::select(iris, Sepal.Length:Petal.Length)
head(selected2, 4)
selected1 <- dplyr::select(iris, Sepal.Length, Sepal.Width, Petal.Length)
head(selected1)
selected3 <- dplyr::select(iris,c(2:5))
head(selected3)

filter()
filtered1<-filter(iris, Species == "setosa")
head(filtered1,3)
filtered2 <-filter(iris, Species == "versitcolor", Sepal.Width > 3)
tail(filtered2)
filtered2
filtered2 <- filter(iris, Species == "versicolor", Sepal.Width > 3)
filtered2
tail(filtered2, 2)

mutated1<- mutate(iris, Greater.Half=Sepal.Width>0.5*Sepal.Length)
tail(mutated1)
table(mutated1$Greater.Half)

arranged1<-arrange(iris,Sepal.Width)
head(arranged1)
arranged2<-arrange(iris, desc(Sepal.Width))
head(arranged2)

gp<-group_by(gp, Mean.Sepal = mean(Sepal.Width))
gp <- group_by(iris, Species)
gp.mean <- summarise(gp,Mean.Sepal = mean(Sepal.Width))
gp.mean

iris %>% filter(Species == "setosa",Sepal.Width > 3.8)
iris  %>% group_by(Species) %>% summarise(Mean.Length = mean(Sepal.Length))


install.packages("tidyr")
library(tidyr)
TW_corals<-read.table("data/tw_corals.txt", header=T, sep="\t", dec=".")
getwd()
TW_corals<-read.table("data/tw_corals.txt", header=T, sep="\t", dec=".")
TW_corals<-read.table("TW_corals.txt", header=T, sep="\t", dec=".")
TW_corals
TW_corals_long <- TW_corals %>% pivot_longer(Southern_TW:Northern_Is, names_to = "Region", values_to = "Richness")
TW_corals_long
TW_corals_wide <- pivot_wider(TW_corals_long, names_from = Region, values_from = Richness) 
TW_corals_wide
income<-read.table('metoo.txt',header=T, sep="\t", dec=".", na.strings = "n/a")
income
income_long<-income%>% pivot_longer(cols=-state, names_to = c("gender", "work"), names_sep = "_", values_to = "income")
income_long
income_long %>% pivot_wider(names_from = c(gender,work), 
                            values_from = income,
                            names_sep = ".")

income_long_var <- income %>%  pivot_longer(cols = -1, 
                                            names_to = "var1", 
                                            values_to = "income")
income_long_var
income_sep <- income_long_var %>%  separate(col = var1, 
                                            sep = "_", 
                                            into = c("gender", "work"))
income_sep
