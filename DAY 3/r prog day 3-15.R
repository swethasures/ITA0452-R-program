h<-matrix(c(7,12,28,3,41), nrow=2,ncol=5) 
result<-barplot(h, main="Revenue chart", xlab="month", names.arg=c("Mar","Apr","May","Jun","Jul") )
print(result)