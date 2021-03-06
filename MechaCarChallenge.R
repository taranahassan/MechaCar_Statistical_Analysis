# importing library
library(dplyr) 

# reading mechacar data csv file into dataframe
mechacar_data <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# creating multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_data)

# generating summary based on model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_data))

# reading suspension coil csv file into datafram
suspensioncoil_data <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# creating summary table for PSI
total_summary <- suspensioncoil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                              Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# creating lot summary table dependent on each manufacturing lot
lot_summary <- suspensioncoil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), 
                              Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# t.test for all manufacturing lots against the mean of the population
t.test(suspensioncoil_data$PSI,mu=1500)

# t.test for each manufacturing lot
t.test(subset(suspensioncoil_data,Manufacturing_Lot=='Lot1')$PSI,mu=1500)
t.test(subset(suspensioncoil_data,Manufacturing_Lot=='Lot2')$PSI,mu=1500)
t.test(subset(suspensioncoil_data,Manufacturing_Lot=='Lot3')$PSI,mu=1500)
