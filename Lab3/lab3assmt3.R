fixisum=0
fisum=0
Group=c('30-40','40-50','50-60','60-70','70-80','80-90','90-100')
Marks=c(10,15,18,27,35,19,6)
index=0
a=0
h=10 # In our example, class interval is 10
len=length(Group)
Ui=c(replicate(len,0))
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
#Now to use Step Deviation Mean method
for(i in 1:length(Marks))
{
  
  first=strtoi(substr(Group[i],1,2))
  last=strtoi(substr(Group[i],4,6))
  xi=(first+last)/2
  Xi[i]=xi
  if(i==index)
    a=xi
  
  fixi=xi*Marks[i]
  fixisum=fixisum+fixi
  fisum=fisum+Marks[i]
}

for(i in 1:length(Marks))
{
  Ui[i]=(Xi[i]-a)/h
}
fiuisum=0
for(i in 1:length(Marks))
{
  temp=Marks[i]*Ui[i]
  fiuisum=fiuisum+temp
}
stepdevMean=a+(h*(fiuisum/fisum))
print(paste("Step Deviation Mean=",stepdevMean))
