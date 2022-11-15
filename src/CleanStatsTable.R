CleanStatsTable <- function(statsTbl) {
    library(tidyverse)
 
    # change column types
    cleanedTbl <- statsTbl %>%
        mutate(
            Confirmed = as.integer(Confirmed),
            Deaths = as.integer(Deaths),
            Recovered = as.integer(Recovered),
            Active = as.integer(Active),
            FIPS = as.numeric(FIPS),
            Incident_Rate = as.numeric(Incident_Rate),
            Case_Fatality_Ratio = as.numeric(Case_Fatality_Ratio),
            
            Last_Update = as_datetime(Last_Update)
        )
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
    cleanedTbl <- cleanedTbl %>%
        mutate(
            Total_Test_Results = as.integer(Total_Test_Results),
            People_Hospitalized = as.integer(People_Hospitalized),
            UID = as.integer(UID),
            Testing_Rate = as.numeric(Testing_Rate),
            Hospitalization_Rate = as.numeric(Hospitalization_Rate)
        )
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
    
    # add date/year/month/dat columns
    cleanedTbl <-  cleanedTbl %>%
        mutate(Date = targetDate, .after = Country_Region) %>%
        mutate(Year = target_year, .after = Date) %>%
        mutate(Month = target_month, .after = Year) %>%
        mutate(Day = target_day, .after = Month)
    
    return (cleanedTbl)
}