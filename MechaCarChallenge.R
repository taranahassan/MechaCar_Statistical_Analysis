# importing library
library(dplyr) 

# reading csv file into dataframe
mechacar_data <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# creating multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_data)

# generating summary based on model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_data))
