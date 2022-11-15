# Data directory layout

Processed data is stored in hierarchical folders: ./data/processed/[YEAR]/[MONTH]:
For expample, /data/processed. This structure is selected to make it easy to load data in Spark. It's trivial to load all data or by year or month or day.

    ├── data
    ├────── processed
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
    |────────────────...
   

