f1<-function(x){tanpi(x)} #sinpi(x)=sin(pi*x),since inside bracket sin() takes value as radian so we have used sinpi()
f2<-function(x){1/tanpi(x)} #So if angle is 90 degrees we can write x=90/180 i.e. sinpi(90/180)==sin(pi/2)(since pi radian==180 degrees)

library(ggplot2)
ggplot()+
  xlim(-2,2)+
  ylim(-2,2)+
  geom_hline(yintercept = 0,color="brown",lwd=0.5)+
  geom_vline(xintercept = 0,color="brown",lwd=0.5)+
  geom_function(fun=f1,aes(color="blue"),lwd=1)+
  geom_function(fun=f2,aes(color="red"),lwd=1)+
  labs(title="tan(x) vs cot(x) graph",x="x(Angle in degrees)",y="y")+
  scale_color_manual(name="Graph based on color",labels=c("tan(x)","cot(x)"),values=c("blue","red"))+
  theme(plot.title=element_text(face="bold",color="orange",size=15,hjust =0.5),
         axis.title.x=element_text(face="bold",color="orange",size = 15),
         axis.title.y=element_text(face="bold",color="orange",size=15),
         legend.title=element_text(face="italic",color="purple",size=12),
         legend.text=element_text(face="italic",color="violet",size=12),
         legend.position="top")+
  annotate(geom="text",label="tan(x)",color="blue",size=8,x=1.5,y=1.7)+
  annotate(geom="text",label="cot(x)",color="red",size=8,x=-1.5,y=1.8)+
  annotate(geom="text",label=c("-315","-225","-135","-45","45","135","225","315"),color="brown",x=c(-1.75,-1.27,-0.75,-0.25,0.25,0.75,1.27,1.75),y=-0.1,size=4)+
  annotate(geom="text",label=c("-360","-270","-180","-90","0","90","180","270","360"),color="brown",x=c(-2,-1.5,-1,-0.5,0,0.5,1,1.5,2),y=0.1,size=4)
  
  