dd <- read.csv("data-raw/tsa/TSA_Throughput_data_2020_Q1.txt")
head(dd)
library(tidyverse)
dd <- dd %>% 
  mutate(date = lubridate::ymd(date),
         day = lubridate::wday(date))

dd$time <- as.integer(dd$date - lubridate::ymd("2020-01-01"))

tsa <- dd
save(tsa, file = "data/tsa.rda")
