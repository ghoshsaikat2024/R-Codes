y1<-function(x){log(x)}
y2<-function(x){log(x^-1)}

#This is using ggplot() from ggplot2 library
library(ggplot2)
ggplot(data=data.frame(x=c(-10,15)),aes(x=x))+
  geom_hline(yintercept = 0,color="red",lwd=1)+
  geom_vline(xintercept=0,color="red",lwd=1)+
  geom_function(fun=y1,aes(color="blue"),lwd=1)+
  geom_function(fun=y2,aes(color="green"),lwd=1)+
  scale_color_manual(name="color based on graph",labels=c("logx","log(1/x)"),values=c("blue","green"))+
  theme(legend.title = element_text(face="bold",color="violet",size=12),legend.text = element_text(face="bold",color="purple",size=10))+
          labs(title="Comparison of logx and log(1/x) graph",y="logx & log(1/x)",x="x")+
          annotate(geom="text",label="logx",color="orange",x=10,y=2,size=5)+
          annotate(geom="text",label="log(1/x)",color="orange",x=10,y=-2,size=5)




#This is using plot()from base R pacakage. 
plot(x,y1,type="l",lty=1,lwd=2,col="green",xlim=c(0,25),ylim=c(-5,12),xlab="value of x",ylab="logx & log(1/x)")
lines(x,y2,lwd=2,col="blue")
legend("topright",legend=c("logx","log(1/x)"),title="graph comparison",lty=1,col=c("green","blue"))



#Now I will plot a special graph.
f=function(x){
  log(x,10)/log(x,base=exp(1))  #In R there is no function as ln() so used exp(1)==e instead.
}                               #I have plotted f(x)=log(x,base=10)/ln(x)
library(ggplot2)                #f(x)=log(x)/ln(x)={ln(x)/ln(10)}/ln(x)=1/ln(10)=almost (0.434) which is a constant so the graph will be y=0.434
ggplot()+                       #log(x)=ln(x)/ln(10)  from basic rule i.e. log(a,base=b)=log(a,c)/log(b,c)
  xlim(-5,10)+
  ylim(0,10)+
  geom_function(fun=f)+
  geom_hline(yintercept = 0)+
  geom_vline(xintercept = 0)


















