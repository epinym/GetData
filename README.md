## Chris Brown / epinym
### June 21, 2015
### Getting and Cleaning Data (https://class.coursera.org/getdata-015/) 
### README for class project

# Description of files

## x_test.txt and x_train.txt

The easier to use (pre-processed) data provided by the experimentors. Each file is a portion of the orignal data, split into train and test data. We merge these because we are not performing train/test activities.

## y_test.txt and y_train.txt

these files contain the observed activities corresponding to x_*.txt files

## activity_labels.txt

This file contains a list of activty number/name pairs. We use this to convert the numerical values of activities in x_test.txt and x_train.txt into descriptive names.

# features.txt and features_info.txt

This files represent the column names for x_test.txt and x_train.txt data.

#subject_test.txt and subject_train.txt

These files contain lists of the subjects, represented by the numbers 1:30, and have a 1-to-1 correspondence with the y_*.txt files

# Output

The output file ("tidySummary_by_activity_and_subject.txt") represents one row per subject/activity pair, and the average values for 86 variables representing all of the means and standard deviation values included in the source data. Each column is named with its original variable name with R-lang complicating characters stripped ('(', ')', ',', '-'). Each row has a subject number and a activity name (from source file "activity_labels.txt"). This data is sorted by activity and subsorted by subject.

# Text of Assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
