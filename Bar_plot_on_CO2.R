#There are different kinds of barplots.A barplot that is divided into group ,subgroup and numeric is called a grouped barplot.
#If there is no subgroup then we can just map aes x to group(categorical variable) and y to numeric.
#But if there is subgroup the we should map it to fill argument as an condition variable.
#stat is statistical summary,stat=="bin" means it will take just numeric and map it as proportional to how many it has appeared .
#By deafault in geom_bar stat is "bin",so to map it with respect to categorical variable we need to specify stat=="identity".
#We can use geom_col which is an alternative to geom_bar with stat=="identity".

data()
View(CO2)
QN1=subset(CO2,Plant=="Qn1")
QN1
QN2=subset(CO2,Plant=="Qn2")
QN2
QN3=subset(CO2,Plant=="Qn3")
QN3
QC1=subset(CO2,Plant=="Qc1")
QC1
QC2=subset(CO2,Plant=="Qc2")
QC2
QC3=subset(CO2,Plant=="Qc3")
QC3
MN1=subset(CO2,Plant=="Mn1")
MN2=subset(CO2,Plant=="Mn2")
MN3=subset(CO2,Plant=="Mn3")
MC1=subset(CO2,Plant=="Mc1")
MC2=subset(CO2,Plant=="Mc2")
MC3=subset(CO2,Plant=="Mc3")


library(ggplot2) #To compare data between Quebec chilled and nonchilled.
ggplot(data=rbind(QN1,QN2),mapping=aes(x=conc,y=uptake,group="Plant",fill=as.factor(Plant)))+
  geom_bar(stat="identity")


#This one is after reordering in ascending  manner.
ggplot(data=QN1,mapping=aes(fill=as.factor(conc),x=reorder(conc,+uptake),y=uptake))+
  geom_bar(stat="identity",width=0.2)

#This one is after flipping the coordinate axis and reordering in descending manner.
ggplot(data=QN1,mapping=aes(fill=as.factor(conc),x=reorder(conc,+uptake),y=uptake))+
  geom_bar(stat="identity",width=0.2)+coord_flip()

#This plot is to show which is dominant and by how much,basically one plot is superimposed on the other.
ggplot(mapping=aes(x=conc,y=uptake,fill=as.factor(Plant)))+
  geom_bar(stat="identity",data=QN1)+
  geom_bar(stat="identity",data=QN2)


#This plot is to visualize data of different Quebec plants under CO2 conc in nonchilled condition.
A<-ggplot(data=rbind(QN1,QN2,QN3),mapping=aes(fill=as.factor(conc),x=Plant,y=uptake))+
  geom_bar(stat="identity",position="dodge")#Position=="dodge" is to set different plants data position beside one another ,otherwise it will overlap.
#Position=="stack" is to stack the data of diffrent subgroup of same plant along the Y axis.

#This plot is to visualize data of different Quebec plants under CO2 conc in chilled condition.
B<-ggplot(data=rbind(QC1,QC2,QC3),mapping=aes(x=Plant,y=uptake,fill=as.factor(conc)))+
  geom_bar(stat="identity",position="dodge")

#This plot is to visualize data of different Mississippi plants under CO2 conc in nonchilled condition.
C<-ggplot(data=rbind(MN1,MN2,MN3),mapping=aes(x=Plant,y=uptake,fill=as.factor(conc)))+
  geom_bar(stat="identity",position="dodge")

#To visualize data of mississippi plants in chilled condition.
D<-ggplot(data=rbind(MC1,MC2,MC3),mapping=aes(x=Plant,y=uptake,fill=as.factor(conc)))+
  geom_bar(stat="identity",position="dodge")

#Comparing data of same Quebec plant in chilled and nonchilled condition.
E<-ggplot(data=rbind(QN1,QC1),mapping=aes(x=conc,y=uptake,fill=as.factor(Plant)))+
  geom_bar(stat="identity",position="dodge")+
  scale_x_continuous(limit=c(95,175,250,350,500,675,1000))
#This one is to modify the scale along x axis.

#Comparing data of same mississippi plant in chilled and nonchilled condition.
F<-ggplot(data=rbind(MN1,MC1),mapping=aes(x=conc,y=uptake,fill=as.factor(Plant)))+
  geom_bar(stat="identity",position="dodge")+
  scale_x_continuous(limit=c(95,175,250,350,500,675,1000))

#Comparing data of 1st Quebec and mississippi plant.
G<-ggplot(data=rbind(QN1,QC1,MN1,MC1),aes(x=conc,y=uptake,fill=as.factor(Plant)))+
  geom_bar(stat="identity",position="dodge")+
  scale_x_continuous(limit=c(95,175,250,350,500,675,1000))




#Comparing data of all plants in percent stacked method.Where we can see the uptake percentage of each plant at each level of concentration.  
H<-ggplot(data=CO2,aes(x=Plant,y=uptake,fill=as.factor(conc)))+
  geom_bar(stat="identity",position="fill")
#To compare data in percentage form we just need to use position="fill".
  
#Trying to plot all graphs in same page.
library(ggpubr) #ggpubr is package to enhance the visualization     capabilities of ggplot2.
ggarrange(A,B,C,D,E,F,G,H,ncol=2,nrow=4,labels=c("A","B","C","D","E","F","G","H"))


















