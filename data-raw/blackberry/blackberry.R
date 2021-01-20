dd <- read.csv("data-raw/blackberry/blackberry_-unit-sales.csv")
dd <- janitor::clean_names(dd)
library(tidyverse)
blackberry <- dd %>% 
  separate(category, into = c("quarter", "year"), sep = "/", convert = T)
names(blackberry)[3] <- "handheld"
names(blackberry)[4] <- "tablets"
save(blackberry, file = "data/blackberry.rda")
