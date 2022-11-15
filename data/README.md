# Directory layout

    ├── data    
    ├────── source                      # original source data
    ├────── processed                   # processed data, stored in hierarchical folders for easy loading into Spark: ./processed/[YEAR]/[MONTH]/
    |────────────────2019
    |─────────────────────JAN
    |─────────────────────FEB
    |─────────────────────...
    |─────────────────────DEC
    |────────────────2020
    |─────────────────────JAN
    |─────────────────────FEB
    |─────────────────────...
    |─────────────────────DEC
    |────────────────2021
    |...
   


