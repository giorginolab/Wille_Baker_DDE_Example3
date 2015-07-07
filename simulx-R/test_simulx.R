library(gridExtra)

p <- c(tau1 = 1, 
       tau2 = .2) 

out <- list(name=c('f1', 'f2','f3'), time=seq(0,5,by=.001))

res <- simulx(model     = 'dde2.txt', 
              parameter = p, 
              output    = out)

plot(res$f1,type="l",col="blue",ylim=c(0,200))
lines(res$f2,col="green")
lines(res$f3,col="red")
axis(4,at=seq(0,200,by=20))
grid()
