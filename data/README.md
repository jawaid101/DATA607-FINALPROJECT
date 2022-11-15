# Dynamic financial data

[yRf](https://ropensci.org/blog/2022/07/26/package-yfr/) might allow us to compare S&P 500 performance against COVID data.

# Directory layout

    ├── data    
        ├── source            # original source data
        |    |── README.md
        |    |── cdc_data.csv
        |    |── irs_data.csv
        |    |── covid-vaccine-willingness-and-people-vaccinated-by-country.csv
        |    |── face-covering-policies-covid.csv
        |── processed          # processed data, hierarchical folders for easy Spark loading: ./processed/[YEAR]/[MONTH]/
        |    |── README.md
        |    |── 2019
        |    |    |── JAN
        |    |    |    |── usa_2019-01-01    # usa data for Jan 1, 2019
        |    |    |    |── usa_2019-01-02
        |    |    |    |── global-2019-01-05 # global data for Jan 5, 2019
        |    |    |    |── ...
        |    |    |── FEB
        |    |    |── ...
        |    |    |── DEC
        |    |── 2020
        |    |    |── JAN
        |    |    |── FEB
        |    |    |── ...
        |    |    |── DEC
        |    |── 2021
        |    |    |── ...
        |    ├── summary               # processed data summary
        |    |    ├── usa_href.csv     # URLs processed for USA data
        |    |    ├── usa_ts.csv       # Timestamp of last USA data refresh
        |    |    ├── global_href.csv  # URLs processed for Global data
        |    |    ├── global_ts.csv    # Timestamp of last Global data refresh
