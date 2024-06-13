#library(help="datasets") or data() loads the built in datasets
#To select one dataset we can just run the title of dataset(to see in normal format) or use View(title) to see data in a spreadsheet style/data.frame format.
data() #Loads built in datasets.
View(CO2)  #Loading dataset.
factor(CO2$Type)
Qn1=subset(CO2,Plant=="Qn1")  #1st Quebec plant to place in nonchilled condition data.frame
Qn1
Qc1=subset(CO2,Plant=="Qc1")  #1st Quebec plant to place in chilled condition data.frame
Qc1
#plotting with ggplot2 library.

ggplot2::ggplot()+
  geom_hline(yintercept = 0,color="brown")+
  geom_vline(xintercept = 0,color="brown")+
  geom_point(data=data.frame(Qn1),aes(x=conc,y=uptake,color="Qn1"))+
  geom_line(data=data.frame(Qn1),aes(x=conc,y=uptake))+
  geom_point(data=data.frame(Qc1),aes(x=conc,y=uptake,color="Qc1"))+
  geom_line(data=data.frame(Qc1),aes(x=conc,y=uptake))+ 
  scale_color_manual(name="Different conditions",labels=c("Qn1","Qc1"),breaks=c("Qn1","Qc1"),values=c("red","blue"))+
  labs(title="1st Quebec plant in chilled and non-chilled conditions",x="Conc(mL/L)",y="Uptake(umol/m^2 sec)")+
  theme(plot.title=element_text(hjust=0.5,face="bold",color="orange"),
        legend.position = "top",
        legend.title=element_text(color="orange",face="bold"),
        legend.text=element_text(face="italic"),
        axis.title.x = element_text(color="orange",face="bold"),
        axis.title.y=element_text(color="orange",face="bold"),
        )+
  annotate(geom="text",label="Qn1",x=230,y=36,color="brown")+
  annotate(geom="text",label="Qc1",x=250,y=27,color="brown")
  
  


