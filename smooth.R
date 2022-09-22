library(fda)
x <- read.csv("https://raw.githubusercontent.com/dmazarei/Microsoft/main/Microsoft.csv")

###### GCV
x1 <- x$Close
x2 <- 1:618
b <-c()
for (i in 3:40){
  ht = create.bspline.basis(rangeval = c(1,618),nbasis = i,norder=3)
  a <- smooth.basis(x2,x1,ht)
  b[i-2] <- a$gcv
}
b
plot(3:30,b[1:28],type="b",pch=19,lwd=4,xlab = " K تعداد",
     ylab="Generalized cross-validation")





###### 3 b-spline basis
ht = create.bspline.basis(rangeval = c(1,618),nbasis = 3,norder=3)
a <- smooth.basis(x2,x1,ht)
plot(1:618,x$Close,pch=19
     ,xlab = "time",ylab = "price",cex = 1.2)
lines(a,col="#581845",lwd=6)

########## 8 b-spline basis 
ht = create.bspline.basis(rangeval = c(1,618),nbasis = 8,norder=3)
a <- smooth.basis(x2,x1,ht)
plot(1:618,x$Close,pch=19
     ,xlab = "time",ylab = "price",cex = 1.2)
lines(a,col="#581845",lwd=6)

########## 18 b-spline basis
ht = create.bspline.basis(rangeval = c(1,618),nbasis = 18,norder=3)
a <- smooth.basis(x2,x1,ht)
plot(1:618,x$Close,pch=19
     ,xlab = "time",ylab = "price",cex = 1.2)
lines(a,col="#581845",lwd=6)

########## 618 b-spline basis

ht = create.bspline.basis(rangeval = c(1,618),nbasis = 618,norder=3)
a <- smooth.basis(x2,x1,ht)
plot(1:618,x$Close,pch=19
     ,xlab = "time",ylab = "price",cex = 1.2)
lines(a,col="#581845",lwd=6)
