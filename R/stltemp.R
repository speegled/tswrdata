#' Temperature near St Louis
#'
#' Daily temperaature for three stations near St Louis, MO.
#'  
#' @format A data frame with 103660 observations of 23 variables
#' \describe{
#'   \item{station}{Weather station code: one of three}
#'   \item{name}{Common name of weather station}
#'   \item{date}{Date of observation, as date variable}
#'   \item{awnd}{average wind speed mph}
#'   \item{dapr}{Number of days included in the multiday precipitation total}
#'   \item{fmtm}{time of fastest mile or fastest 1-minute wind}
#'   \item{gaht}{Difference between river and gauge height (in)}
#'   \item{mdpr}{Multiday precipitation total inches}
#'   \item{pgtm}{Peak gust time}
#'   \item{prcp}{Precipitation inches}
#'   \item{psun}{Daily percent of possible sunshine for the period}
#'   \item{snow}{Snowfall, inches}
#'   \item{snwd}{Snow depth}
#'   \item{tavg}{Average Temperature. Degrees F}
#'   \item{tmax}{Maximum temperature}
#'   \item{tmin}{Minimum temperature}
#'   \item{tobs}{Temperature at the time of observation}
#'   \item{wdf2}{Direction of fastest 2-minute wind}
#'   \item{wdf5}{Direction of fastest 5-second wind}
#'   \item{wesd}{Water equivalent of snow on the ground inches}
#'   \item{wsf2}{Fastest 2-minute wind speed}
#'   \item{wsf5}{Fastest 5-second wind speed (mph)}
#'   \item{wsfg}{Peak gust wind speed}
#' }
#'
#' @source \url{https://www.noaa.gov/} 
#' @source \url{https://www.ncdc.noaa.gov/cdo-web/datatools/findstation}
"stltemp"
