library(fda)
x <- read.csv("https://raw.githubusercontent.com/dmazarei/Microsoft/main/Microsoft.csv")
nrow(x)

plot(x$Close,type="l", lwd=4.5,xaxt='n',ylab = "price",xlab = "")
for (i in 1:length(unique(x$Datetime))) {
  abline(v=which(x$Datetime==unique(x$Datetime)[i])[1],lwd=3,lty=2)
}
abline(v=length(x$Close),lty=2,lwd=3,)

######  8 function observation

a_n <- which(x$Datetime==unique(x$Datetime)[1])
a_n[length(a_n)]
plot(x$Close[a_n[1]:a_n[length(a_n)]],type="l",ylim=c(242,270), lwd=3,xaxt='n',ylab = "price",xlab = "")
for (i in 2:length(unique(x$Datetime))) {
  a_n <- which(x$Datetime==unique(x$Datetime)[i])
  lines(x$Close[a_n[1]:a_n[length(a_n)]], lty=i, lwd=3)
}

