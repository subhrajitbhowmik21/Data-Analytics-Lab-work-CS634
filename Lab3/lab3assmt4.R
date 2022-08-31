fixisum=0
fisum=0
Group=c('30-40','40-50','50-60','60-70','70-80','80-90','90-100')
Marks=c(10,15,18,27,35,19,6)
index=0
a=0
h=10 # In our example, class interval is 10
gcf=c(replicate(len,0))
lcf=c(replicate(len,0))
len=length(Group)
Ui=c(replicate(len,0))
Xi=c(replicate(len,0))
gcf=c(replicate(len,0))
lcf=c(replicate(len,0))
print(di)
if(len%%2==0)
{
  index=len/2
}
if(len%%2==1)
{
  index=(len+1)/2
}
u=c(replicate(len,0))
l=c(replicate(len,0))
#Now to use Step Deviation Mean method
for(i in 1:length(Marks))
{
  
  first=strtoi(substr(Group[i],1,2))
  l[i]=first
  last=strtoi(substr(Group[i],4,6))
  u[i]=last
  xi=(first+last)/2
  Xi[i]=xi
  if(i==index)
    a=xi
  
  fixi=xi*Marks[i]
  fixisum=fixisum+fixi
  fisum=fisum+Marks[i]
}
fisum1=fisum
for(i in 1:len)
{
  gcf[i]=fisum1
  fisum1=fisum1-Marks[i]
}
fisum2=Marks[1]
lcf[1]=fisum2
for(i in 2:len)
{
  lcf[i]=fisum2+Marks[i]
  fisum2=fisum2+Marks[i]
} 
xran=append(l,u[len])
#print(gcf)
plot(l,gcf,type="o",col="blue",xlab="Class",ylab="Cumulative Frequency",main="Greater-than Ogive")
par(new=TRUE) 
plot(l,lcf,type="o",col="red",xlab="Class",ylab="Cumulative Frequency",main="Less-than Ogive")
legends_coord <- locator(1)
print(legends_coord)
N=lcf[len]
lo=N/2
f=0
c=0
ll=0
for(i in 1:len)
{
  if(lo<lcf[i])
  {
    f=Marks[i]
    c=lcf[i-1]
    ll=l[i]
    break
  }
}

median = ll + (((N/2-c)/f) * h)
print(paste("Median=",median))

Fm=0
L=0
pos=0
for(i in 1:len)
{
  if(Marks[i]>Fm)
  {
    Fm=Marks[i]
    L=l[i]
    pos=i
  }
}
F1=Marks[pos-1]
F2=Marks[pos+1]
del1=Fm-F2
del2=Fm-F1
mode=L+(((del1)/(del1+del2))*h)
print(paste("Mode=",mode))


"library(agricolae)

#define values to plot
value_bins = graph.freq(Xi, plot=FALSE)
values = ogive.freq(value_bins, frame=FALSE)

#create ogive chart
plot(values, xlab='Values', ylab='Relative Cumulative Frequency',
     main='Ogive Chart', col='steelblue', type='b', pch=19, las=1, bty='l')"

