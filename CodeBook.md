#Code Book

##Data Source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Process
1. Read train and test data, and naming varialbes in the meantime.
  * Variables of X_train data was named by features.
  * Variables of y_train data was named by Activity.
  * Variables of subject_train was named by Subject.
  * Same for test data.
2. Merge train and test data.
3. Extracts only the measurements on the mean and standard deviation for each measurement by using "grep".
4. Replace activity lables with descriptive names.
5. Generate a tidy data which set with average of each variable for each activity and each subject.

##Variables
[1] "subject"                              "label"                                "tBodyAcc-mean()-X"                   
[4] "tBodyAcc-mean()-Y"                    "tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"                    
[7] "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                     "tGravityAcc-mean()-X"                
[10] "tGravityAcc-mean()-Y"                 "tGravityAcc-mean()-Z"                 "tGravityAcc-std()-X"                 
[13] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                  "tBodyAccJerk-mean()-X"               
[16] "tBodyAccJerk-mean()-Y"                "tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"                
[19] "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                 "tBodyGyro-mean()-X"                  
[22] "tBodyGyro-mean()-Y"                   "tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"                   
[25] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                    "tBodyGyroJerk-mean()-X"              
[28] "tBodyGyroJerk-mean()-Y"               "tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"               
[31] "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"                "tBodyAccMag-mean()"                  
[34] "tBodyAccMag-std()"                    "tGravityAccMag-mean()"                "tGravityAccMag-std()"                
[37] "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"                "tBodyGyroMag-mean()"                 
[40] "tBodyGyroMag-std()"                   "tBodyGyroJerkMag-mean()"              "tBodyGyroJerkMag-std()"              
[43] "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                    "fBodyAcc-mean()-Z"                   
[46] "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"                    
[49] "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"                "fBodyAcc-meanFreq()-Z"               
[52] "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"               
[55] "fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"                 "fBodyAccJerk-std()-Z"                
[58] "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"            "fBodyAccJerk-meanFreq()-Z"           
[61] "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                  
[64] "fBodyGyro-std()-X"                    "fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"                   
[67] "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"               "fBodyGyro-meanFreq()-Z"              
[70] "fBodyAccMag-mean()"                   "fBodyAccMag-std()"                    "fBodyAccMag-meanFreq()"              
[73] "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-std()"            "fBodyBodyAccJerkMag-meanFreq()"      
[76] "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-std()"               "fBodyBodyGyroMag-meanFreq()"         
[79] "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-std()"           "fBodyBodyGyroJerkMag-meanFreq()"     
[82] "angle(tBodyAccMean,gravity)"          "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[85] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[88] "angle(Z,gravityMean)"


##Tidy Data
* The first column is subject with range 1 - 30.
* The second column is activity names.
* The averages for each measurement of mean and std are in columns 3-88.
