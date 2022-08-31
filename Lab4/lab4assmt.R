
arr=array(c(floor(runif(100, min=0, max=100))))
print(arr)
print(arr[1])
len=length(arr)
print(len)
sum=Reduce("+",arr)
variance=var(arr)
stddev=sd(arr)
print(paste("Variance=",variance))
print(paste("Standard Deviation=",stddev))
mean=mean(arr)
print(mean)
coeffvariation=(stddev/mean)*100
print(paste("Coefficient of variation=",coeffvariation))
tmp=0
tmpsum=0
for(i in arr)
{
  tmp=abs(i-mean)
  tmpsum=tmpsum+tmp
}
mad=tmpsum/len
print(paste("Mean Absolute Deviation=",mad))
qs=quantile(arr)
print(paste("First Quartile Q1=",qs[2]))
print(paste("Second Quartile Q2=",qs[3]))
print(paste("Third Quartile Q3=",qs[4]))
IQR=qs[4]-qs[2]
print(paste("Inter Quartile Range=",IQR))
print(min(arr))
boxplot(arr, main="Boxplot")
loc=locator(1)
print(loc)