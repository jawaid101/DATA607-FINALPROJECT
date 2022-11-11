library(doParallel)
library(parallel)

#
# Start cluster
# Arguments:
#   verbose: TRUE to report progress
# Returns:
#   Cluster reference.
Cluster.Start <- function(verbose = TRUE) {
    
    num_cores <- detectCores(logical = TRUE)
    num_cores
    
    num_cluster_nodes <- 1 + (num_cores / 2)
    cr <- makeCluster(num_cluster_nodes)
    registerDoParallel(cr)
    if (verbose) {
       print(paste0("Started cluster with ", num_cluster_nodes, " nodes"))
    }
    return (cr)
}

#
# Stop cluster
# Arguments:
#   cr: cluster reference
#   verbose: TRUE to report progress
# Returns:
#   Cluster reference.
Cluster.Stop <- function(cr, verbose = TRUE) {
    stopCluster(cr)
    if (verbose) {
        print("Stopped cluster")
    }
    return (cr)
}

#
# Export namespace to cluster
# Arguments:
#   cr: cluster reference
#   ns: namespace to export. List of string names. Typically this will be a function and a data 
#       set: e.g. list(function_name, data_frame). After namespace is exported the function can be
#       applied to data set across the cluster in parallel.
#   verbose: TRUE to report progress
# Returns:
#   Cluster reference.
Cluster.ExportNamespace <- function(cr, ns, verbose = TRUE) {
    clusterExport(cr, ns) #list('ScrapeStats_USA', 'tbl_href'))
    if (verbose) {
        print(paste0("Exported namespace: ", ns))
    }
    return (cr)
}

#
# Apply function to data across cluster
# Arguments:
#   cr: cluster reference
#   id_seq: list of ids to process. Data must have been previously exported to cluster. See Cluster.ExportNamespace
#   func_ref: function reference. Function must have been previously exported to cluster. See Cluster.ExportNamespace
#   verbose: TRUE to report progress
# Returns:
#   Result of map/reduce operation..
Cluster.ParApply <- function(cr, id_seq, func_ref, verbose = TRUE) {
    work_result <- NULL
    if (verbose) {
        system.time(
            work_results <- c(parLapply(cr, id_seq, fun=func_ref)))
    } else {
        work_results <- c(parLapply(r, id_seq, fun=func_ref))
    }
    return (work_result)
}
