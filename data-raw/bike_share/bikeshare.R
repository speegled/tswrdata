bike_share <- read.csv("data-raw/bike_share/hour.csv")
head(bike_share)

library(dplyr)
str(bike_share)
bike_share$dteday <- lubridate::ymd(bike_share$dteday)

save(bike_share, file = "data/bike_share.rda")
