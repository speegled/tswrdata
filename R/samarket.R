#' Financial Data of South Africa
#'
#' The SA 40 index is an index of the top 40 stocks in South Africa. The value of the SA 40 index
#' and the rand-dollar exchange rate is collected for dates from 2001 through 2021, with some missing
#' values at the beginning. 
#' 
#' Several of the stocks do business overseas and earn income in foreign denominations. 
#' A weak rand would indicate that repatriating money to South Africa would receive a higher 
#' share of domestic currency.
#'  
#'
#' @format A data frame with 4769 observations of 2 variables
#' \describe{
#'   \item{date}{Date from 2001-12-18 to 1-13-2021}
#'   \item{sa40}{The closing price of the SA 40 index.}
#'   \item{zar_usd}{Closing exchange rate in terms of rand per dollar.}
#' }
#'
#' @source \url{https://za.investing.com/}
"samarket"
