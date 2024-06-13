#To find summation of numbers.
#finding sum of n numbers.
n=as.integer(readline(prompt="Enter the number:"))
#n=10
sum=0
for(i in 1:n){
  sum=sum+i
}
cat(sum,"is the summation")
#To calculate sum of the square of first n numbers.
n=10
sum=0
for(i in 1:n){
  sum=sum+(i*i)
}
cat(sum,"is the sum of square of first n numbers")

#To find mean and meadian without using built in functions.
x=c(1,2,3,4,5,6,7,8,9)
n=length(x)
sum=0
for(i in x){ 
  sum=sum+i
}
mean=sum/n
mean
#Finding meadian.
sort(x)# arranging from decreasing to increasing.
if(n%%2!=0){
  median=x[(n+1)/2]
}else{
  median=(x[n/2]+x[n/2+1])/2
}
median











