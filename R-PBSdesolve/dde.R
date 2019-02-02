library(PBSddesolve)

dd <- function(t, y, parms) {
    if (t < 1) 
	lag1 <- 1
    else lag1 <- pastvalue(t - 1)[[1]]
    if (t < 0.2) 
	lag2 <- 1
    else lag2 <- pastvalue(t - 0.2)[[2]]

    dy1 <- lag1
    dy2 <- lag1 + lag2
    dy3 <- y[2]

    c(dy1, dy2, dy3)
}

y_0 <- c(y1=1, y2=1, y3=1)

times <- seq(0, 5, len = 201)

yout <- dde(y = y_0, times = times, func = dd, parms = NULL, tol=1e-9)

matplot(yout$time,yout[,-1], type="l", lty=1)



# provides the exact solution to ~1e-6!

yout <- dde(y = y_0, times = 0:5, func = dd, parms = NULL, tol=1e-9)

exact_20_digits <- c(19.175, 176.42257844738, 190.34420193607)

yout[6, 2:4] - exact_20_digits
