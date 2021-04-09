# MechaCar_Statistical_Analysis

# Overview

AutosRUs' has a new prototype named MechaCar.  The manufacturing team has come across production obstacle(s) which is hindering their progress.  The upper managment has requested for an analysis to be done on the production data that will provide insights for the manufacturing team.


## Linear Regress MPG

For the multiple linear regression model below, the [MechaCar_mpg.csv](https://github.com/taranahassan/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) dataset was used.  It includes 50 mpg test results of MechaCars prototype.  The prototypes were produced using multiple specifications focused on design to find the impact each has on the performance of a vehicle.  Metrics were collected on the length and weight of the vehicles, angle of the spoiler, the drivetrain and the ground clearance for each vehicle.<br>

***Results of linear regression function:*** <br>
![linear_regression_model](https://user-images.githubusercontent.com/75437852/113901894-4d736580-979d-11eb-811d-ade97a5a0d95.PNG)
<br>
<br>
***Results of linear regression model - p-value and r-squared value:*** <br>
![summary_lm_model](https://user-images.githubusercontent.com/75437852/113902393-d2f71580-979d-11eb-91d6-4d38110ef4b2.PNG)
<br>

By reviewing the results above:
  - based on the p-values for each variable, the vehicle length and ground clearance provided a non-random amount of variance, suggesting statistically significanct predictors of mpg.  Whereas the spoiler angle, vehicle weight and drivetrain coefficients are lower, therefore providing a more random variance.
  - the p-value is lower than than the assumed significance level of 0.05, which means it is statiscially significant.  Though the p-value is lower, it still has a value of 5.35e-11 therefore slope of the linear model cannot be considered zero.  This indicates strong evidence to reject the null hypothesis and accept the alternative hypothesis.
  - there is a difference of 3 points between the r-squared value and the adjusted r-squared value.  Focusing on just the r-squared value of 0.7149, this indicates a strong correlation (based on the Pearson's Correlation theory) between the mpg and metrics produced for the prototype design specifications.  If the adjusted r-squared value is preferred by the management (the results being a bit more precise), it is still moderate (borderline strong) at 0.6825.  Either results show the effectiveness of the linear model in predicting the mpg for MechaCar prototypes.


## Summary Statistics on Suspension Coils

For the summary tables below, the [Suspension_Coil.csv](https://github.com/taranahassan/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) dataset was used.  It contains results from 3 different production lots with tests done on multiple suspension coils and their weight capacities.  This is to determine if the manufacturing process is consistent across all 3 lots.  <br>
Based on the design specification for MechaCars suspension coil, the variance should not exceed 100 PSI (pounds per square inch).

***Summary table providing the overall statistics for the suspension coil's PSI:***<br>
![total_summary](https://user-images.githubusercontent.com/75437852/113927738-dbf6df80-97bb-11eb-9270-23946f0fa409.PNG)
<br>
Reviewing the statistics for all production lots; the average variance is 62.29 which is within limit.  However, since the number is closer to 100, this could mean one or more lot(s) may not be consistent in their manufacturing process.
<br>
<br>
***Summary table providing the statistics for each production lot and their respective suspension coil's PSI:***<br>
![lot_summary](https://user-images.githubusercontent.com/75437852/113927996-32fcb480-97bc-11eb-8eb3-910003492039.PNG)
<br>
Reviewing the statistics individually for each lot, we can identify that lots 1 and 2 are within range and consistent during the manufacturing process.  Lot 3 exceeds 70% over the suspension coils PSI requirements set for the design specification, thus bringing the average PSI for all lots higher.


## T-Tests on Suspension Coils

T-Tests have been completed for all 3 manufacturing lots; individually and as a group.  This is to identify any statistical differences of the population mean of 1500 PSI and the manufacturing lots.

***T-Test on all manufacturing lots to determine PSI consistency:***<br>
![all_lots](https://user-images.githubusercontent.com/75437852/114089576-4ffcba80-9884-11eb-8ac2-92ab8039c375.PNG)
<br>
Based on the results, the p-value is 0.06028 which is higher than the signaficance level and indicates there is not enough evidence to reject the null hypothesis and therefore statistically not significant.  Looking at the t-value of -1.8391 shows the variance between the population mean and all the manufacturing lots which states that both means are similar. 
<br>
<br>
***T-Test on manufacturing lot 1:***<br>
![lot_1](https://user-images.githubusercontent.com/75437852/114089741-83d7e000-9884-11eb-8f37-eaf97fe63244.PNG)
<br>
The t-value for lot 1 is at par therefore both the population mean and lot 1 mean are the same.  P-value is significantly higher than the significance level of 0.05, therefore statistically not significant and not enough evidence to reject the null hypothesis.
<br>
<br>
***T-Test on manufacturing lot 2:***<br>
![lot_2](https://user-images.githubusercontent.com/75437852/114089958-cd282f80-9884-11eb-81b9-0e5886d10b2c.PNG)
<br>
Similar case with lot 2; the t-value variance of 0.51745 identifies the population mean and lot 2 mean are borderline simiar.  The p-value is higher than the significance level, again not stating enough evidence to reject the null hypothesis and is statistically non significant.
<br>
<br>
***T-Test on manufacturing lot 3:***<br>
![lot_3](https://user-images.githubusercontent.com/75437852/114090002-db764b80-9884-11eb-82af-2e4f0a5f7e3a.PNG)
<br>
The last manufacturing lot 3 has a higher negative t-value of -2.0916 (still considered statistically similar to the population mean).  However the p-value of 0.04168 is lower than the signficance level providing us statistical significance and evidence to reject the null hypothesis.


## Study Design: MechaCar vs Competition

Below is a statistical study that can be done to compare the performance of the MechaCar vehicles to the performance of vehicles of a competitor. <br>
This study is to identify what desing specifications of a vehicle are statistically significant in attributing to the safety performance of a vehicle.<br>
<br>
For a consumer, one of the key features to influence their decision would be safety rating.  List of safety ratings are published annually by the [National Highway Traffic Safety Association](https://www.nhtsa.gov/ratings) and [Insurance Institute for Highway Safety](https://www.iihs.org).  By selecting the top 3 safety rated car brands within each  class category, we would require the last 3 years of data for each car type.  This study can only be effective by comparing a competitor's vehicle within the same class categories, i.e sedans, SUV or pick up trucks.<br>

Study design:
  - From each car dataset, specific metrics required are the vehicle length, weight and ground clearance.  Once the data has been accumulated, both null and alternative hypothesis are determined.
  - Hypotheses:
        * Null hypothesis:  vehicle length, weight and ground clearance does not impact the safety of a vehicle
        * Alternative hypthesis:  vehicle length, weight and ground clearance does impact the safety of a vehicle
  - Create a multiple linear regression to see if design specifications are statistically significant to the safety of the vehicle - if the specifications evolved year over year and if that made an impact on the safety rating.
  - For data, the safety rating would be the dependant variable and the vehicle length, weight and ground clearance would be the independant variable.
