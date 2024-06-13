#Using an inbuilt function called ifelse(condition,x,y) ,if true executes x and if false executes y.
ifelse(2>3,"The condition is true","The condition is false")

#To find odd and even numbers in a sequence.
x=c(1,2,3,4,5) #Making a vector
count_even=0
count_odd=0
for(val in x){
  if(val %% 2 == 0){
    count_even=count_even+1
  }else{
     count_odd=count_odd+1 
    }
}
cat("There are",count," even numbers in",x,"\n")
cat("There are",count_odd,"odd numbers in ",x)

#To find factorial.
n=as.integer(readline(prompt="Enter a number:"))
factorial=1
if(n>0){
  for (i in n:1){
    factorial=factorial*i
  }
}else if(n==0){
  factorial=1
}
cat("factorial of n is",factorial)












