# Overview

This project will acquire and assess Covid-19 rates using data compiled by [Our World In Data](https://github.com/owid/covid-19-data), through web scraping using the selenium package in R, and parallel processing via a Spark cluster. We are currently exploring additional datasets to complement our primary data to determine:

1. interesting relationships that we can tie to covid rates, for example the presence/effect of face mask policies on covid rates, or the S&P 500 index over time 
2. whether to focus our analysis on the United States (state-to-state), or the World (country-to-country)

These determinations on supplementary data sets will drive the project analysis.

----
### Datasets (so far)

We started with the [JHU CSSE Novel Coronavirus (COVID-19) Daily Data](https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports_us). After successul extraction of the daily data, we added [JHU CSSE timeseries](https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series) and [Our World In Data](https://ourworldindata.org/coronavirus) to the data extraction pipeline. 


> Milestones:
> 1. During this data acquisition journey we built a set of common data extraction scripts/functions that were leveraged across all datasets. 
> 2. Github API [rate limits](https://docs.github.com/en/rest/overview/resources-in-the-rest-api#rate-limiting). To get around rate limits we implemented [OAuth authentication](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps) to access Github via a personal account which enables higher limits
> 3. Latitude/Longitude - OWID dataset did not provide Longitude/Latitude which will come in handy for map plots. So we downloaded [country lat/long](https://github.com/himalayahall/DATA607-FINALPROJECT/blob/d1c9cf23dce07ccdacfe4828a35c40c3e1badb8a/data/processed/owid/country_lat_long.csv dataset and (left-)joined with the OWID dataset.

### Tech stack (so far)

1. **Rselenium** - chosen for it's [headless browser](https://cran.r-project.org/web/packages/RSelenium/RSelenium.pdf) capability for getting around potential issues with embedded JavaScript. Used to extract daily data URLs
2. **parallel** - chosen for efficiently processing remote data files using a local cluster. Used for all 3 data sets
3. **readr** - reading remote/local CSVs
4. **Spark/sparklr** - chosen as a proof-of-concept for efficiently performing EDAs on large datasets in a Spark cluster. Unfortunately, cloud hosted Spark services are either fee-based or time-limited so we will be using a local cluster
5. **AWS S3** - we are looking into storing datasets on AWS S3 and leverage Spark's built-in S3 connector. However, S3 storage rate-limits may make this impractical (20,000 GET Requests; 2,000 PUT, COPY, POST, or LIST Requests each month)


