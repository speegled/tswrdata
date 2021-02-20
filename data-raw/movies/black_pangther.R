library(tidyverse)
library(lubridate)

mm <- read.csv("data-raw/movies/black_panther", sep = "\t", header = FALSE)
head(mm)
names(mm) <- c("date", "dow", "rank", "daily", "percentpm_ytd", "percentpm_lw", "theatres", "avg", "to_date", "day")

mm <- mm %>% 
  mutate(date = mdy(date))
mm <- mm %>% 
  mutate(daily = as.integer(str_remove_all(daily, "[\\$\\,]")))

plot(mm$date, mm$daily, type = "l")

dd <- ts(mm$daily, frequency = 7)
plot(decompose(dd, type = "m"))
