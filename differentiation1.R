#To calculate derivative of a function we need to coerce it into an expression using expression(x^3+y^2) and then use D()
#D(expression,"name") where name is the independent variable with respect to which we will differentiate.

f1<-expression(x^3+y^2) #Created the expression   #is.expression() to check whether expression or not .
dyf1=D(f1,"y");dyf1;                 #as.expression(dyf1) to change into expression.      #1st order differentiation w.r.t y
D(dyf1,"x")              #Again differentiation w.r.t x

dyf2=D(dyf1,"y")      #2nd order differentiation w.r.t y
  

#To calculate partial derivative of a function we can use deriv()
#deriv(expression,c("x","y")) is the format.

dxy=deriv(expression(x^3+y^2),c("x","y"));dxy;typeof(dxy)   #deriv() gives output as an expression whereas D() doesn't whereas both these functions take argument as an expression.
                                            #Deriv() is also a function like D() in Deriv library or package which takes argument in expression,function,string,call any form and return in that same form or class.
library(Deriv)                            #And Deriv() can also calculate higher order derivative.To do so we have to pass "nderiv" argument.
                                    #So it becomes useful while plotting a function and its derivative .
f=function(x){x^3}                #We cannot plot using deriv() or D() because it doesn't take function as argument so we cannot plot using geom_function() or stat whereas Deriv() does.
Deriv(f,"x")        #To calculate 1st order derivative
Deriv(f,"x",nderiv=3)      #To calculate 3rd order derivative
class(Deriv(f,"x"))
#format:Deriv(fun/expression/string/call,name,nderiv=1 or 2 or n)


#Now to find higher order derivatives we need create a function like that because in R this kind of function doesn't exist.
#We will do so using recursive method.
#Recursion is a kind of metod where we call the same function inside its body thus creating a loop we get the result.
#Using D() or deriv() we can create higher order derivative function but we cannot plot it because it will be in form of expression or call.
#So to plot we will use Deriv() from Deriv::Derive() package to crate higher oreder derivative function and  plot it.

#d1 higher order derivative function using D() which we cannot plot.
d1=function(expression,name,order=1){           #Creating a function(arg1,arg2,...)
  if(order<1) return(stop("Invalid order"))     #We can give the 2nd brackets and even can ignore certain times
  if(order==1) return(D(expression,name))       #Stop() breaks the loop and shows a error message
  else return(d1(D(expression,name),name,order-1))  #There are no such conditional statement as elseif in R like in C.
                                                  #Although there is a ternary operator ifelse(test_expression,x(if true),y(if false)) in R .
}
d1(expression(x^3),"x")

#d2 higher order derivative function using Deriv() from Deriv library or package which we can plot.
library(Deriv)
f1=function(x) x^3
Deriv(f1,"x",nderiv=3)
#Although Deriv() can calculate higher order derivatives but still we are making another function using Deriv().

d2=function(fun,name,order=1){
  if(order<1) stop("Invalid Order")
  if(order==1) Deriv(fun,"x")
  else d2(Deriv(fun,name),"x",order-1)
}
f=function(x) (x^3)
d1f=d2(f,"x",1)
d2f=d2(f,"x",2)
library(ggplot2)
ggplot()+
  xlim(c(0,5))+
  geom_function(fun=f,lwd=1,aes(color="f"))+
  geom_function(fun=d1f,lwd=1,aes(color="d1f"))+
  geom_function(fun=d2f,lwd=1,aes(color="d2f"))+
  scale_color_manual(name="Function",labels=c("f(x)=x^3","d1f=3x^2","d2f=6x"),breaks=c("f","d1f","d2f"),values=c("blue","green","red"))+ #breaks argument specifies the mapping of color.
  geom_hline(yintercept=0,color="orange",lwd=0.5)+
  geom_vline(xintercept=0,color="orange",lwd=0.5)+
  labs(title="Comparison of function and its derivative",ylab="y",xlab="x")+
  annotate(label="f(x)=x^3",geom="text",color="brown",x=3.7,y=80,size=7)+
  annotate(label="d1f=3x^2",geom="text",color="brown",x=4.7,y=50,size=7)+ 
  annotate(label="d2f(x)=6x",geom="text",color="brown",x=4,y=18,size=7)+
  theme(legend.position="top",
        legend.title=element_text(face="bold",color="orange",size=12),
        legend.text=element_text(face="italic",color="orange",size=10),
        plot.title=element_text(face="bold",size=15,color="brown",hjust=0.5),
        axis.title.x=element_text(face="italic",size=20,color="orange"),
        axis.title.y=element_text(face="italic",size=20,color="orange")
        )



