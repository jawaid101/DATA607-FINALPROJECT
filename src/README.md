# R source

1. Constants.R - constant definitions
2. FilePaths.R - misc file paths for input/output
3. ExtractUrl.Rmd - script to extract and save URLs that need to be processed for daily data (not timeseries). Using Selenium for web scraping and Parallel for local cluster
4. SparkFunctions.R - functions for working with local Spark installation
5. ClearStatsTable.R - functions for cleaning up scraped stats tables (change column type, etc.)
6. LocalClusterFunctions.R - functions for managing local cluster for parallel processing
7. NovelCoronavirusCases.Rmd - extracts daily and timeseries data. For daily data, before running this script the Extract.Rmd must be run

