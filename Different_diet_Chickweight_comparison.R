
df1<-subset(ChickWeight,Diet==1)
df1
max(df1$weight)
max_df1weight_row<-subset(df1,df1$weight==max(df1$weight))
max_df1weight_row
max_weightdf1<-data.frame(subset(df1,Chick==7))
max_weightdf1

df2<-subset(ChickWeight,Diet==2)  
df2
max_df2weight_row<-subset(df2,df2$weight==max(df2$weight))
max_df2weight_row
max_weightdf2<-data.frame(subset(df2,Chick==21))
max_weightdf2

df3<-subset(ChickWeight,Diet==3)
df3
max_df3weight_row<-subset(df3,df3$weight==max(df3$weight))
max_df3weight_row
max_weightdf3<-data.frame(subset(df3,Chick==35))
max_weightdf3

df4<-subset(ChickWeight,Diet==4)
df4
max_df4weight_row<-subset(df4,df4$weight==max(df4$weight))
max_df4weight_row
max_weightdf4<-data.frame(subset(df4,Chick==48))
max_weightdf4





library(ggplot2)       #aes()creates a something so to create legend we have to place color inside it.
#scale_color_manual() or scale_color_identity basically specifies that has been created using aes()
ggplot()+           #As we have specified the data argument at first so we should not write factor(ChickWeight$Diet) rather just factor(Diet).   
  geom_point(data=max_weightdf1,mapping=aes(x=Time,y=weight,color=factor(Diet)))+geom_line(data=max_weightdf1,mapping=aes(x=Time,y=weight,color=factor(Diet)))+
  geom_point(data=max_weightdf2,mapping=aes(x=Time,y=weight,color=factor(Diet)))+geom_line(data=max_weightdf2,mapping=aes(x=Time,y=weight,color=factor(Diet)))+
  geom_point(data=max_weightdf3,mapping=aes(x=Time,y=weight,color=factor(Diet)))+geom_line(data=max_weightdf3,mapping=aes(x=Time,y=weight,color=factor(Diet)))+  
  geom_point(data=max_weightdf4,mapping=aes(x=Time,y=weight,color=factor(Diet)))+geom_line(data=max_weightdf4,mapping=aes(x=Time,y=weight,color=factor(Diet)))+
  labs(title="Comparison of weight of different chicks with time from different diet(Diet=1,2,3,4) category ",
       subtitle = "Max weighted Chicks have been taken here",x="Time",y="ChickWeight")+
  theme(legend.position = "top")

#theme() is to customize the legend.







