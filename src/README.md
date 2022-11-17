# R source

1. Consts.R - constants defined
2. FilePaths.R - misc file paths for input/output
3. SparkFunctions.R - functions for working with local Spark installation
4. LocalClusterFunctions.R - functions for managing local cluster for parallel processing
5. GithubAuth.Rmd - Github enforces rate limits (surprise!). This script used Oauth to authenticate with Github since authenticated users get higher limits
6. DailyData
  > - DailyData_ExtractUrl.Rmd - script to extract and save daily data URLs that need to be processed for daily data (not timeseries). Using Selenium for web scraping and Parallel for local cluster
  > - DailyData_Scrape.Rmd - script to download daily data. Using Selenium for web scraping and Parallel for local cluster
  > - DailyDaya_CleanStatsTable.R - functions for cleaning up scraped stats tables (change column type, etc.)
  > - DailyData_EDA.Rmd - starter script for daily data EDA
7. Timeseries
  > - TimeSeries_Scrape.Rmd - script to download timeseries. Using Selenium for web scraping and Parallel for local cluster
  > - TimeSeries_CleanStatsTable.R - functions for cleaning up timeseries tables (change column type, etc.)
  > - TimeSeries_EDA.Rmd - starter script for timeseries EDA
8. Rplot.png - sample EDA plot
