#Variables and detailed descriptions
1. feature: List of all features. Contain 561 obs of 2 variables.
2. train_set: Training set. Contain 7,352 obs of 561 variables.
3. train_subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. Contain 7,352 obs of 1 variable.
4. train_label: Training labels.Contain 7,352 obs of 1 variable.
5. test_set: Test set. Contain 2,947 obs of 561 variables.
6. test_subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. Contain 7,352 obs of 1 variable.
7. test_label: Test labels. Contain 7,352 obs of 1 variable.
8. labels: combine the training labels and test labels.
9. set: combine the training set and test set.
10. subject: combine train_subject and test_subject.
11. merged_dt: merge "labels", "set" and "subject" to be a whole data set.
12. list_of_name: obtain a list of column names which is related to mean and standard deviation of each feature.
13. dt: extract the data which only contain mean and standard deviation of each feature
14. activity_label: links the class labels with their activity name.
15. TidyData: use descriptive activity names to name the activities in the "dt"
16. final_dt: the final output, which is independent from "TidyData" and it caculates the average of each variable for each activity and each subject.
