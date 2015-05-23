
## Optional Code for Directory other than workign directory ##
#Set working directory to a location where your data is extracted. Preferably your working directory 
#setwd("C:/Users/kapuma/Documents/R") #/getdata-projectfiles-UCI HAR Dataset (2)")

#Download file properties
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#destfile <- "UCI HAR Dataset.zip"
#download.file(url, destfile)

#unzip file
#unzip(destfile)

#Import required libraries
library(dplyr)
library(data.table)
#library(reshape2)

#Read all objects into the R memory
activity_labels <-  read.table("./UCI HAR Dataset/activity_labels.txt", sep="") 
activity_labels[,1] <- as.numeric(activity_labels[,1])
subject_train <-   read.table("./UCI HAR Dataset/train/subject_train.txt", sep="") 
subject_test <-   read.table("./UCI HAR Dataset/test/subject_test.txt", sep="") 
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt",sep="") 
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt",sep="") 
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt",sep="") 
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt",sep="") 
features <- read.table("./UCI HAR Dataset/features.txt",sep="", quote="") 



#Assign descriptive column names to all
#Step -4 Appropriately labels the data set with descriptive variable names. 
colnames(x_test) <- features[,2]
colnames(y_test) <- c("ActivityLabel")
colnames(y_train) <- c("ActivityLabel")
colnames(subject_test) <- c("SubjectID")
colnames(subject_train) <- c("SubjectID")
colnames(activity_labels)  <- c("ActivityLabel", "ActivityLabelName")
colnames(x_train) <- features[,2]

#Add Subjects to Test and Training data sources
x_test <- cbind(x_test, subject_test)
x_train <- cbind(x_train, subject_train)

# Add Activities to X Test and Training data sources
x_test <- cbind(x_test, y_test)
x_train <- cbind(x_train, y_train)


#Merge Test and Training together - STEP -1 
FullDataSet <- rbind(x_test, x_train)

#Join Activity Labels  with Activity Ids -Step 3
NewFullDataSet <- left_join(FullDataSet,activity_labels, by=NULL, copy=FALSE)

#Create a list of columns needed in Tidy dataset -Step 2  
ListofColumns <- c("SubjectID", "ActivityLabelName", grep("mean|std" , names(NewFullDataSet), ignore.case=TRUE, value=TRUE, perl=TRUE))
FullSubSet <- NewFullDataSet[,ListofColumns]

#Step - 5 - Pull final Tidy dataset by grouping by ActivityLabel Name and Subject IDs and calculate mean for each column          
tidydataset <- FullSubSet %>% group_by(ActivityLabelName,SubjectID) %>% summarise_each(funs(mean))

#Optionally, write to a file
write.table(tidydataset, file = "MyTidyData_CourseProject.txt", row.name=FALSE)

