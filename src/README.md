# R source

1. Constants.R - constant definitions
2. FilePaths.R - various file paths for input/output
3. ExtractUrl.Rmd - extract daily data URLs that need to be processed. Used Selenium for web scraping and local cluster
4. SparkFunctions.R - convenience function for working with local Spark installation
5. ClearStatsTable.R - functions to clean up scraped stats tables (change column type, etc.)
6. LocalClusterFunctions.R - functions to stop/start local cluster for parallel processing
7. NovelCoronavirusCases.Rmd - extracts daily and timeseries data. For daily data, before running this script the Extract.Rmd must be run

