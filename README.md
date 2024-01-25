# Analysis-of-Women-in-managerial-role

## Introduction:
This report presents a comprehensive analysis of a dataset obtained from open sources, focusing on women in managerial positions across 147 countries. The dataset includes key variables such as countries, source, time (year), and value (percentage of women in managerial posts). The analysis involved data cleaning using both Excel and SQL, with the aim of extracting meaningful insights from the dataset

## Data Cleaning Process:
###     Excel Cleaning:
Irrelevant columns posing import difficulties in SQL were removed in Excel.
Characters causing import issues were addressed.

###     SQL Cleaning:
A database, table, and columns were created for the dataset in SQL.
Inconsistent values (special characters) in the 'countries' column were removed using replacement queries.
Invalid characters in the 'time' column were eliminated.
The 'value' column, containing combined year and percentage values, was separated using LEFT and SUBSTRING queries.

## Analysis Objectives:
The primary objectives of the analysis are as follows:

1) Total and Distinct Target Countries:
Determine the total number of countries in the dataset.
Identify distinct target countries for analysis.

2) Countries with Significant Women in Managerial Posts:
Identify countries with a significant percentage of women in managerial positions (above 60%).

3) Top Ten Countries with High Women in Managerial Posts:
Identify and rank the top ten countries with the highest percentage of women in managerial positions.

4) Yearly Changes for Specific Countries (2013 to 2019):
Examine changes in the percentage of women in managerial positions for the United States, United Kingdom, Australia, and Nigeria.

5) Average Percentage of Women in Managerial Positions:
The average percentage of women in managerial positions across all years.
Yearly Record Challenges.

6) Address challenges related to uneven yearly records for countries.

## Results:
1) Total and Distinct Target Countries
![Total countries in the dataset: 147.
](https://github.com/Jejefunmi/Analysis-of-Women-in-Managerial-Position/blob/main/chart/total%20no%20country.png "Total and Distinct Target Countries")

2) Countries with Significant Women in Managerial Posts
![Identify countries with a significant percentage of women in managerial positions above 60%.](https://github.com/Jejefunmi/Analysis-of-Women-in-Managerial-Position/blob/main/chart/question%203.png "Countries with Significant Women in Managerial Posts")

3) Percentage of women managers 
![Highest number of managerial women each country ever recorded throughout the years](https://github.com/Jejefunmi/Analysis-of-Women-in-Managerial-Position/blob/main/chart/question%202.png "Percentage of women managers")

Initially, six countries had a significant percentage of women in managerial positions (above 60%): Hungary, Jamaica, Jordan, Costa Rica, Barbados, Guatemala.
Over the past 10 years, only Jordan, Costa Rica, and Barbados have maintained significant representation.

4) Yearly Changes for Specific Countries (2013 to 2019)
![](https://github.com/Jejefunmi/Analysis-of-Women-in-Managerial-Position/blob/main/chart/question%204.png "Yearly Changes for Specific Countries (2013 to 2019)")

Examine changes in the percentage of women in managerial positions for the United States, United Kingdom, Australia, and Nigeria
United States had the highest percentage in 2013, followed by the United Kingdom, Nigeria, and Australia. After 6 years, the United States, United Kingdom, and Australia saw slight increases, while Nigeria experienced a decrease.
Yearly Changes (2013 to 2019):
United States: +2%
United Kingdom: +2.1%
Australia: +1.7%
Nigeria: -4%
 
5) Average Percentage of Women in Managerial Positions
![Retrieve the average percentage of women in managerial positions for top 10 countries](https://github.com/Jejefunmi/Analysis-of-Women-in-Managerial-Position/blob/main/chart/question%205.png "Average Percentage of Women in Managerial Positions")


## Challenges:
Recognize the challenge of uneven yearly records; 2019 has the highest records for 99 out of 147 countries.

## Conclusion:
This analysis provides valuable insights into the representation of women in managerial positions globally. Challenges such as uneven yearly records and significant changes in some countries over the past decade highlight the dynamic nature of this field. Recommendations include continuous monitoring, in-depth country analyses, and efforts to improve data completeness.

## Recommendations:
Improve data completeness to ensure more uniformity in recording.
Conduct in-depth analyses for countries experiencing significant changes.
Incorporate additional variables for a comprehensive understanding.
Ongoing monitoring and updating of the dataset for accurate trend analysis
