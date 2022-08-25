v1=c(1:19,19)
arr=array(v1)

n_grps = 4
grps = split(arr, rep_len(1:n_grps, length(arr)))

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
arr1=array(grps[1])
arr2=array(grps[2])
arr3=array(grps[3])
arr4=array(grps[4])
arr1=as.numeric(unlist(arr1))
arr2=as.numeric(unlist(arr2))
arr3=as.numeric(unlist(arr3))
arr4=as.numeric(unlist(arr4))

print(arr1)
print(class(arr1))
print(str(arr1))
print(typeof(arr1))
print(is.numeric(arr1))
print(arr1)

print("Stats for group1:")
mean1=mean(arr1,na.rm=TRUE)
print(paste("Mean for group 1=",mean1))
median1=median(arr1)
print(paste("Median for group 1=",median1))
mode1=getmode(arr1)
print(paste("Mode for group 1=",mode1))
midrange1=(min(arr1)+max(arr1))/2
print(paste("Mid-range for group 1=",midrange1))

print("Stats for group2:")
mean2=mean(arr2,na.rm=TRUE)
print(paste("Mean for group 2=",mean2))
median2=median(arr2)
print(paste("Median for group 2=",median2))
mode2=getmode(arr2)
print(paste("Mode for group 2=",mode2))
midrange2=(min(arr2)+max(arr2))/2
print(paste("Mid-range for group 2=",midrange2))

print("Stats for group3:")
mean3=mean(arr3,na.rm=TRUE)
print(paste("Mean for group 3=",mean3))
median3=median(arr3)
print(paste("Median for group 3=",median3))
mode3=getmode(arr3)
print(paste("Mode for group 3=",mode3))
midrange3=(min(arr3)+max(arr3))/2
print(paste("Mid-range for group 3=",midrange3))

print("Stats for group4:")
mean4=mean(arr4,na.rm=TRUE)
print(paste("Mean for group 4=",mean4))
median4=median(arr4)
print(paste("Median for group 4=",median4))
mode4=getmode(arr4)
print(paste("Mode for group 4=",mode4))
midrange4=(min(arr4)+max(arr4))/2
print(paste("Mid-range for group 4=",midrange4))



