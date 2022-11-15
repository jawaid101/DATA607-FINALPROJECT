library(tidyverse)
library(lubridate)

DB.PATH <- "../data/processed/"
DB.SUMMARY_PATH <- '../data/processed/summary/'

#DB.DATA_FILE_USA <- "covid_data_usa"
DB.HREF_FILE_USA <- "covid_href_usa"
DB.TS_FILE_USA <- "covid_ts_usa"

#DB.DATA_FILE_GLOBAL <- "covid_data_glocal"
DB.HREF_FILE_GLOBAL <- "covid_href_global"
DB.TS_FILE_GLOBAL <- "covid_ts_global"

URL.USA <- "https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports_us"
URL.GLOBAL <- "https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports"

SELENIUM.PORT <- 4545L