DB.PATH <- "../data/processed/"
DB.SUMMARY_PATH <- paste0(DB.PATH, 'summary/')
DB.TIME_SERIES_PATH <- paste0(DB.PATH, 'timeseries/')

DB.HREF_FILE_USA <- "usa_href"
DB.TS_FILE_USA <- "usa_ts"

DB.HREF_FILE_GLOBAL <- "global_href"
DB.TS_FILE_GLOBAL <- "global_ts"

# Daily reports
URL.BASE <-
    "https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports/csse_covid_19_data/"
URL.USA <-
    paste0(URL.BASE,
           "csse_covid_19_daily_reports_us")
URL.GLOBAL <-
    paste0(URL.BASE, "csse_covid_19_daily_reports")

# Time series
URL.TS.US.CONFIRMED <- 
    "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv"

URL.TS.US.DEATHS <- 
    "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv"

URL.TS.GLOBAL.CONFIRMED <- 
    "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv"

URL.TS.GLOBAL.DEATHS <- 
    "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv"

SELENIUM.PORT <- 4545L
