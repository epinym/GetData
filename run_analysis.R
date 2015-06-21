## Chris Brown / epinym
### June 21, 2015
### Getting and Cleaning Data (https://class.coursera.org/getdata-015/) 
### run_analysis.R for class project

# Please follow the steps in CodeBook.md for downloading and tidying the data
# before attempting to use this script

# read in experimentor's pre-procesed test data
testData <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)

# read in experimentor's pre-processed training data
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)

# merge the data
mergedData <- rbind(testData,trainData)

# extract the mean and standard deviation
