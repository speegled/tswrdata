aa <- read.csv("data-raw/itswr/ApprovActiv.dat", sep = "\t")
aa <- janitor::clean_names(aa)

aa$year <- rep(1996:2006, times = c(rep(4, 10), 3))
aa$quarter <- rep(1:4, length.out = 43)
housing <- aa
save(housing, file = "data/housing.rda")
