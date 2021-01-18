#' TSA Throughput
#'
#' The throughput at TSA checkpoints at various airports and times of day for the first quarter of 2018.
#'  
#' The TSA releases this data in pdf format by week, which has been put into csv by Kevin Sullivan. See source for details.
#'  
#'
#' @format A data frame with 4769 observations of 2 variables
#' \describe{
#'   \item{date}{Date from 2018-01-01 to 2018-03-31}
#'   \item{hour}{Number from 0-23, representing which hour is being measured.}
#'   \item{iata_code}{Airport code.}
#'   \item{checkpoint}{Checkpoint within airport.}
#'   \item{passengers}{Number of passengers processed at TSA security.}
#'   \item{day}{Integer giving day of week from 1-7.}
#'   \item{time}{Number of days since start of year.}
#' }
#'
#' @source \url{https://github.com/sullivankevint/TSA-througput-data} 
#' @source \url{https://www.tsa.gov/foia/readingroom}
"tsa"
