fixisum=0
fisum=0
Group=c('30-40','40-50','50-60','60-70','70-80','80-90','90-100')
Marks=c(10,15,18,27,35,19,6)
index=0
a=0
len=length(Group)
Di=c(replicate(len,0))
Xi=c(replicate(len,0))
print(di)
if(len%%2==0)
{
  index=len/2
}
if(len%%2==1)
{
  index=(len+1)/2
}
#Now to use Assumed Mean method
for(i in 1:length(Marks))
{
  
  first=strtoi(substr(Group[i],1,2))
  last=strtoi(substr(Group[i],4,6))
  xi=(first+last)/2
  Xi[i]=xi
  if(i==index)
    a=xi
  print(xi)
  fixi=xi*Marks[i]
  fixisum=fixisum+fixi
  fisum=fisum+Marks[i]
}

for(i in 1:length(Marks))
{
  Di[i]=Xi[i]-a
}
fidisum=0
for(i in 1:length(Marks))
{
  temp=Marks[i]*Di[i]
  fidisum=fidisum+temp
}
assumedMean=a+(fidisum/fisum)
print(paste("Assumed Mean=",assumedMean))
