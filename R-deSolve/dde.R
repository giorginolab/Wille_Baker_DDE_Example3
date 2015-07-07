# Example from Wille-Baker, 

library(deSolve)

dd <- function(t,y,parms) {
 if(t<1) 
	lag1<-1
 else
	lag1<-lagvalue(t-1,1)

 if(t<.2)
	lag2<-1
 else 
	lag2<-lagvalue(t-.2,2)

 dy1<-lag1
 dy2<-lag1+lag2
 dy3<-y[2]

 list(c(dy1,dy2,dy3))
}


y_0<-c(1,1,1)

times<-seq(0,5,len=201)

yout<-dede(y=y_0,times=times, func=dd,  parms = NULL, atol = 1e-9)

plot(yout)


# deSolve provides the exact solution to ~1e-6!
exact_20_digits<-c(19.175000000000000000, 176.42257844738031770, 190.34420193607041693)

yout[201,2:4]-exact_20_digits


