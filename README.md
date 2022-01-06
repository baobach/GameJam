# GameJam Campaign Data Analysis
1. Identify the problem
  * Calculate breakeven point
  * Input specific day and it returns the profit
2. Solution
  1. Explore the data to get the dataset overview
  2. Build a revenue over time model to forcast the future revenue using constant grownth rate
  3. Creat a dashboard to visualize the revenue over time model and can filter the result with date input
# Hypothesis
* The ads spent is popotional to the app installation and the revenue.
* Assume the ads spent will stay at the same rate.
* Assume that the revenue will stay at the same rate.
* Assume that revenue is very small and won't count after 4 days of ads deployed.
# Data Approaching
1. Find the daily revenue base of the total spent. In order to do this, I put and ID for each time we spent money for the campaign called DeployedID.
2. Transform the revenue data into a new dataset called revenue_transformed that show revenue of each DeployedID over time, this will help us to calculate the daily profit easier.
3. Create a new schema called Day_revenue to calculate the daily revenue.
5. Put the dataset into Tableau and create a report that show profit overtime vs the total ads spent.
6. Trying to forecast the profit using Moving Average model.
7. Set up a date filter for the report
