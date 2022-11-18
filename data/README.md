# Directory layout

    ├── data    
        ├── source            # original source data
        |    |── README.md
        |    |── cdc_data.csv
        |    |── irs_data.csv
        |    |── covid-vaccine-willingness-and-people-vaccinated-by-country.csv
        |    |── face-covering-policies-covid.csv
        |── processed          # processed data
        |    |── README.md     
        |    |── timeseries    # JHU timerseries data
        |    |    |── time_series_covia19_deaths_US.csv      # US deaths
        |    |    |── time_series_covia19_deaths_global.csv  # Global deaths
        |    |    |── time_series_covia19_confirmed_US.csv   # US confirmed cases
        |    |    |── time_series_covia19_confirmed_US.csv   # Global confirmed cases
        |    |── owid         # Our World in Data
        |    |    |── country_lat_long.csv      # Count latitude/longitude data
        |    |    |── owid-covid-data.csv      # Global COVID deaths
        |    |── README.md       
        |    |── 2019.         # Daily date - hierarchical folders for easy Spark loading: ./processed/[YEAR]/[MONTH]/
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
