library(tidyverse)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=MechaCar_mpg)) #generate multiple linear regression model

suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

t.test((suspension_coil$PSI),mu=1500)#compare sample versus population mean

lot1 <- subset(suspension_coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot == "Lot3")

t.test((lot1$PSI), mu=1500)
t.test((lot2$PSI), mu=1500)
t.test((lot3$PSI), mu=1500)
