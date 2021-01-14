dd <- read.csv("data-raw/global_temp/yearly")
library(tidyverse)

yearly <- janitor::clean_names(dd)
save(yearly, file = "data/yearly.rda")

dd <- read.csv("data-raw/global_temp/monthly_csv.csv")
dd <- dd %>% 
  mutate(Date = lubridate::ymd(Date))
monthly <- janitor::clean_names(dd)
save(monthly, file = "data/monthly.rda")
