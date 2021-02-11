mm <- readLines("data-raw/movies/black_panther") 
library(tidyverse)
mm <- paste(mm, collapse = "\n")
mm
mm <- str_replace_all(mm, "\n[President|Easter|Independ|Memo].*?\n", "\tHoliday")
mm <- str_split(mm, pattern = "\n")
dd <- data.frame(val = mm[[1]])
separate(dd, col = val, into = c("date", "dow", "rank", "daily", "percentpm_ytd", "percentpm_lw", "theatres", "avg", "to_date", "day"), sep = "\t")

mm <- read.csv("data-raw/movies/black_panther", sep = "\t", header = FALSE)
head(mm)
names(mm) <- c("date", "dow", "rank", "daily", "percentpm_ytd", "percentpm_lw", "theatres", "avg", "to_date", "day")

str_replace(aa, "\n[President|Easter|Independ|Memo].*?\n", "\tHoliday")
str_replace_all(mm, "\n[President|Easter|Independ|Memo].*?\\n", "\tHoliday") %>% str_split(pattern = "\n")
