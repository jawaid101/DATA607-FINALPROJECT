# DATA607 - Final Project

## Ideas

1. Scrape Novel Coronavirus (COVID-19) [daily data](https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports_us) from JHU CSSE. Use parallel processing to efficiently scrape data (Jawaid)
2. Scrape [timeseries](https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series) data, also from JHU CSSE.
2. Enrich data - (a) economic indicators (income stats), (b) public policy indicators (school closures, mask/vaccination mandates in school and workplace), (c) demographics (race, gender, age), (d) other (?) (Josh)
3. [yRf](https://ropensci.org/blog/2022/07/26/package-yfr/) might allow us to compare S&P 500 performance against COVID data.



4. Store data in Spark cluster using [sparklyr](https://rdrr.io/cran/sparklyr/) (Jawaid)
5. EDA using Spark SQL (Josh and Jawaid)
   - There are many cloud hosted Spark deployments - e.g. [Databricks Apache Spark](https://www.databricks.com/spark/about) and [AWS EM](https://aws.amazon.com/emr/features/spark/) - but the free tiers are time-limited. However, we can leverage a standalone Spark cluster as proof-of-concept. The standalone version provides ALL the functionality needed for implementing EDAs leveraging Spark.
6. EDA ideas
  > Hypothesis: mask mandates had an impact on infection rates, hispitalizations, and deaths
  
  > Hypothesis: school closures had an impact on infection rates, hispitalizations, and deaths
  
  > Hypothesis: incomes levels were correlated with infection rates, hispitalizations, and deaths
  
  > Hypothesis: race/age/gender were correlated with infection rates, hispitalizations, and deaths
 7. Explore displaying data in maps using [Leaflet](https://rstudio.github.io/leaflet/) (Jawaid)

# Folders
1. data
   - source: original source data
   - processed: processed data
2. src - R source code

# Milestones

- [ ] Project Proposal (Josh)
- [ ] Acquire enrichment data (Josh)
- [X] Create base helper Spark functions (Jawaid)
- [X] Create base script to scrape JHU CSSE data (Jawaid)
- [X] Create base script to load data into standalone Spark cluster for EDA (Jawaid)
- [ ] Load complete JHU CSSE data into Spark cluster (Jawaid)
- [ ] Load enrichment data into Spark cluster (Josh)
- [ ] Create presentation slide deck using RMarkdown (Josh and Jawaid)
- [ ] Presentation (Josh and Jawaid)

# Artifacts

1. [SparkFunctions.R](https://github.com/himalayahall/DATA607-FINALPROJECT/blob/14f6228fd54b89c72e8ec2ecded07e83998c2912/SparkFunctions.R) - helper functions for interacting with Spark cluster
2. [Spark.Rmd](https://github.com/himalayahall/DATA607-FINALPROJECT/blob/14f6228fd54b89c72e8ec2ecded07e83998c2912/Spark.Rmd) - script to demo Spark helper functions
3. [NovelCoronavirusCases.Rmd](https://github.com/himalayahall/DATA607-FINALPROJECT/blob/14f6228fd54b89c72e8ec2ecded07e83998c2912/NovelCoronavirusCases.Rmd) - script to scrape US data from JHU CSSE, load data into stanalone Spark cluster for EDA
