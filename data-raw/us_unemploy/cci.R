cci <- expsmooth::unemp.cci
zoo::index(cci)[41]
cci <- cci[1:41, 2]
plot(cci)
cci[41]

save(cci, file = "data/cci.rda")

