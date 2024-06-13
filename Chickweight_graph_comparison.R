

df1<-subset(ChickWeight,Diet==1)#subset() helps me to get all rows where diet==1 satisfies.
df1                             #Subset only accepts data,logical operators i.e.==,<,> etc.
max(df1$weight)
df1_1<-data.frame(subset(df1,Chick==1))   #Extracting and transforming into data.frame from Chick==1 category
df1_2<-data.frame(subset(df1,Chick==2))   #Extracting and transforming into data.frame from Chick==2 category
df1_1
df1_2

df2<-subset(ChickWeight,Diet==2)  #Extracting dataset from Diet==2 category.
df2
df2_1<-data.frame(subset(df2,Chick==21)) #Extracting and transforming into data.frame from Chick==21 category
df2_2<-data.frame(subset(df2,Chick==22)) #Extracting and transforming into data.frame from Chick==22 category 
df2_1
df2_2

df3<-subset(ChickWeight,Diet==3)
df3
df3_1<-data.frame(subset(df3,Chick==31)) #Extracting and transforming into data.frame from Chick==31 category
df3_2<-data.frame(subset(df3,Chick==32)) #Extracting and transforming into data.frame from Chick==32 category
df3_1
df3_2









library(ggplot2)       #aes()creates a something so to create legend we have to place color inside it.
                       #scale_color_manual() or scale_color_identity basically specifies that has been created using aes()
ggplot()+              #theme() is to customize the legend.
  geom_point(data=df1_1,mapping=aes(x=Time,y=weight,color="Chick1"))+geom_line(data=df1_1,mapping=aes(x=Time,y=weight,color="Chick1"))+
  geom_point(data=df1_2,mapping=aes(x=Time,y=weight,color="Chick2"))+geom_line(data=df1_2,mapping=aes(x=Time,y=weight,color="Chick2"))+
  geom_point(data=df2_1,mapping=aes(x=Time,y=weight,color="Chick21"))+geom_line(data=df2_1,mapping=aes(x=Time,y=weight,color="Chick21"))+
  geom_point(dat=df2_2,mapping=aes(x=Time,y=weight,color="Chick22"))+geom_line(dat=df2_2,mapping=aes(x=Time,y=weight,color="Chick22"))+
  geom_point(data=df3_1,mapping=aes(x=Time,y=weight,color="Chick31"))+geom_line(data=df3_1,mapping=aes(x=Time,y=weight,color="Chick31"))+
  geom_point(data=df3_2,mapping=aes(x=Time,y=weight,color="Chick32"))+geom_line(data=df3_2,mapping=aes(x=Time,y=weight,color="Chick32"))+
  
  
  
  
  labs(x="Time",y="Chickweight",title="Comparison of weight of different chicks with time from different diet(Diet=1,2,3) category ")+
  scale_color_manual(name="Comparison",
                     breaks=c("Chick1","Chick2","Chick21","Chick22","Chick31","Chick32"),values=c("Chick1"="red","Chick2"="blue","Chick21"="skyblue","Chick22"="green","Chick31"="brown","Chick32"="violet"))+
  theme(legend.position="top")
 #breaks argument is to specify the order of text inside legend.
 #values is to specify the color to each text.

















