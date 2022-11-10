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

- [ ] Project Proposal (Josh)
- [X] Create  helper Spark functions (Jawaid)
- [X] Create base script to scrape JHU CSSE data (Jawaid)
- [X] Create base script to load data into standalone Spark cluster for EDA (Jawaid)
- [ ] Load full JHU CSSE data into Spark cluster (Jawaid)
- [ ] Presentation slide deck using RMarkdown (Josh and Jawaid)
- [ ] Presentation (Josh and Jawaid)

# Artifacts

1. [SparkFunctions.R](https://github.com/himalayahall/DATA607-FINALPROJECT/blob/14f6228fd54b89c72e8ec2ecded07e83998c2912/SparkFunctions.R) - helper functions for connecting with Spark cluster
2. [Spark.Rmd](https://github.com/himalayahall/DATA607-FINALPROJECT/blob/14f6228fd54b89c72e8ec2ecded07e83998c2912/Spark.Rmd) - script to demo Spark helper functions
3. [NovelCoronavirusCases.Rmd](https://github.com/himalayahall/DATA607-FINALPROJECT/blob/14f6228fd54b89c72e8ec2ecded07e83998c2912/NovelCoronavirusCases.Rmd) - script to scrape US data from JHU CSSE, load data into stanalone Spark cluster for EDA
