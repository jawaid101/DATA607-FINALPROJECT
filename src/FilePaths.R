library(assertive)

source('./Consts.R')

#
# Get full path to href file
# 
# Parameters:
#   file_type: c('href', 'ts')
#   global: TRUE for Global data file, FALSE for USA data file
Output.GetHrefFilePath <- function(file_type = 'href', global = FALSE) {
    file_name <- NULL
    if (str_to_lower(file_type) == 'href') {
        if (global) {
            file_name <- DB.HREF_FILE_GLOBAL
        }
        else {
            file_name <- DB.HREF_FILE_USA
        }
    }
    else if (str_to_lower(file_type) == 'ts')
        # timestamp
    {
        if (global) {
            file_name <- DB.TS_FILE_GLOBAL
        }
        else {
            file_name <- DB.TS_FILE_USA
        }
    }
    else {
        print("Error: invalid file type")
        return (NA)
    }
    return (paste0(DB.SUMMARY_PATH, file_name, ".csv"))
}

#
# Get full path to data file
# 
# Parameters:
#   targetDate: MM-DD-YYYY
#   global: TRUE for Global data file, FALSE for USA data file
Output.GetDataFilePath <- function(targetDate, global = FALSE) {
    file_name <- NULL
    
    target_year <- lubridate::year(targetDate)
    target_month <- toupper(lubridate::month(targetDate, label = TRUE, abbr = TRUE))
    
    if (global) {
        file_name <- paste0('global-', targetDate)
    }
    else {
        file_name <- paste0('usa-', targetDate)
    }
    
    return (paste0(DB.PATH, target_year, "/", target_month, "/", file_name, ".csv"))
}

Output.GetTimeSeriesFilePath <- function(ts_type, global) {
    assert_any_are_matching_fixed(ts_type, c("deaths", "confirmed"))
    file_name <- NULL
    if (global) {
        file_name <- paste0('time_series_covid19_', ts_type, '_global')
    }
    else {
        file_name <- paste0('time_series_covid19_', ts_type, '_US')
    }
    return (paste0(DB.TIME_SERIES_PATH, file_name, ".csv"))
}


