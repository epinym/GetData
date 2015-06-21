## Chris Brown / epinym
### June 21, 2015
### Getting and Cleaning Data (https://class.coursera.org/getdata-015/) 
### run_analysis.R for class project

# Please follow the steps in CodeBook.md for downloading and tidying the data
# before attempting to use this script

## load the libraries we need

library(dplyr)

## read in all of our data

# read in experimentor's pre-procesed test data
testData <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
# read in experimentor's activity indicator
testActivity <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
# read in subject number
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)


# read in experimentor's pre-processed training data
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
# read in experimentor's activity indicator
trainActivity <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
# read in subject number
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)

# read in activity labels (to be used to label the rows)
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

# read in column names (features), and then name the columns
features <- read.table("./UCI HAR Dataset/features.txt", sep=" ", header=FALSE) 
colnames(features) <- c("Number","Name")

# make the strings for column names easier to use 
features$Name <- gsub("\\(|\\)", "", features$Name, perl = TRUE)
features$Name <- gsub("\\-", "", features$Name, perl = TRUE)
features$Name <- gsub("\\,", "", features$Name, perl = TRUE)

# apply column names to both testData and trainDate
colnames(testData) <- features[,"Name"]
colnames(trainData) <- features[,"Name"]

# add our two new columns (Activity, Subject) to testData and trainData data frames
# as a little bit of a fudge, assign activity names based on row # 
testData$Activity <- activityLabels[testActivity[,1],2]
testData$Subject <- testSubject[,1]
trainData$Activity <- activityLabels[trainActivity[,1],2]
trainData$Subject <- trainSubject[,1]

# merge the data
mergedData <- rbind(testData,trainData)

# find the just the columns indicies that we want
activityCol <- match("Activity", names(mergedData))
subjectCol <- match("Subject", names(mergedData))
meanCols <- grep("mean", names(mergedData), ignore.case = TRUE)
stdCols <- grep("std", names(mergedData), ignore.case = TRUE)
desiredCols <- c(subjectCol, activityCol, meanCols, stdCols)


# a random fix for dupe column names
# https://stackoverflow.com/questions/28549045/dplyr-select-error-found-duplicated-column-name
#testData <- testData[ !duplicated(names(testData)) ]
#trainData <- trainData[ !duplicated(names(testData)) ]

# extract only the columns that we want to get down to our tidyDetail table.data
tidyDetail <- mergedData[,desiredCols]

# summarize
#tmpTidySummary <- aggregate(tidyDetail, by=list(Subject = tidyDetail$Subject, Activity = tidyDetail$Activity), mean, data = tidyDetail[,3:88])
tmpTidySummary <- aggregate(tidyDetail, by=list(Subject = tidyDetail$Subject, Activity = tidyDetail$Activity), mean)


# strip extranious columns created by 'mean' in previous function
tidySummary <- tmpTidySummary[,c(1,2,5:90)]

write.table(tidySummary,file="tidySummary_by_activity_and_subject.txt", row.name=FALSE)
