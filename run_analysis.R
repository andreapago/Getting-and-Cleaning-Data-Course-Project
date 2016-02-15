# You should create one R script called run_analysis.R that does the following.
# 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



#look at the presence of the dataset in the working directory. If not present the data set is downloaded
#and unzipped automatically
downloadData<-function()
{
  files<-list.files(getwd())
  if(grep("dataset.zip",files)==FALSE)
  {
  url1="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url1, "dataset.zip","libcurl")
  files<-unzip("dataset.zip")
  }
  
}


# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.

tidyDatasetCreator<-function()
{
  library(data.table)
  library(dplyr)
  library(plyr)
  
  #downloading and unzipping the data if necessary
  downloadData()
  
  #create the strings that will be used to get the path of the files
  mainDir="./UCI HAR Dataset/"
  testTrain=c("test/","train/")
  suffixTrain=c("subject_train.txt","X_train.txt","y_train.txt")
  suffixTest=c("subject_test.txt","X_test.txt","y_test.txt")
  
  #tempValList<-list()
  #namesList<-list()

  testSubjects<-print(paste0(mainDir,testTrain[1],suffixTest[1]))
  trainSubjects<-print(paste0(mainDir,testTrain[2],suffixTrain[1]))
  
  testX<-print(paste0(mainDir,testTrain[1],suffixTest[2]))
  trainX<-print(paste0(mainDir,testTrain[2],suffixTrain[2]))
  
  testY<-print(paste0(mainDir,testTrain[1],suffixTest[3]))
  trainY<-print(paste0(mainDir,testTrain[2],suffixTrain[3]))
  
  
  #extract the features of interest: those representing mean and standard deviation
  featureDF<-read.table("UCI HAR Dataset/features.txt")
  meanFields<-grep("mean()",featureDF$V2, fixed = TRUE)
  stdFields<-grep("std()",featureDF$V2, fixed = TRUE)
  requiredFields<-c(meanFields,stdFields)
  
  
  #read the train and test data sets in dataframes and merge them together
  trainData<-read.table(trainX)
  testData<-read.table(testX)
  total<-rbind(trainData,testData)
  
  #select only the relevant variables (i.e., those representing mean and standard deviation) of the whole train and test datasets
  filtered<-select(total,requiredFields)
  
  #read the names of the features to extract to be used and column names
  namesCol<-featureDF[requiredFields,]$V2
  namesCol<-as.character(namesCol)
  #remove the ugly () to make the names more readable
  namesCol<-sub("\\()","",namesCol)
  #assign the names to the columns
  names(filtered)<-namesCol
  
  
  #read the train and test data sets of activities in dataframes and merge them together
  trainYData<-read.table(trainY)
  testYData<-read.table(testY)
  totalYData<-rbind(trainYData,testYData)
  
  #read activity names and merge activity IDs with corresponding names
  activityTable<-read.table("UCI HAR Dataset/activity_labels.txt")
  activitiesNamed<-merge(totalYData,activityTable,by.x = "V1", by.y = "V1")
  names(activitiesNamed)<-c("toDrop","activityName")
  activitiesNamed$toDrop<-NULL
  

  #binding  measures and activities dataframes together
  completeDF<-cbind(filtered,activitiesNamed)
  
  
  
  
  return(completeDF)
}


#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
computeMeanForSubjectAndAcivity<-function()
{
  completeDF<-tidyDatasetCreator()
  
  mainDir="./UCI HAR Dataset/"
  testTrain=c("test/","train/")
  suffixTrain=c("subject_train.txt","X_train.txt","y_train.txt")
  suffixTest=c("subject_test.txt","X_test.txt","y_test.txt")
  
  tempValList<-list()
  namesList<-list()
  #DF<-data.frame()
  
  #create the string locating the file with subject data
  testSubjects<-print(paste0(mainDir,testTrain[1],suffixTest[1]))
  trainSubjects<-print(paste0(mainDir,testTrain[2],suffixTrain[1]))
  
  #read the train and test data sets of subjects involved in dataframes and merge them together
  trainSubjectsData<-read.table(trainSubjects)
  testSubjectsData<-read.table(testSubjects)
  totalSubjectsData<-rbind(trainSubjectsData,testSubjectsData)
  
  #rename the column to a meaningful name
  names(totalSubjectsData)<-c("subjectID")
  
  #merge the data and activities with the corresponding subjects
  completeDataAndSubjectsDF<-cbind(completeDF,totalSubjectsData)
  
  #split the data frame according to the subjectID and activityName and apply the mean function to each variable
  summarizedDF<-ddply(completeDataAndSubjectsDF, .(subjectID, activityName), colwise(mean))
  
  
  write.table(summarizedDF,"tidyDataSetStep5.txt",row.names = FALSE)
  
  return(summarizedDF)
  
}
  






