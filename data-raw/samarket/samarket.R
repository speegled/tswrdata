dd <- read.csv("data-raw/sa40", sep = "\t")
ee <- read.csv("data-raw/zarusd", sep = "\t")
dd$Date <- lubridate::mdy(dd$Date)
ee$Date <- lubridate::mdy(ee$Date)
library(tidyverse)
dd$Price <- str_remove(dd$Price, ",")
dd <- select(dd, Date, Price) %>% 
  rename(SA40 = Price) %>% 
  mutate(SA40 = as.numeric(SA40))
ee <- select(ee, Date, Price) %>% 
  rename(zar_usd = Price)
summary(ee)
summary(dd)
dd <- left_join(dd, ee)
dd <- janitor::clean_names(dd)
samarket <- dd
save(samarket, file = "data/samarket.rda")
