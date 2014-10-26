##  run_analysis.R 

## R version 3.1.1 64 bit

## Raw data is described here:  
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Raw data can be downloaded here:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## LBettencourt
## Created:  10/12/2014
## Revised / Finalized: 10/25/2014 

## This script does the following:

## 1. Reads in and Merges the training and the test sets to create one data set.
## 2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3.	Uses descriptive activity names to name the activities in the data set
## 4.	Appropriately labels the data set with descriptive variable names. 
## 5.	From the data set in step 4, creates a second, independent tidy data set with the 
##    average of each variable for each activity and each subject.

## Need plyr package for the "rename" function
install.packages("plyr")
library(plyr)

## Need data.table package for the data.table function
install.packages("data.table")
library(data.table)

setwd("C:/users/LAkin/Documents/DataScience/3_DataCleaning/Project")
getwd()

## activity_labels has the description of each activity
##  the y files have the codes for the activities
## the features file has all the column names

## Read in Test Dataset
TestData <- read.table("C:/Users/LAkin/Documents/DataScience/3_DataCleaning/Project/UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="")
## Read in Test Subjects
TestSubjects <- read.table("C:/Users/LAkin/Documents/DataScience/3_DataCleaning/Project/UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")
## Read in Test Data Activity codes
TestActivity <- read.table("C:/Users/LAkin/Documents/DataScience/3_DataCleaning/Project/UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="")

## Create new column main dataset that contains the subject code
TestData["SubjectID"] <- TestSubjects$V1

## Create new column main dataset that contains the activity code
TestData["Activity"] <- TestActivity$V1

## Read in Training Dataset
TrainData <- read.table("C:/Users/LAkin/Documents/DataScience/3_DataCleaning/Project/UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="")
## Read in Training Subjects
TrainSubjects <- read.table("C:/Users/LAkin/Documents/DataScience/3_DataCleaning/Project/UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="")
## Read in Training Data Activity codes
TrainActivity <- read.table("C:/Users/LAkin/Documents/DataScience/3_DataCleaning/Project/UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="")

## Create new column main dataset that contains the subject code
TrainData["SubjectID"] <- TrainSubjects$V1

## Create new column main dataset that contains the activity code
TrainData["Activity"] <- TrainActivity$V1

## These two files have the same format/structure
## head(TestData): fields V1-V561 + new SubjectID, DataSource, and Activity columns
## head(TrainData): fields V1-V561  + new SubjectID,DataSource and Activity columns

## Concatenate Training and Test into 1 dataset
HAR_Smartphone <- rbind(TestData,TrainData)

## Read in Features data
Features <- read.table("C:/Users/LAkin/Documents/DataScience/3_DataCleaning/Project/UCI HAR Dataset/features.txt", header=FALSE, sep="")

## Per instructions only want to keep fields that are associated with MEAN and STD which are all
## identified by the text "mean()" and "std()".   There are other columns using the word MEAN but
## these are not measurement means but rather other measurements using mean values (frequencies, angles,etc)
## and are not included in this process

Features <-subset(Features, (grepl("mean()", Features$V2, fixed = TRUE)>0 | grepl("std()", Features$V2, fixed = TRUE)>0))

## Use subsetted Features dataframe to subset the HAR_SmartPhone dataset to only the means/std columns selected
## Create a new column to add a V to the V1 column so that it matches the HAR_Smartphone column names
Features["V3"] <- paste("V",Features$V1,sep ="")
## Create new rows to include SubjectID, Activity, DataSource
Features  <- rbind(Features,
              data.frame(V1="562", V2="SubjectID", V3="SubjectID"),
              data.frame(V1="563", V2="Activity", V3="Activity"))


## Subset to only the valid column names now listed in Features$V3
HAR_Smartphone <- subset(HAR_Smartphone,select = Features$V3)

## Use Features.V2 description to create meaningful/valid column name

Features["V4"] <- gsub(",","",Features$V2)
Features["V4"] <- gsub("-","",Features$V4)
Features["V4"] <- gsub("[(]","",Features$V4)
Features["V4"] <- gsub("[)]","",Features$V4)

## Fix label typo
Features["V4"] <- gsub("BodyBody","Body",Features$V4)

## Substitute abbreviations with full descriptor

Features["V4"] <- gsub("tBody","TimeBody",Features$V4)
Features["V4"] <- gsub("tGravity","TimeGravity",Features$V4)
Features["V4"] <- gsub("fBody","FrequencyBody",Features$V4)
Features["V4"] <- gsub("Acc","Acceleration",Features$V4)
Features["V4"] <- gsub("Mag","Magnitude",Features$V4)
Features["V4"] <- gsub("Gyro","Gyroscope",Features$V4)

##  Convert labels to lower case (per instructions...
##  even though I think this is crazy and long and hard to read and would never do this in real life!!!)
Features["V4"] <- tolower(Features$V4)

## Append feature labels to V1-V561 of HAR_Smartphone dataset

colnames(HAR_Smartphone) <- c(Features$V4)

## Read in Activity Labels
ActivityLabel <- read.table("C:/Users/LAkin/Documents/DataScience/3_DataCleaning/Project/UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="")
## Rename columns to be more descriptive
ActivityLabel <- rename(ActivityLabel, c("V1"="activity", "V2"="activitydescription"))

## Merge Activity Labels with main dataset
HAR_Smartphone <- merge(HAR_Smartphone, ActivityLabel, by.x = "activity", by.y = "activity")

## Drop the activity column (keep the ActivityDescription column) since it's not used in calculations
HAR_Smartphone <- subset(HAR_Smartphone, select=-activity)

## Convert to data table for calculating mean over all columns using lapply
HAR_Smartphone <- data.table(HAR_Smartphone)

## Compute mean of each column, by activity and subject
HAR_Smartphone_Tidy <- HAR_Smartphone[, lapply(.SD,mean),by=list(activitydescription,subjectid)]

## Order by activity and subject 
HAR_Smartphone_Tidy <- HAR_Smartphone_Tidy[order(activitydescription, subjectid),]

## Output final datasets
write.csv(HAR_Smartphone, file = 'HAR_Smartphone_Raw.csv', row.names = FALSE)
write.csv(HAR_Smartphone_Tidy, file = 'HAR_Smartphone_Summary.csv', row.names = FALSE, quote = FALSE)
