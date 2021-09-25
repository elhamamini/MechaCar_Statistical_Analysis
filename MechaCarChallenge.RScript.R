#Deliverable 1


library(dplyr)
getwd()
library(readr)
car_table <- read.csv("Desktop/Class/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")
head(car_table)
summary(lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table))
  

#Deliverable 2
Mecha_table <- read.csv("Desktop/Class/MechaCar_Statistical_Analysis/Suspension_Coil.csv")
head(Mecha_table)
total_summary <- Mecha_table %>%  summarize(Mean=mean(PSI), Median=median(PSI) , Variance=var(PSI), SD=sd(PSI)  )
head(total_summary)

lot_summary <- Mecha_table %>%  group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI) , Variance=var(PSI), SD=sd(PSI) ,.groups="keep")
head(lot_summary)

#Deliverable 3

sample_Mecha <- sample_n(Mecha_table, 50)
t.test(sample_Mecha$PSI, mu=mean(Mecha_table$PSI))

sample_Mecha_lot1 <- subset(Mecha_table,Manufacturing_Lot=="Lot1" )
t.test(sample_Mecha_lot1$PSI, mu=mean(Mecha_table$PSI))

sample_Mecha_lot2 <- subset(Mecha_table,Manufacturing_Lot=="Lot2" )
t.test(sample_Mecha_lot2$PSI, mu=mean(Mecha_table$PSI))

sample_Mecha_lot3 <- subset(Mecha_table,Manufacturing_Lot=="Lot3" )
t.test(sample_Mecha_lot3$PSI, mu=mean(Mecha_table$PSI))
