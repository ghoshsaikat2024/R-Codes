x<-c(-10:10)
fun1<-x^2
fun2<-x*2
plot(x,fun1,main="x^2 & x*2 comparison",xlab="x",ylab="x^2 & x*2",xlim=c(-15,15),ylim=c(-50,120),type="l",lwd=2,col="red")
lines(x,fun2,lwd=2,col="blue")
legend("topright",legend=c("x^2 graph","2*x graph"),lty=1,col=c("red","blue"),box.lty=0)



