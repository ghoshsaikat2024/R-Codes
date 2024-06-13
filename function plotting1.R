
#Defining a function
y=function(x){
  (x^3)
}
#x=c(-5:5)
#df=data.frame(y,x)
#plot(x,y(x))




library(ggplot2)
ggplot()+   #advantage of using stat or geom_function (instead of geom_point or geom_line) is that this do not require data.frame to plot,you just need to set the limit interval of x and define function.
  xlim(c(-5,5))+  #equivalent function of geom_function in base R package is curve(expr(x),from,to,n).
  stat_function(fun=y,geom="point")
  #stat_function is used to draw any kind of function or expression irrespective of continuous or discrete that's why it supports any kind of geom whether it be linetype or point.
  #geom_function is used only to draw continuous function that's why it supports only lintype graph or geom.


