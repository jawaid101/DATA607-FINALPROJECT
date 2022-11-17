#
# Clean timeseries data
#
# Parameters:
# tsTbl : timeseries data
# global: TRUE for Global data, FALSE for US
#
TimeSeries.CleanTable <- function(tsTbl, global) {
    library(tidyverse)
    cleanedTbl <- tsTbl |>
        mutate(across(contains(c("Lat", "Long")), as.integer)) |>
        mutate(across(contains(
            c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9")
        ), as.numeric))
    
    if (global) {
        return (cleanedTbl)
    }   
    return (TimeSeries.CleanTable.USA(tsTbl = cleanedTbl))
}

#
# Clean US timeseries data. This is for internal use.
#
# Parameters:
# tsTbl : timeseries data
#
TimeSeries.CleanTable.USA <- function(tsTbl) {
    library(tidyverse)
    cleanedTbl <- tsTbl |>
        mutate(across(contains(c("Combined, Population")), as.numeric))
    
    return (cleanedTbl)
}

