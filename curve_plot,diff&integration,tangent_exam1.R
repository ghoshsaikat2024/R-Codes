#Differentiation,plotting of a tangent of a curve.
f<-function(x){
  x^3+x
}
#using Deriv command from Deriv library to get derivative of the function,
library(Deriv)
f1=Deriv(f,"x")
f1
#f1 is the slope of the tangent of f.
#Equation of tangent is y-y1=f1(x-x1)
#at x=1,2 y=13*(x-1)+2
f1(2)
ft=function(x){       #Equation of tangent
  13*(x-1)+2
}


curve(expr=f,from=0,to=5,col="red")
curve(expr=ft,from=0,to=5,col="blue",add=T)


#plotting of trigonometric functions
f=function(x){
  sin(x)
}
library(Deriv)
f1=Deriv(f,"x")
f1

curve(f,from=-pi,to=pi,col="red")
curve(f1,from=-pi,to=pi,col="blue",add=T)

#Integration
f=function(x){
  x^2+x
}
f1=integrate(f,0,5)
f1




