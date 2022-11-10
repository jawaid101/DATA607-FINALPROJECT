library(tidyverse)
library(sparklyr)
library(DBI)

Spark.ConnectLocal <- function() {
    sc <- spark_connect(master = "local", version = "3.2.2")
    return (sc)
}

Spark.ConnectEdge <- function(master, home) {
    sc <- spark_connect(master = master, spark_home = home)
    return (sc)
}

Spark.ConnectStandalone <- function(hostname, port) {
    sc <- spark_connect(master = paste0("spark://", hostname, ":", port))
    return (sc)
}

Spark.Disconnect <- function(sc) {
    spark_disconnect(sc)
}

Spark.Web <- function(sc) {
    spark_web(sc)
}