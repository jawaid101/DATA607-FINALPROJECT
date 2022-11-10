# DATA607 - Final Project

## Ideas

1. Scrape Novel Coronavirus (COVID-19) Cases, provided by JHU CSSE: https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports_us. Use parallel processing to efficiently scrape data (Jawaid)
2. Enrich data - (a) economic indicators (income stats), (b) public policy indicators (school closures, mask/vaccination mandates in school and workplace), (c) demographics (race, gender, age), (d) other (?) (Josh)


3. Store data in Spark cluster (Jawaid)
4. EDA using Spark SQL (Josh and Jawaid)
5. EDA ideas
  > Hypothesis: mask mandates had an impact on infection rates, hispitalizations, and deaths
  
  > Hypothesis: school closures had an impact on infection rates, hispitalizations, and deaths
  
  > Hypothesis: incomes levels were correlated with infection rates, hispitalizations, and deaths
  
  > Hypothesis: race/age/gender were correlated with infection rates, hispitalizations, and deaths

# Milestones

1. Project Proposal (Josh)
2. Presentation (Josh and Jawaid)

# Artifacts

1. SparkFunctions.R - helper functions for connecting with Spark cluster
2. Spark.Rmd - script to demo Spark helper functions
3. NovelCoronavirusCases.Rmd - script to scrape US data from JHU CSSE, load intp stanalone Spark cluster for EDA
