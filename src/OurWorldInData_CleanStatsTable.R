library(tidyverse)

OurWorldInData.CleanStatsTable <- function(statsTbl) {
    library(tidyverse)

    # change column types
    # cleanedTbl <- statsTbl |>
    #     mutate(across(
    #         contains(c("Confirmed", "Deaths", "Recovered", "Active", "FIPS")),
    #         as.integer
    #     )) |>
    #     mutate(across(ends_with("_Rate"), as.numeric))  |>
    #     mutate(across(ends_with("_Ratio"), as.numeric))
    # return (cleanedTbl)
    return (statsTbl)
}
