{
num <- as.integer(readline(prompt = "Enter a number: "))
sum <- 0
for(i in 1:num)
{
  sum <- sum+i;
}
print(paste("The sum is", sum))
}