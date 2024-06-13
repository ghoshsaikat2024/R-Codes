n=as.integer(readline(prompt="Enter a number"))

for(i in n)
if(n>1){
 for(i in 2:(n-1)){
  if(n%%i!=0){
    
  }else{
    cat(n,"is a composite number\n")
  }
}
  cat(n,"is a prime number\n")
  }else if(n==1){
  cat("1 is not a prime number.\n")
  }
#Fibonacci numbers.
nterms=as.integer(readline(prompt="enter how many terms:"))
n1=0
n2=1
count=2
#To check whether the no of terms are valid or not
if(nterms<=0){
  print("invalid input")
}else if(nterms==1){
  cat("Fibonacci series is ",n1)
}else if(nterms>1){
  print("Fibonacci series is:")
  print(n1)
  print(n2)
  while(count<nterms){
    nth=n1+n2
    print(nth)
    #Update value
    n1=n2
    n2=nth
    count=count+1
  }
}

