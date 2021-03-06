#' Wine consumption in Australia
#'
#' Total wine available for consumption in Australia.
#'  
#' Data downloaded from abs.gov.au on January 17, 2021. Data provided under Attribution 4.0 International (CC BY 4.0) license.
#' See https://creativecommons.org/licenses/by/4.0/ for details.
#'
#' There was a change in methodology in 2008, and care should be used in comparing values from before and after this date.
#'
#' @format A data frame with 58 observations of 2 variables
#' \describe{
#'   \item{year}{Integer from 1960-2017}
#'   \item{wine_cons}{Wine available for consumption in liters.}
#'   \item{zar_usd}{Closing exchange rate in terms of rand per dollar.}
#' }
#'
#' @source \url{https://www.abs.gov.au/statistics/health/health-conditions-and-risks/apparent-consumption-alcohol-australia/latest-release#data-download}
"wine"
