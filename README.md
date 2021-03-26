# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![Multiple regression](https://github.com/secicciari/MechaCar_Statistical_Analysis/blob/main/resources/multiple_regression.PNG)
1. Ground clearance, vehicle length, and the intercept all provided a non-random amount of variance to the mpg values in our dataset.
2. The slope of the linear model is not zero because our p-value is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%, so there is sufficient evidence to reject our null hypothesis.
3. This linear appears to predict mpg of MechaCar prototypes pretty effectively, based on the r-squared value. Our r-squared is 0.71, which means that 71% of variation can be explained by the model.

## Summary Statistics on Suspension Coils
![Lot summary](https://github.com/secicciari/MechaCar_Statistical_Analysis/blob/main/resources/lot_summary.PNG)
![Total summary](https://github.com/secicciari/MechaCar_Statistical_Analysis/blob/main/resources/total_summary.PNG)

Based on the current manufacturing data as shown above, across the manufacturing lots in total the design specification is being met because the variance is 62.3 PSI, which is less than 100.
However, when we look at Lot 3 individually it does not appear to meet the specification, because the variance is 170.3 PSI.

## T-Tests on Suspension Coils
Based on the t-tests I performed below, Lot 3 is the only lot where the PSI is statistically different than the population mean. 0.04% is smaller than our assumed significance level of 0.05%, so there is sufficient evidence to reject our null hypothesis in the case.
The PSIs for Lot 1, Lot 2, and for all three lots together are not statistically different from the population mean.

![Total t-test](https://github.com/secicciari/MechaCar_Statistical_Analysis/blob/main/resources/total_ttest.PNG)
![Lot1 t-test](https://github.com/secicciari/MechaCar_Statistical_Analysis/blob/main/resources/lot1_ttest.PNG)
![Lot2 t-test](https://github.com/secicciari/MechaCar_Statistical_Analysis/blob/main/resources/lot2_ttest.PNG)
![Lot3 t-test](https://github.com/secicciari/MechaCar_Statistical_Analysis/blob/main/resources/lot3_ttest.PNG)

## Study Design: MechaCar vs Competition
I would recommend testing whether MechaCar cars have significantly better highway fuel efficiency than their competitors.
In this case, the null hypothesis would be that MechaCar cars and competitor cars do not have significantly different highway fuel efficiencies.
I would use a two-sided t-test to perform this analysis because I would need to compare the distribution means from two samples (MechaCars and competitors).
In order to run this test, I would need highway fuel efficiency data for MechaCars and fuel efficiency data across a set of competitors. We could use this data to determine the means of each population we're interested in.
