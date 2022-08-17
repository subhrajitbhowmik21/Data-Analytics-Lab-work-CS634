{
  n=as.integer(readline(prompt="Enter the value of n"))
sum=0
for(i in 1:n)
{
  sum=sum+i
}
print(paste("Sum of ",n," numbers is =",sum))
}