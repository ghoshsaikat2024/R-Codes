data() #Loads built in datasets.
View(CO2)  #Loading dataset.
factor(CO2$Type)
Qn1=subset(CO2,Plant=="Qn1")#1st Quebec plant to place in nonchilled condition data.frame
Qc1=subset(CO2,Plant=="Qc1")  #1st Quebec plant to place in chilled condition data.frame
#1st Mississippi plant in non-chilled condition
Mn1=subset(CO2,Plant=="Mn1") 
Mc1=subset(CO2,Plant=="Mc1") #1st mississippi plant in chilled condition
#All plants non-chilled condition.
Nc=subset(CO2,Treatment=="nonchilled")  
Cc=subset(CO2,Treatment=="chilled")     #All plants in chilled condition
library(ggplot2)
#1st plot (which is of Quebec plant in different condition  conc vs uptake graph)
p1<-ggplot(data=rbind(Qn1,Qc1),mapping=aes(x=conc,y=uptake,color=Plant))+
   geom_point()+
   geom_line()+
   labs(title="1st Quebec plant in chilled and non-chilled condition comparison",x="Conc(mL/L)",y="Uptake(umol/m^2 sec)")+
   theme(legend.position="top",
         legend.title=element_text(face="bold",color="brown"),
         plot.title=element_text(hjust=0.5,face="bold",color="brown"),
         axis.title.x = element_text(face="bold",color="brown"),
         axis.title.y = element_text(face="bold",color="brown")
     )  
#2nd plot (which is of Mississippi plant in different condition  conc vs uptake graph)
p2<-ggplot(data=rbind(Mn1,Mc1),mapping=aes(x=conc,y=uptake,color=Plant))+
  geom_point()+
  geom_line()+
  labs(title="1st Mississippi plant in chilled and non-chilled condition comparison",x="Conc(mL/L)",y="Uptake(umol/m^2 sec)")+
  theme(legend.position="top",
        legend.title=element_text(face="bold",color="brown"),
        plot.title=element_text(hjust=0.5,face="bold",color="brown"),
        axis.title.x = element_text(face="bold",color="brown"),
        axis.title.y = element_text(face="bold",color="brown") 
    )
#3rd plot (which is of all plants in non-chilled condition conc vs uptake graph)

p3<-ggplot(data=Nc,mapping = aes(x=conc,y=uptake,color=Plant))+
  geom_point()+
  geom_line()+
  labs(title="Quebec and Mississippi plants in non-chilled condition Conc vs Uptake comparison",x="Conc(mL/L)",y="Uptake(umol/m^2 sec)")+
  theme(legend.position="top",
        legend.title=element_text(face="bold",color="brown"),
        plot.title=element_text(hjust=0.5,face="bold",color="brown"),
        axis.title.x = element_text(face="bold",color="brown"),
        axis.title.y = element_text(face="bold",color="brown") 
    )
#4th plot(which is of all plants in chilled condition conc vs uptake graph)
p4<-ggplot(data=Cc,mapping=aes(x=conc,y=uptake,color=Plant))+
  geom_point()+
  geom_line()+
  labs(title="Quebec and Mississippi plants in chilled condition Conc vs Uptake comparison",x="Conc(mL/L)",y="Uptake(umol/m^2 sec)")+
  theme(legend.position="top",
        legend.title=element_text(face="bold",color="brown"),
        plot.title=element_text(hjust=0.5,face="bold",color="brown"),
        axis.title.x = element_text(face="bold",color="brown"),
        axis.title.y = element_text(face="bold",color="brown") 
   )
#Combining all the plots in one page
#The easiest way to do this is using multiplot() from easyGgplot2 package.
#But unfortunately easyGgplot2 is not available for my R version(version-4.1.2)
#Alternative functions are ggarrange()[ggpubr package],grid.arrange()[gridExtra package],plot_grid()[cowplot package].
#You can install any package but I'll install ggpubr because it'll automatically install gridExtra and cowplot package .
#I will use ggarrange(). 
install.packages("ggpubr") #Installing package
library(ggpubr)            #Loading package
ggarrange(p1,p2,p3,p4,ncol=2,nrow=2)







