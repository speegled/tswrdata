#' Global Temperatures
#'
#' A time series of mean global temperatures in terms of departure from overall mean
#' from 1880 through 2016. 
#' 
#' @format A data frame with 274 observations of 3 variables
#' \describe{
#'   \item{source}{Either GCAG (global Climate at a Glance) or GISTEMP (GISS Surface Temperature)}
#'   \item{year}{Year, from 1880-2016}
#'   \item{mean}{Mean global temperature}
#' }
#'
#' @source \url{https://datahub.io/core/global-temp}
"yearly"


#' Global Temperatures
#'
#' A time series of mean global temperatures in terms of departure from overall mean
#' from 1880 through 2016. 
#' 
#' @format A data frame with 3288 observations of 3 variables
#' \describe{
#'   \item{source}{Either GCAG (global Climate at a Glance) or GISTEMP (GISS Surface Temperature)}
#'   \item{Date}{End date of the month over which the average temperature is taken}
#'   \item{mean}{Mean global temperature}
#' }
#'
#' @source \url{https://datahub.io/core/global-temp}
"monthly"