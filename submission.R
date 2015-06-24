answers <- predictTest
# Write submission files to predVal/ans
pml_write_files = function(x){
  n = length(x)
  path <- "predVal"
  for(i in 1:n){
    filename = paste0("problem_id_",i,".txt")
    write.table(x[i],file=file.path(path, filename),quote=FALSE,row.names=FALSE,col.names=FALSE)
  }
}

pml_write_files(answers)
