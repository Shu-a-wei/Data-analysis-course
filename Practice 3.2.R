rm(list=ls())
#creating the dataframe from the table in R, calling it Bubble
Person <- c("subject_1", "subject_2", "subject_3", "subject_4", "subject_5")
Before_diet <- c(104, 95, 87, 77, 112)
After_diet <-c(96, 91, 81, 75, 118)
Bubble  <- data.frame(Person, Before_diet, After_diet)
str(Bubble)
#creating the components of WEIGHT_LOSS
Weightloss_percentage <- c((Bubble$Before_diet-Bubble$After_diet)/Bubble$Before_diet*100)
Subject <- Person
Weight_loss_table <- data.frame (Subject,Weightloss_percentage)
WEIGHT_LOSS <- list(A=Subject, B=Weightloss_percentage, C=Weight_loss_table)
#writing a message about how much I enjoy
message<- c("I do not really like nor dislike data manipulation")
BUBBLE_DIET <- list(A=Bubble, B=WEIGHT_LOSS, C=message)
