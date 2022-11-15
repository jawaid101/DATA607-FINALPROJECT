# Directory layout

    ├── data    
        ├── source            # original source data
        |    ├── processed    # processed data, hierarchical folders for easy loading into Spark: ./processed/[YEAR]/[MONTH]/
        |    |    |── 2019
        |    |    |    |── JAN
        |    |    |    |── FEB
        |    |    |    |── ...
        |    |    |    |── DEC
        |    |    |── 2020
        |    |    |    |── JAN
        |    |    |    |── FEB
        |    |    |    |── ...
        |    |    |    |── DEC
        |    |    |── 2021
        |    |    |    |── ...
        |    ├── summary                      # processed data summary
        |    |    ├── covid_href_usa.csv     # URLs processed for USA data
        |    |    ├── covid_ts_usa.csv       # Timestamp of last USA data refresh
        |    |    ├── covid_href_global.csv  # URLs processed for Global data
        |    |    ├── covid_ts_global.csv    # Timestamp of last Global data refresh
