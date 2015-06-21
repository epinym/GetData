## Chris Brown / epinym
June 21, 2015

Getting and Cleaning Data (https://class.coursera.org/getdata-015/) 

Code book for class project

# Information about the data
A description of the data is here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Steps to obtain the data (R code)
        urlSource = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        fileDest="Dataset.zip"
        download.file(urlSource,destfile=fileDest,method="curl")

# Steps to extract the data (R code) 
The following command is system dependent, but should work on most *nix systems. This shell command extracts the data to a new directory 'UCI HAR Dataset'

        system("unzip Dataset.zip")

# Input files
The data scientists have already pre-processed the raw sensor data into a more usable format. When they did this they created a trianing dataset and a test dataset. We wish to merge these. The files are:

* ./UCI HAR Dataset/test/X_test.txt
* ./UCI HAR Dataset/train/X_train.txt






