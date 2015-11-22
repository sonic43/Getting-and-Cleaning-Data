#Code Book

##Data Source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Process
1. Read train and test data, and naming varialbes in the meantime.
  +Variables of X_train data was named by features.
  +Variables of y_train data was named by Activity.
  +Variables of subject_train was named by Subject.
  +Same for test data.
2. Merge train and test data.
3. Extracts only the measurements on the mean and standard deviation for each measurement by using "grep".
4. Replace activity lables with descriptive names.
5. Generate a tidy data which set with average of each variable for each activity and each subject.

##Tidy Data
* The first column is subject with range 1 - 30.
* The second column is activity names.
* The averages for each measurement of mean and std are in columns 3-88.
