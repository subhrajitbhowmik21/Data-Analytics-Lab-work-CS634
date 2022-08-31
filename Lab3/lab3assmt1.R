fixisum=0
fisum=0
Group=c('30-40','40-50','50-60','60-70','70-80','80-90','90-100')
Marks=c(10,15,18,27,35,19,6)
for(i in 1:length(Marks))
{
  first=strtoi(substr(Group[i],1,2))
  last=strtoi(substr(Group[i],4,6))
  xi=(first+last)/2
  print(xi)
  fixi=xi*Marks[i]
  fixisum=fixisum+fixi
  fisum=fisum+Marks[i]
}
directMean=fixisum/fisum
print(paste("direct mean=",directMean))




