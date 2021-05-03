#' Bike share
#'
#' Number of bike share rides by hour.
#' 
#' From the authors: Bike-sharing rental process is highly correlated to the environmental and seasonal settings. For instance, weather conditions,
#' precipitation, day of week, season, hour of the day, etc. can affect the rental behaviors. The core data set is related to  
#' the two-year historical log corresponding to years 2011 and 2012 from Capital Bikeshare system, Washington D.C., USA which is 
#' publicly available in http://capitalbikeshare.com/system-data.
#' 
#' @format A data frame with 17379 observations of 17 variables
#' \describe{
#'   \item{instant}{record index}
#'   \item{dteday}{date}
#'   \item{yr}{year}
#'   \item{mnth}{month}
#'   \item{hr}{hour (0 to 23)}
#'   \item{holiday}{weather day is holiday or not }
#'   \item{weekday}{day of the week}
#'   \item{workingday}{if day is neither weekend nor holiday is 1, otherwise is 0.}
#'   \item{weathersit}{- 1: Clear, Few clouds, Partly cloudy, Partly cloudy; 2: Mist + Cloudy, Mist + Broken clouds, Mist + Few clouds, Mist; 3: Light Snow, Light Rain + Thunderstorm + Scattered clouds, Light Rain + Scattered clouds; 4: Heavy Rain + Ice Pallets + Thunderstorm + Mist, Snow + Fog}
#'   \item{temp}{Normalized temperature in Celsius. The values are derived via (t-t_min)/(t_max-t_min), t_min=-8, t_max=+39 }
#'   \item{atemp}{ Normalized feeling temperature in Celsius. The values are derived via (t-t_min)/(t_max-t_min), t_min=-16, t_max=+50 }
#'   \item{hum}{ Normalized humidity. The values are divided to 100 }
#'   \item{windspeed}{Normalized wind speed. The values are divided to 67}
#'   \item{casual}{count of casual users}
#'   \item{registered}{count of registered users}
#'   \item{cnt}{count of total rental bikes including both casual and registered}
#'   
#' @source UCI Machine Learning Repository: http://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset#
"bike_share"
