cc <- read.csv("data-raw/cbe/cbe.dat", sep = "\t")
head(cc)
cbe <- cc
save(cbe, file = "data/cbe.rda")
