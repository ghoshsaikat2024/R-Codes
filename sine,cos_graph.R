##This graph has been made using ggplot()function from ggplot2 library
f1<-function(x){sinpi(x)} #sinpi(x)=sin(pi*x),since inside bracket sin() takes value as radian so we have used sinpi()
f2<-function(x){cospi(x)} #So if angle is 90 degrees we can write x=90/180 i.e. sinpi(90/180)==sin(pi/2)(since pi radian==180 degrees)

library(ggplot2)
ggplot()+
  xlim(-3,3)+
  ylim(-2,2)+
  geom_hline(yintercept = 0,color="brown",lwd=0.5)+
  geom_vline(xintercept = 0,color="brown",lwd=0.5)+
  geom_function(fun=f1,aes(color="blue"),lwd=1)+
  geom_function(fun=f2,aes(color="red"),lwd=1)+
  labs(title="sin(x) vs cos(x) graph",x="x",y="y")+
  scale_color_manual(name="Graph based on color",labels=c("sin(x)","cos(x)"),values=c("blue","red"))+
  theme(plot.title=element_text(face="bold",color="orange",size=15,hjust =0.5),
        axis.title.x=element_text(face="bold",color="orange",size = 15),
        axis.title.y=element_text(face="bold",color="orange",size=15),
        legend.title=element_text(face="italic",color="purple",size=12),
        legend.text=element_text(face="italic",color="violet",size=12),
        legend.position="top")+
  annotate(geom="text",label="sin(x)",color="brown",size=8,x=1,y=1)+
  annotate(geom="text",label="cos(x)",color="brown",size=8,x=-2.6,y=1)







##This graph has been made using plot() function in base package in R

deg<-(-360:360)
rad=(deg*pi)/180
sinx<-sin(rad)
cosx<-cos(rad)
plot(deg,sinx,xlim=c(-360,360),ylim=c(-2,2),main="sine graph",xlab="angle in degrees",ylab="sinx & cosx",type="l",lwd=2,col="red")
lines(deg,cosx,col="blue",lty=2,lwd=2)
legend(200,1.8,legend=c("sinx graph","cosx graph"),col=c("red","blue"),lty=1:2)
