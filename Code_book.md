## Project Description
Getting and Cleaning Data Course Project

## Data source:
https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project

## Variables generated in run_analysis.R
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

## Variable listed in finalData.txt
[1] "subject_id"                                       
 [2] "activity_label"                                   
 [3] "label"                                            
 [4] "TimeBodyAccelerometerMean()-X"                    
 [5] "TimeBodyAccelerometerMean()-Y"                    
 [6] "TimeBodyAccelerometerMean()-Z"                    
 [7] "TimeBodyAccelerometerSTD()-X"                     
 [8] "TimeBodyAccelerometerSTD()-Y"                     
 [9] "TimeBodyAccelerometerSTD()-Z"                     
[10] "TimeGravityAccelerometerMean()-X"                 
[11] "TimeGravityAccelerometerMean()-Y"                 
[12] "TimeGravityAccelerometerMean()-Z"                 
[13] "TimeGravityAccelerometerSTD()-X"                  
[14] "TimeGravityAccelerometerSTD()-Y"                  
[15] "TimeGravityAccelerometerSTD()-Z"                  
[16] "TimeBodyAccelerometerJerkMean()-X"                
[17] "TimeBodyAccelerometerJerkMean()-Y"                
[18] "TimeBodyAccelerometerJerkMean()-Z"                
[19] "TimeBodyAccelerometerJerkSTD()-X"                 
[20] "TimeBodyAccelerometerJerkSTD()-Y"                 
[21] "TimeBodyAccelerometerJerkSTD()-Z"                 
[22] "TimeBodyGyroscopeMean()-X"                        
[23] "TimeBodyGyroscopeMean()-Y"                        
[24] "TimeBodyGyroscopeMean()-Z"                        
[25] "TimeBodyGyroscopeSTD()-X"                         
[26] "TimeBodyGyroscopeSTD()-Y"                         
[27] "TimeBodyGyroscopeSTD()-Z"                         
[28] "TimeBodyGyroscopeJerkMean()-X"                    
[29] "TimeBodyGyroscopeJerkMean()-Y"                    
[30] "TimeBodyGyroscopeJerkMean()-Z"                    
[31] "TimeBodyGyroscopeJerkSTD()-X"                     
[32] "TimeBodyGyroscopeJerkSTD()-Y"                     
[33] "TimeBodyGyroscopeJerkSTD()-Z"                     
[34] "TimeBodyAccelerometerMagnitudeMean()"             
[35] "TimeBodyAccelerometerMagnitudeSTD()"              
[36] "TimeGravityAccelerometerMagnitudeMean()"          
[37] "TimeGravityAccelerometerMagnitudeSTD()"           
[38] "TimeBodyAccelerometerJerkMagnitudeMean()"         
[39] "TimeBodyAccelerometerJerkMagnitudeSTD()"          
[40] "TimeBodyGyroscopeMagnitudeMean()"                 
[41] "TimeBodyGyroscopeMagnitudeSTD()"                  
[42] "TimeBodyGyroscopeJerkMagnitudeMean()"             
[43] "TimeBodyGyroscopeJerkMagnitudeSTD()"              
[44] "FrequencyBodyAccelerometerMean()-X"               
[45] "FrequencyBodyAccelerometerMean()-Y"               
[46] "FrequencyBodyAccelerometerMean()-Z"               
[47] "FrequencyBodyAccelerometerSTD()-X"                
[48] "FrequencyBodyAccelerometerSTD()-Y"                
[49] "FrequencyBodyAccelerometerSTD()-Z"                
[50] "FrequencyBodyAccelerometerMeanFreq()-X"           
[51] "FrequencyBodyAccelerometerMeanFreq()-Y"           
[52] "FrequencyBodyAccelerometerMeanFreq()-Z"           
[53] "FrequencyBodyAccelerometerJerkMean()-X"           
[54] "FrequencyBodyAccelerometerJerkMean()-Y"           
[55] "FrequencyBodyAccelerometerJerkMean()-Z"           
[56] "FrequencyBodyAccelerometerJerkSTD()-X"            
[57] "FrequencyBodyAccelerometerJerkSTD()-Y"            
[58] "FrequencyBodyAccelerometerJerkSTD()-Z"            
[59] "FrequencyBodyAccelerometerJerkMeanFreq()-X"       
[60] "FrequencyBodyAccelerometerJerkMeanFreq()-Y"       
[61] "FrequencyBodyAccelerometerJerkMeanFreq()-Z"       
[62] "FrequencyBodyGyroscopeMean()-X"                   
[63] "FrequencyBodyGyroscopeMean()-Y"                   
[64] "FrequencyBodyGyroscopeMean()-Z"                   
[65] "FrequencyBodyGyroscopeSTD()-X"                    
[66] "FrequencyBodyGyroscopeSTD()-Y"                    
[67] "FrequencyBodyGyroscopeSTD()-Z"                    
[68] "FrequencyBodyGyroscopeMeanFreq()-X"               
[69] "FrequencyBodyGyroscopeMeanFreq()-Y"               
[70] "FrequencyBodyGyroscopeMeanFreq()-Z"               
[71] "FrequencyBodyAccelerometerMagnitudeMean()"        
[72] "FrequencyBodyAccelerometerMagnitudeSTD()"         
[73] "FrequencyBodyAccelerometerMagnitudeMeanFreq()"    
[74] "FrequencyBodyAccelerometerJerkMagnitudeMean()"    
[75] "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
[76] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
[77] "FrequencyBodyGyroscopeMagnitudeMean()"            
[78] "FrequencyBodyGyroscopeMagnitudeSTD()"             
[79] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"        
[80] "FrequencyBodyGyroscopeJerkMagnitudeMean()"        
[81] "FrequencyBodyGyroscopeJerkMagnitudeSTD()"         
[82] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"    
[83] "Angle(TimeBodyAccelerometerMean,Gravity)"         
[84] "Angle(TimeBodyAccelerometerJerkMean),GravityMean)"
[85] "Angle(TimeBodyGyroscopeMean,GravityMean)"         
[86] "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"     
[87] "Angle(X,GravityMean)"                             
[88] "Angle(Y,GravityMean)"                             
[89] "Angle(Z,GravityMean)"   

