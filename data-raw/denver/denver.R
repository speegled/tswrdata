library(TSA)
data("boardings")
denver <- boardings[,1]
save(denver, file = "data/denver.rda")
