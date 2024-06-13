#Finding GCD of two numbers.
gcd=function(a,b){
  if(a>b){
    m=b
  }else{
    m=a
  }
  for(i in 1:m){
    if(a%%i==0 && b%%i==0){
      gcd=i
    }
  }
  return(gcd)
}
gcd(12,75)

#To find LCM making a function.
lcm=function(a,b){
  if(a>b){
    m=a
  }else{
    m=b
  }
  for(i in m){
    if(m%%a==0 && m%%b==0){
      lcm=i
    }else{
      m=m+1
    }
  }
  return(lcm)
}
lcm(15,75)

















