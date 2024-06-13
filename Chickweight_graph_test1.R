View(ChickWeight)
Diet1=subset(ChickWeight,Diet==1)
Diet1
library(ggplot2)  #If color,shape or fill aesthetics are mapped to categorical variables then we should use the group argument to specify the group.
ggplot(data=ChickWeight,aes(x=Time,y=weight,color=Diet,group=Chick))+  #Here so may chicks have same diet plan(1,2,3,4) so Diet is a categorical variable and the group is Chick.
 geom_line(lwd=1)+
 labs(title="Chicks  weight vs Time Graph",subtitle="Different Chicks grouped as per Diet plan")+  
  theme(
    plot.title = element_text(hjust=0.5),
    plot.subtitle = element_text(hjust=0.5)
    
  )
