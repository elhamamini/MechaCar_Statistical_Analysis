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
