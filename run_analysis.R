#1.Merges the training and the test sets to create one data set.
rm(list =ls())
#load column names
features <- read.table("UCI HAR Dataset/features.txt", header=FALSE, stringsAsFactors=FALSE)[,2]

#load train data and naming
X_train <- read.csv("./UCI HAR Dataset/train/X_train.txt", header = F, sep = "")
names(X_train) <- features
y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt", header = F)
names(y_train) <- "Activity"
subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt", header = F)
names(subject_train) <- "Subject"
train_data<- cbind(subject_train, y_train, X_train)

#load test data and naming
X_test <- read.csv("./UCI HAR Dataset/test/X_test.txt", header = F, sep = "")
names(X_test) <- features
y_test <- read.csv("./UCI HAR Dataset/test/y_test.txt", header = F)
names(y_test) <- "Activity"
subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt", header = F)
names(subject_test) <- "Subject"
test_data <- cbind(subject_test, y_test, X_test)

#merge train and test data
mergeData <- rbind(train_data, test_data)
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std <- mergeData[,c(1,2,grep(pattern="std|mean", x=features, ignore.case=TRUE)+2)] 
##add 2 because merge subject and y_test

#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names.
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = F, stringsAsFactors = F)
names(activity_labels) <- c("Activity", "Activity_Labels")
mean_std <- merge(activity_labels, mean_std, by = "Activity")
mean_std <- mean_std[,-1]

#5.From the data set in step 4, creates a second, independent tidy data 
#  set with the average of each variable for each activity and each subject.
tidy_data <- aggregate(mean_std[, 3:ncol(mean_std)],
                       by=list(subject = mean_std$Subject, 
                               label = mean_std$Activity_Labels),
                       mean)
write.table(tidy_data, file = "./tidy_data.txt")
