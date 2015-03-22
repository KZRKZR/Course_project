# Tidy Data Set Dictionary
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals and included into tidy data set are: 

mean(): Mean value
std(): Standard deviation

## All features are normalized and bounded within [-1,1].

##"Activities"                
activity name LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
##"Subject.Train"             
identifies the subject who performed the activity 1..30 
##"tBodyAcc-mean()-X"
Mean value of accelerometer X-axial raw signals
##"tBodyAcc-mean()-Y"
Mean value of accelerometer Y-axial raw signals
##"tBodyAcc-mean()-Z"
Mean value of accelerometer Z-axial raw signals
##"tBodyAcc-std()-X"
Standard deviation of accelerometer X-axial raw signals
##"tBodyAcc-std()-Y"
Standard deviation of accelerometer Y-axial raw signals
##"tBodyAcc-std()-Z"           
Standard deviation of accelerometer Z-axial raw signals
##"tGravityAcc-mean()-X"
Mean value of gyroscope X-axial raw signals
##"tGravityAcc-mean()-Y"   
Mean value of gyroscope Y-axial raw signals
##"tGravityAcc-mean()-Z"
Mean value of gyroscope Z-axial raw signals
##"tGravityAcc-std()-X"  
Standard deviation of gyroscope X-axial raw signals
##"tGravityAcc-std()-Y"
Standard deviation of gyroscope Y-axial raw signals
##"tGravityAcc-std()-Z"        
Standard deviation of gyroscope Z-axial raw signals
##"tBodyAccJerk-mean()-X"

##"tBodyAccJerk-mean()-Y"      
##"tBodyAccJerk-mean()-Z"       
##"tBodyAccJerk-std()-X"       
##"tBodyAccJerk-std()-Y"
##"tBodyAccJerk-std()-Z"       
##"tBodyGyro-mean()-X"
##"tBodyGyro-mean()-Y"         
##"tBodyGyro-mean()-Z"
##"tBodyGyro-std()-X"          
##"tBodyGyro-std()-Y"
##"tBodyGyro-std()-Z"          
##"tBodyGyroJerk-mean()-X"
##"tBodyGyroJerk-mean()-Y"     
##"tBodyGyroJerk-mean()-Z"
##"tBodyGyroJerk-std()-X"      
##"tBodyGyroJerk-std()-Y"
##"tBodyGyroJerk-std()-Z"
##"tBodyAccMag-mean()"
##"tBodyAccMag-std()"          
##"tGravityAccMag-mean()"
##"tGravityAccMag-std()"       
##"tBodyAccJerkMag-mean()"
##"tBodyAccJerkMag-std()"      
##"tBodyGyroMag-mean()"
##"tBodyGyroMag-std()"         
##"tBodyGyroJerkMag-mean()"
##"tBodyGyroJerkMag-std()"     
##"fBodyAcc-mean()-X"
##"fBodyAcc-mean()-Y"          
##"fBodyAcc-mean()-Z"
##"fBodyAcc-std()-X"           
##"fBodyAcc-std()-Y"
##"fBodyAcc-std()-Z"           
##"fBodyAccJerk-mean()-X"
##"fBodyAccJerk-mean()-Y"      
##"fBodyAccJerk-mean()-Z"
##"fBodyAccJerk-std()-X"       
##"fBodyAccJerk-std()-Y"
##"fBodyAccJerk-std()-Z"       
##"fBodyGyro-mean()-X"
##"fBodyGyro-mean()-Y"         
##"fBodyGyro-mean()-Z"
##"fBodyGyro-std()-X"          
##"fBodyGyro-std()-Y"
##"fBodyGyro-std()-Z"          
##"fBodyAccMag-mean()"
##"fBodyAccMag-std()"          
##"fBodyBodyAccJerkMag-mean()"
##"fBodyBodyAccJerkMag-std()"  
##"fBodyBodyGyroMag-mean()"
##"fBodyBodyGyroMag-std()"     
##"fBodyBodyGyroJerkMag-mean()"
##"fBodyBodyGyroJerkMag-std()" 
