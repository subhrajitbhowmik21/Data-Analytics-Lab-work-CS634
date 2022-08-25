v1=c(1:19,19)
arr=array(v1)

n_grps = 4
grps = split(arr, rep_len(1:n_grps, length(arr)))

print(grps)