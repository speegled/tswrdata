z <- arima.sim(model = list(ar = c(.5), ma = c(.3, .7)), n = 300)
mod <- arima(z, order = c(1, 0, 2))
acf(resid(mod))

sim_data_3 <- z
save(sim_data_3, file = "data/sim_data_3")
  