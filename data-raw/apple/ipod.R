dd <- read.csv("data-raw/apple/ipod_sales.csv")
dd <- janitor::clean_names(dd)
ipod <- dd
save(ipod, file = "data/ipod.rda")

plot(dd$iPod, type = "l")


plot(decompose(ts(dd$iPod, frequency = 4), type = "mult"))

trend <- decompose(ts(dd$iPod, frequency = 4), type = "mult")$trend



bass <- function(p, q, m, x) {
  (m*(p + q)^2 * exp(-(p + q) * x))/(p * (1 + (q/p) * exp(-(p + q)* x))^2)
}
plot(trend, type = "l")
curve(bass(.1, .2, 200, x), add = T, col = 1)
curve(bass(.01, .2, 200, x), add = T, col = 2) #this looks pretty good
curve(bass(.001, .2, 250, x), add = T, col = 3)


bb <- data.frame(trend = as.vector(trend), time = 1:length(trend))
plot(bb$time, bb$trend)
bb$time
mod <- nls(trend ~ m * (p + q)^2 * exp(-(p + q) * time)/(p*(1 + (q/p)* exp(-(p + q)* time))^2),
           data = bb,
           start = list(p = .01, q = .4, m = 250))
summary(mod)
a <- coefficients(mod)
plot(bb$time, bb$trend, type = "p")
curve(bass(a[1], a[2], a[3], x), add = T, col = 2)
