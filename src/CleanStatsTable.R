CleanStatsTable <- function(statsTbl) {
    library(tidyverse)
    
    # change column types
    cleanedTbl <- statsTbl |>
        mutate(across(
            contains(c("Confirmed", "Deaths", "Recovered", "Active", "FIPS")),
            as.integer
        )) |>
        mutate(across(ends_with("_Rate"), as.numeric))  |>
        mutate(across(ends_with("_Ratio"), as.numeric))
    return (cleanedTbl)
}

#
# Clean USA stats table
# Parameters:
#   statsTbl: stats table
#
# Returns:
#   Cleaned stats table
#
CleanStatsTable.USA <- function(statsTbl) {
    library(tidyverse)
    
    cleanedTbl <- CleanStatsTable(statsTbl = statsTbl)
    cleanedTbl <- cleanedTbl |>
        mutate(across(contains(
            c(
                "Total_Test_Results",
                "People_Hospitalized",
                "UID",
                "Active",
                "FIPS"
            )
        ),
        as.integer))
    return (cleanedTbl)
}

#
# Clean Global stats table
# Parameters:
#   statsTbl: stats table
#
# Returns:
#   Cleaned stats table
#
CleanStatsTable.Global <- function(statsTbl) {
    library(tidyverse)
    
    cleanedTbl <- CleanStatsTable(statsTbl = statsTbl)
    return (cleanedTbl)    
}

#
# Add date components (date, year, month, day) to stats table
# Parameters:
#   statsTbl: stats table
#   targetDate: stats table date
#
AddDateComponents <- function(statsTbl, targetDate) {
    library(tidyverse)
    library(lubridate)
    
    target_year <- lubridate::year(targetDate)
    target_month <- lubridate::month(targetDate)
    target_day <- lubridate::day(targetDate)
    
    # add date/year/month/day columns
    cleanedTbl <-  statsTbl |>
        mutate(
            Date = targetDate,
            Year = target_year,
            Month = target_month,
            Day = target_day
        ) |>
        relocate(Date, .before = Last_Update) |>
        relocate(Year, .after = Date) |>
        relocate(Month, .after = Year) |>
        relocate(Day, .after = Month)
    
    return (cleanedTbl)
}

#
# Clean date columns: mutate from character to date and integer.
# 
# Parameters:
#   statsTbl: stats table
#
CleanDateComponents <- function(statsTbl) {
    library(tidyverse)
    library(lubridate)
    
    cleanedTbl <-  statsTbl |>
        mutate(Date = as.Date(Date)) |>
        mutate(Year = as.integer(Year)) |>
        mutate(Month = as.integer(Month)) |>
        mutate(Day = as.integer(Day))
    return(cleanedTbl)
}
