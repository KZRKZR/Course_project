## load library plyr for ddply function
library(plyr)
## prepare const with path to files
main_folder<-"./UCI HAR Dataset/"
train_folder<-"./UCI HAR Dataset/train/"
test_folder<-"./UCI HAR Dataset/test/"

## read train text files
train_x_set<-read.table(paste0(train_folder,"X_train.txt"))
train_y_set<-read.table(paste0(train_folder,"y_train.txt"))
train_subj_set<-read.table(paste0(train_folder,"subject_train.txt"))
## read test text files
test_x_set<-read.table(paste0(test_folder,"X_test.txt"))
test_y_set<-read.table(paste0(test_folder,"y_test.txt"))
test_subj_set<-read.table(paste0(test_folder,"subject_test.txt"))
## read text files in main directory
activity_labels<-read.table(paste0(main_folder,"activity_labels.txt"))
features<-read.table(paste0(main_folder,"features.txt"))

## Bind the training and the test sets to create one data set
all_x_set<-rbind(train_x_set,test_x_set)
all_y_set<-rbind(train_y_set,test_y_set)
all_subj_set<-rbind(train_subj_set,test_subj_set)
## Extracts only the measurements on the mean and standard deviation for each measurement.
## Choose columns with "mean()" and "std()" in their names
need_columns<-features[grepl("mean()",features$V2,fixed=TRUE)==TRUE|grepl("std()",features$V2,fixed=TRUE)==TRUE,]
## Select the desired columns 
all_x_mean_std_set<-all_x_set[,need_columns$V1]
## Set descriptive variable names
colnames(all_x_mean_std_set) <- need_columns$V2
## Add Activities and subject.Train
all_data_set<-cbind(all_x_mean_std_set,ActivitiesN=all_y_set[,"V1"],Subject.Train=all_subj_set[,"V1"])
## Merge data sets to obtain descriptive activity names
all_data_set<-merge(all_data_set,activity_labels,by.x="ActivitiesN",by.y="V1")
## exclude ActivitiesN (numbers) from data set 
all_data_set<-all_data_set[,2:ncol(all_data_set)]
## set column name to Activities 
colnames(all_data_set)[ncol(all_data_set)]<-"Activities"
## make tidy data set using ddply function
tidy_data_set=ddply(all_data_set, .(Activities,Subject.Train), colwise(mean))

## write tidy data set to txt file
write.table(tidy_data_set,file=paste0(main_folder,"TidyDataSet.txt"),row.names=FALSE)
