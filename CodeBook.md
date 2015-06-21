## Chris Brown / epinym
### June 21, 2015
### Getting and Cleaning Data (https://class.coursera.org/getdata-015/) 
### Code book for class project

# Sources
A description of the data is here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Steps to obtain the data
urlSource = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileDest="Dataset.zip"
download.file(urlSource,destfile=fileDest,method="curl")

### Extract the data 
#### this is system dependent, but should work on most *nix systems
system("unzip Dataset.zip")

