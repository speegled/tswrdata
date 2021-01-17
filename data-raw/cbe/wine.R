dd <- read.csv("data-raw/cbe/Table_3-Table 1.csv")
library(tidyverse)
dd <- dd %>% select(-matches("^X"))
dd <- janitor::clean_names(dd)
head(dd)
dd <- select(dd, time, total)
dd <- dd %>% 
  mutate(total = str_remove_all(total, "[r,]")) %>% 
  mutate(total = as.numeric(total)) %>% 
  mutate(year = str_extract(time, "^[0-9]{4}")) %>% 
  select(-time, year, wine_cons = total) %>% 
  select(year, wine_cons)
wine <- dd
save(wine, file = "data/wine.rda")
