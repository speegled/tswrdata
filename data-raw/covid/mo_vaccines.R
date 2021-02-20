dd <- read.csv("data-raw/covid/vaccines_2202021.csv", sep = "\t", fileEncoding="UTF-16LE")
library(tidyverse)

dd <- dd %>% janitor::clean_names()
dd <- dd %>% select(1:3)
names(dd) <- c("date", "measure", "doses")
head(dd)
dd$date <- lubridate::mdy(dd$date)
dd$measure
dd <- select(dd, -measure)
dd
ggplot(dd, aes(x = date, y = doses)) + 
  geom_smooth(span = .2) + 
  geom_point()
print(ts(rev(dd$doses), start = c(12, 1), frequency = 7), calendar = T)
forecast::findfrequency(dd$doses)
vaccines <- dd
save(vaccines, file = "data/vaccines.rda")
