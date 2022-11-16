DB.PATH <- "../data/processed/"
DB.SUMMARY_PATH <- paste0(DB.PATH, 'summary/')

DB.HREF_FILE_USA <- "usa_href"
DB.TS_FILE_USA <- "usa_ts"

DB.HREF_FILE_GLOBAL <- "global_href"
DB.TS_FILE_GLOBAL <- "global_ts"

URL.BASE <-
    "https://github.com/CSSEGISandData/COVID-19/tree/master/"
URL.USA <-
    paste0(URL.BASE,
           "csse_covid_19_data/csse_covid_19_daily_reports_us")
URL.GLOBAL <-
    paste0(URL.BASE, "csse_covid_19_data/csse_covid_19_daily_reports")

SELENIUM.PORT <- 4545L