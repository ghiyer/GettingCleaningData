setwd("C:/Users/RAGA/Desktop/Gaayathri/Course3/Project")
library("data.table")
library("dplyr")
run_analysis <- function(){
      
      # Set the folder name which contains the data files to 'destinationFolder' 
      destinationFolder = "UCI_HAR_Dataset"
      
      # Get the list of files in the folder
      variables = list.files(destinationFolder, pattern=".txt", full.names = T, recursive=FALSE) 
      print(variables)
      # Read the files - Activities and Features
      activities = read.table(variables[1], stringsAsFactors = FALSE)  
      features = data.frame(read.table(variables[2], stringsAsFactors = FALSE)  )
      features$V2 = gsub("\\()", "", features$V2) 

      # Read the directories in the destinational folder
      subFolders = list.dirs(path=".",recursive=TRUE)
      
      # Get the list of files from the subfolders
      filesTest = list.files(subFolders[3], pattern=".txt", full.names = T, recursive=FALSE)
      filesTrain = list.files(subFolders[5], pattern=".txt", full.names = T, recursive=FALSE)

      # Read the files in the subfolder 'Test'
      testFileData = lapply(filesTest, function(x) { read.table(x, stringsAsFactors = FALSE)})
      
      # Replace the Y_test document fields with meaningful data (activity) listed in Activities file
      fTst3 = data.frame(testFileData[3])
      fTst3 = lapply(fTst3, function(x) {fTst3$V1 = activities$V2[fTst3$V1]})
      testFileData[3]=fTst3

      # Column bind the Subject, X and Y files to get a single Test file
      testData = do.call(cbind, testFileData)
      testData =  setnames(testData, make.names(colnames(testData)))

      # Read the files in the subfolder 'Train'
      trainFileData = lapply(filesTrain, function(x) { read.table(x, stringsAsFactors = FALSE)})
      
      # Replace the Y_train document fields with meaningful descriptive names (activity) listed in Activities file
      fTst3 = data.frame(trainFileData[3])
      fTst3 = lapply(fTst3, function(x) {fTst3$V1 = activities$V2[fTst3$V1]})
      trainFileData[3]=fTst3

      # Column bind the Subject, X and Y files to get a single Train file
      trainData = do.call(cbind, trainFileData)
      trainData =  setnames(trainData, make.names(colnames(trainData)))

      # Merge the Test and Train data set
      accelerometerData = rbind(testData, trainData)
      
      # Reorder the columns of full data set      
      accelerometerData = accelerometerData[,c(1,length(names(accelerometerData)), 2:(length(names(accelerometerData))-1))]

      # Give descriptive names for the columns - refer 'Features' data set
      colNms = features$V2
      names(accelerometerData) = c("Subject", "Activity", colNms)

      # Get the subset of full data set (accelerometerData) - subset containing mean and std
      meanStdIndices = grep("-mean|-std", colnames(accelerometerData))  
      subsetData = accelerometerData[,c(1,2,meanStdIndices)]

      # Tidy the data set 
      tidyData = subsetData %>% group_by(Subject,Activity) %>% summarise_all(funs(mean))
      names(tidyData) = gsub("-", ".", names(tidyData)) # More clean up of column names
      write.table(tidyData,"TidyData.csv", row.names = FALSE)
}
