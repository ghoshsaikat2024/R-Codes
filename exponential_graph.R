f1<-function(x){exp(x)}
f2<-function(x){exp(-x)}
library(ggplot2)
ggplot()+         #Using ggplot()
  xlim(-5,5)+
  geom_hline(yintercept = 0,color="brown",lwd=0.5)+
  geom_vline(xintercept = 0,color="brown",lwd=0.5)+
  geom_function(fun=f1,aes(color="blue"),lwd=1)+
  geom_function(fun=f2,aes(color="red"),lwd=1)+
  labs(title="e^x vs e^-x graph comparison",x="x",y="y")+
  scale_color_manual(name="Graph based on color",labels=c("e^x","e^-x"),values=c("blue","red"))+
  theme(plot.title=element_text(face="bold",color="orange",size=15,hjust =0.5),
        axis.title.x=element_text(face="bold",color="orange",size = 15),
        axis.title.y=element_text(face="bold",color="orange",size=15),
        legend.title=element_text(face="italic",color="purple",size=12),
        legend.text=element_text(face="italic",color="violet",size=10),
        legend.position="top")+
  annotate(geom="text",label="e^x",color="brown",size=8,x=4,y=100)+
  annotate(geom="text",label="e^-x",color="brown",size=8,x=-4,y=100)





#Using plot()

plot(x,y1,main="e^x&e^-x graph",xlab="x",ylab="e^x & e^-x",type="l",lty=1,lwd=2,xlim=c(-5,10),ylim=c(-5,200),col="blue")
lines(x,y2,col="red",lwd=2)
legend("topright",legend=c("e^x line","e^-x line"),lty=1,col=c("blue","red"),title="Graph Comparison")