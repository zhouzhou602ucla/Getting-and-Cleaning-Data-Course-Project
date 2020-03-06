#Set working directory
setwd("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project")

## import descriptive feature name
feature <- read.table("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project/Dataset/features.txt")

#################FOR TRAIN SET############################
# import data for train set
train_set <- read.table("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project/Dataset/train/X_train.txt",head = FALSE)

#Appropriately labels the data set with descriptive variable names.
colnames(train_set) <- feature$V2

## read "subject_train.txt" 
train_subject <- read.table("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project/Dataset/train/subject_train.txt",head = FALSE,col.names = "subject_id")

train_label <- read.table("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project/Dataset/train/y_train.txt",head=F,col.names = "label")

#################FOR TEST SET############################
# import data for test set
test_set <- read.table("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project/Dataset/test/X_test.txt",head = FALSE)

#Appropriately labels the data set with descriptive variable names.
colnames(test_set) <- feature$V2

## read "subject_test.txt"
test_subject <- read.table("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project/Dataset/test/subject_test.txt",head = FALSE,col.names = "subject_id")

test_label <- read.table("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project/Dataset/test/y_test.txt",head = FALSE,col.names = "label")
#################################################################
#Step 1. Merges the training and the test sets to create one data set.
labels <- rbind(train_label,test_label)
set <- rbind(train_set,test_set)
subject <- rbind(train_subject,test_subject)

merged_dt <- cbind(subject,labels,set)

#################################################################
#Step 2. Extracts only the measurements on the mean and standard deviation for each measurement

## get a list of names only containing mean and std
list_of_name <- grep(pattern = "[m,M]ean.|[s,S]td", colnames(merged_dt)) 

## subset the original data frame to get measurements on the mean and std, let alone with subject_id and activity
dt <- (merged_dt[,c(1,2,list_of_name)])

#################################################################
#Step 3. Uses descriptive activity names to name the activities in the data set

## import activity_lables.txt, train_label.txt and test_label.txt
activity_label <- read.table("/Users/Fangzhu/Getting-and-Cleaning-Data-Course-Project/Dataset/activity_labels.txt",head = FALSE,col.names = c("activity_id","activity_label"))

## ## merge labels with original dataset
TidyData <- merge(dt,activity_label,by.x = "label",by.y = "activity_id")


#Step 4. Appropriately labels the data set with descriptive variable names. This has been done already.
names(TidyData)<-gsub("Acc", "Accelerometer", names(TidyData))
names(TidyData)<-gsub("Gyro", "Gyroscope", names(TidyData))
names(TidyData)<-gsub("BodyBody", "Body", names(TidyData))
names(TidyData)<-gsub("Mag", "Magnitude", names(TidyData))
names(TidyData)<-gsub("^t", "Time", names(TidyData))
names(TidyData)<-gsub("^f", "Frequency", names(TidyData))
names(TidyData)<-gsub("tBody", "TimeBody", names(TidyData))
names(TidyData)<-gsub("-mean()", "Mean", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-std()", "STD", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-freq()", "Frequency", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("angle", "Angle", names(TidyData))
names(TidyData)<-gsub("gravity", "Gravity", names(TidyData))

#Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
final_dt <- TidyData %>%
  group_by(subject_id,activity_label) %>%
  summarise_all(funs(mean))


