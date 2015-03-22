# Course_project
Getting and Cleaning Data course project

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
You must download and unzip data into working directory.

# Variables 
## folders
main_folder,train_folder,test_folder
## train data sets
train_x_set,train_y_set,train_subj_set
## test data sets
test_x_set,test_y_set,test_subj_set
## activity and features data sets
activity_labels,features
## union of training and test sets
all_x_set,all_y_set,all_subj_set
## data frame of columns with "mean()" and "std()" in their names
need_columns
## data frame only with desired columns 
all_x_mean_std_set
## data frame only with added Activities and subject.Train
all_data_set
## tidy data set
tidy_data_set

#Algoritm
## load library plyr for ddply function
## prepare const with path to files
## read train text files
## read test text files
## read text files in main directory
## Bind the training and the test sets to create one data set
## Extracts only the measurements on the mean and standard deviation for each measurement.
## Choose columns with "mean()" and "std()" in their names
## Select the desired columns 
## Set descriptive variable names
## Add Activities and subject.Train
## Merge data sets to obtain descriptive activity names
## exclude ActivitiesN (numbers) from data set 
## set column name to Activities 
## make tidy data set using ddply function
## write tidy data set to txt file
