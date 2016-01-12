pollutantmean <- function(directory, pollutant, id=1:332) {
  
  fileNames <- list.files(directory) #this will store the files list in fileNames
  fileNumbers <- as.numeric(sub('\\.csv$','', fileNames)) #fileNames list in numberic stored in fileNumbers
  
  
  selected.files = fileNames[match(id,fileNumbers)]
  
  Data = lapply(file.path(directory,selected.files),read.csv)
  
  Data = do.call(rbind.data.frame,Data)
  
  mean(Data[,pollutant],na.rm=TRUE)
                                 
                                 
                                 
  
}