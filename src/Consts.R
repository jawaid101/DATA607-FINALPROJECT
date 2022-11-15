library(tidyverse)
library(lubridate)

DB.PATH <- "../data/processed/"
DB.SUMMARY_PATH <- '../data/processed/summary/'

DB.HREF_FILE_USA <- "usa_href"
DB.TS_FILE_USA <- "usa_ts"

DB.HREF_FILE_GLOBAL <- "global_href"
DB.TS_FILE_GLOBAL <- "global_ts"

URL.USA <- "https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports_us"
URL.GLOBAL <- "https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports"

SELENIUM.PORT <- 4545L