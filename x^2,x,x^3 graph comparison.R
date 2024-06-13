y1=function(x){
  x
}
y2=function(x){
  x^2
}
y3=function(x){
  x^3
}
library(ggplot2)
ggplot()+
  xlim(c(-5,5))+
  geom_hline(yintercept = 0,color="brown",lwd=0.5)+
  geom_vline(xintercept = 0,color="brown",lwd=0.5)+
  geom_function(fun=y1,aes(color="y1"),lwd=1)+
  geom_function(fun=y2,aes(color="y2"),lwd=1)+
  geom_function(fun=y3,aes(color="y3"),lwd=1)+
  scale_colour_manual(name="comparison",labels=c("x","x^2","x^3"),breaks=c("y1","y2","y3"),values=c("red","blue","green"))+
  theme(legend.position="top",
        legend.title=element_text(face="bold",color="violet",size=12),
        legend.text=element_text(face="bold",color="purple",size=10),
        plot.title=element_text(face="bold",color="orange",hjust =0.5), #By default plot title gets created at top left side but to adjust we should use hjust(to adjust horizontally) paramater in theme(plot.title=element_text(hjust=0.5)).
        axis.title.y = element_text(face="bold",color="orange"),     #Range of hjust is [0,1] where o.5 means middle and 1 means extreme right.
        axis.title.x = element_text(face="bold",color="orange")      
        )+
  labs(title="Comparison of x,x^2,x^3")+  #We can do do th y&x axis labelling inside labs() as well.
  ylab("y")+       #We can change the legend title using color parameter inside labs(color=legend_title).
  xlab("x")+              #Or we can use name parameter inside scale_color_maual(name=legend_title)
#We can use quote() to write write mathematical expressions in y axis using labs(y=quote(f(x)==logx)).
 annotate(geom="text",label="x",color="brown",x=-5,y=-10,size=7)+
  annotate(geom="text",label="x^2",color="brown",x=-3,y=20,size=7)+
  annotate(geom="text",label="x^3",color="brown",x=4.5,y=125,size=7)
