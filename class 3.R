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
