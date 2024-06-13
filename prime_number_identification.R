#All prime numbers in an interval.
count_prime=0
for(i in 131:291){
  for(j in 2:i){
    if(i%%j==0 && j<i){
      break
    }
    if(j==i){
      print(i)
      count_prime=count_prime+1
    }
  }
}
cat("There are ",count_prime,"prime numbers")

#Program to identify whether a number is prime or not.
n=as.integer(readline(prompt="Enter a number:"))
if(n<=0){
  print("invalid input")
}
if(n==1 || n==2){
  cat(n,"is a prime number.")
}
if(n>2){
  for(i in 2:n){
    if(n%%i==0 && i<n){
      print("composite number.")
      break
    }
    if(i==n){
      print("prime number.")
    }
  }
}
#Program Ends
#Program Ends
#To find next prime.
n=7
m=n+1
for(i in 2:m-1){
  if(m%%i!=0){
    cat(m,"is the next prime number.")
  }else{
      m=m+1
    }
  
}









