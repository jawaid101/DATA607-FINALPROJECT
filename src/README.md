# R source

## Code library

Contains code that is shared by the data extraction and EDA scripts (see below)

1. CleanStatsTable.R - cleans COVID stats table, mutates column types, adds ancilliary columns, etc.
2. Consts.R - constants
3. ExtractUrl.R - extracts data from Github JHSS URL
4. FilePaths.R - constructs file paths for reading/writing data
5. SparkFunctions.R - Helper Spark functions

## Data extraction and EDA

1. NovelCoronavirusCases.Rmd - extracts data from JHSS Githup using local cluster for high performance
2. Spark_demo.Rmd - script to demo EDA using Spark. May be used to jumpstart EDA
