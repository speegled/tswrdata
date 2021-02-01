dd <- read.csv("data-raw/stl_temp/2419944.csv")
dd <- janitor::clean_names(dd)
head(dd)
library(tidyverse)
lubridate::ymd(dd$date) %>% 
  summary
library(lubridate)
dd %>% 
  mutate(date =lubridate::ymd(date) ) %>%  
  filter(str_detect(name, "LAMBERT"), year(date) %in% 1980:1999) %>% 
  ggplot(aes(x = date, y = tmax)) + 
  geom_line()


stltemp <- dd
save(stltemp, file = "data/stltemp.rda")
