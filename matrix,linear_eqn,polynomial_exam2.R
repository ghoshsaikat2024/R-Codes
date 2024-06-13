A=matrix(c(1:9),nrow=3,byrow=T)
rownames(A)=c("a","b","c")
colnames(A)=c("x","y","z")
A
A[1,]
B=matrix(c(5:13),nrow=3,byrow=FALSE,dimnames=list(rnames=c("a","b","c"),cnames=c("x","y","z")))
B

A+B
A-B
A*B
A/B
A%*%B
#To find transpose of any matrix use t().
t(A)
t(B)
#diag(A) gives all the diagonal elements of A.
#diag(x,k) makes a diagonal matrix of elements in x of order k.

diag(A)
diag(B)
#Making a diagonal matrix of order 3 where 2,4,5 are the diagonal elements.
diag(c(2,4,5),3)
#rowSums() and colSums() gives the sum of each row and column.
rowSums(A)
colSums(B)
rowMeans(A)


#eigen(A) gives the eigen values in $values row andeigen vectors in $vectors row

eigen(B)
eigen(A)

#To get a inverse of a matrix A use solve(A).Here A has to be a square matrix i.e order should mxm not mxn.

solve(A)
#To solve any system of linear equations use solve(A,B)
#where A is the matrix containing coefficients of all the variables in that system of equations and B is the matrix containing right hand values of the equation. 
#X is the variable matrix.

A1=matrix(c(2:10),byrow=T,nrow=3)
B1=matrix(c(1,2,3),byrow=FALSE,nrow=3,ncol=1)
solve(A1,B1)

#det() returns determinant of a matrix.
det(A)

#To find roots of a polynomial we use polyroot() function.
#Roots of a ploynomial means to find the values at which that polynomial is zero.
# A ploynomial ofsingle variable is p(x)= (a1)+(a2*x)+(a3*x^2)+....+(an*x^n)
#Here a is the coefficients of variable x.

#for equation 2*x - 3 =0 root is
polyyroot(c(-3,2))

#for 3*x^2 - 4*x +5 =0
polyroot(c(5,-4,3))

#for 2*x^4 - 3x + 12= 0 
polyroot(c(12,-3,0,0,2))









