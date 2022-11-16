# R source

## Code library

Contains code that is shared by the data extraction and EDA scripts (see below)

1. CleanStatsTable.R - clean up COVID stats table, mutate column types, add ancilliary columns, etc.
2. Consts.R - constants
3. ExtractUrl.R - extract data from Github JHSS URL
4. FilePaths.R - construct file paths for reading/writing data
5. SparkFunctions.R - Helper Spark functions

## Data extraction and EDA

7. NovelCoronavirusCases.Rmd - extract data from JHSS Githup using local cluster for high performance
8. Spark_demo.Rmd - Demo EDA using Speak. May be used to jumpstart EDA
