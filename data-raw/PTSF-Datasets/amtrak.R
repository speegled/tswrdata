dd <- readxl::read_xls("data-raw/PTSF-Datasets/AmtrakPassengersMonthly T-Competition.xls")
library(lubridate)
library(tidyverse)
dd$Month <- ymd(dd$Month)
dd <- select(dd, -matches("log|tra"))
dd <- dd %>% janitor::clean_names()
amtrak <- dd
save(amtrak, file = "data/amtrak.rda")
