# MechaCar_Statistical_Analysis

# Overview

AutosRUs' has a new prototype named MechaCar.  The manufacturing team has come across production obstacle(s) which is hindering their progress.  The upper managment has requested for an analysis to be done on the production data that will provide insights for the manufacturing team.

## Linear Regress MPG

For the multiple linear regression model, the [MechaCar_mpg.csv](https://github.com/taranahassan/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) dataset was used.  It includes 50 mpg test results of MechaCars prototype.  The prototypes were produced using multiple specifications focused on design to find the impact each has on the performance of a vehicle.  Metrics were collected on the length and weight of the vehicles, angle of the spoiler, the drivetrain and the ground clearance for each vehicle.<br>

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
  - there is 3 points difference between the r-squared value and the adjusted r-squared value.  Focusing on just the r-squared value of 0.7149, this indicates a strong correlation (based on the Pearson's Correlation theory) between the mpg and metrics produced for the prototype design specifications.  If the adjusted r-squared value is preferred by the management (the results being a bit more precise), it is still moderate (borderline strong) at 0.6825.  Either results show the effectiveness of the linear model in predicting the mpg for MechaCar prototypes.
