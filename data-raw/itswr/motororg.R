dd <- read.csv("data-raw/ITSwR/motororg.dat")
head(dd)
library(lubridate)

motororg <- dd
save(motororg, file = "data/motororg.rda")