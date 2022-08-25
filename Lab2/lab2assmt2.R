v1=c(1:19,19)
arr=array(v1)
print(arr)
print(is.numeric(arr))
#sum
Sum=Reduce("+",arr)
print(paste("Sum=",Sum))
cc=length(arr)
print(paste("Count of elements in the array=",cc))
mean=mean(arr)
print(paste("Mean of elements in the array=",mean))
median=median(arr)
print(paste("Median of elements in the array=",median))
mode=mode(arr)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

print(paste("Mode of elements in the array=",getmode(arr)))

midrange=(min(arr)+max(arr))/2
print(paste("Mid-range of elements in the array=",midrange))