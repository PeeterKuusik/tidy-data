## Code Book

This is codebook for Human Activity Recognition Using Smartphones Dataset (UCI HAR Dataset).
Running code in file "run_analysis.r" will produce 2 different datasets and also csv fail.
There are two output files:
"a" - independent tidy data set with the average of each variable for each activity and each subject.
"dataset2"- tidy and merged dataset with mean and standart deviation measurement


All units are same and have not been tranformed
Variable names have been cleaned and changed as following:

Columnnames in raw dataset
[1] "Subject"                     "Activity.ID"                 "Activity"                   
[4] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
[7] "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
[10] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
[13] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
[16] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
[19] "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[22] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[25] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[28] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
[31] "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[34] "tBodyAccMag-mean()"          "tBodyAccMag-std()"           "tGravityAccMag-mean()"      
[37] "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
[40] "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"    
[43] "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[46] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[49] "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[52] "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[55] "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[58] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[61] "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
[64] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"    
[67] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"

Columnnames in "a" and "dataset2"


 [1] "Subject"                                      "Activity.ID"                                  "Activity"                                    
 [4] "TimeBodyAccelerometer-Mean-X"                 "TimeBodyAccelerometer-Mean-Y"                 "TimeBodyAccelerometer-Mean-Z"                
 [7] "TimeBodyAccelerometer-Std-X"                  "TimeBodyAccelerometer-Std-Y"                  "TimeBodyAccelerometer-Std-Z"                 
[10] "TimeGravityAccelerometer-Mean-X"              "TimeGravityAccelerometer-Mean-Y"              "TimeGravityAccelerometer-Mean-Z"             
[13] "TimeGravityAccelerometer-Std-X"               "TimeGravityAccelerometer-Std-Y"               "TimeGravityAccelerometer-Std-Z"              
[16] "TimeBodyAccelerometerJerk-Mean-X"             "TimeBodyAccelerometerJerk-Mean-Y"             "TimeBodyAccelerometerJerk-Mean-Z"            
[19] "TimeBodyAccelerometerJerk-Std-X"              "TimeBodyAccelerometerJerk-Std-Y"              "TimeBodyAccelerometerJerk-Std-Z"             
[22] "TimeBodyGyroscope-Mean-X"                     "TimeBodyGyroscope-Mean-Y"                     "TimeBodyGyroscope-Mean-Z"                    
[25] "TimeBodyGyroscope-Std-X"                      "TimeBodyGyroscope-Std-Y"                      "TimeBodyGyroscope-Std-Z"                     
[28] "TimeBodyGyroscopeJerk-Mean-X"                 "TimeBodyGyroscopeJerk-Mean-Y"                 "TimeBodyGyroscopeJerk-Mean-Z"                
[31] "TimeBodyGyroscopeJerk-Std-X"                  "TimeBodyGyroscopeJerk-Std-Y"                  "TimeBodyGyroscopeJerk-Std-Z"                 
[34] "TimeBodyAccelerometerMagnitude-Mean"          "TimeBodyAccelerometerMagnitude-Std"           "TimeGravityAccelerometerMagnitude-Mean"      
[37] "TimeGravityAccelerometerMagnitude-Std"        "TimeBodyAccelerometerJerkMagnitude-Mean"      "TimeBodyAccelerometerJerkMagnitude-Std"      
[40] "TimeBodyGyroscopeMagnitude-Mean"              "TimeBodyGyroscopeMagnitude-Std"               "TimeBodyGyroscopeJerkMagnitude-Mean"         
[43] "TimeBodyGyroscopeJerkMagnitude-Std"           "FrequencyBodyAccelerometer-Mean-X"            "FrequencyBodyAccelerometer-Mean-Y"           
[46] "FrequencyBodyAccelerometer-Mean-Z"            "FrequencyBodyAccelerometer-Std-X"             "FrequencyBodyAccelerometer-Std-Y"            
[49] "FrequencyBodyAccelerometer-Std-Z"             "FrequencyBodyAccelerometerJerk-Mean-X"        "FrequencyBodyAccelerometerJerk-Mean-Y"       
[52] "FrequencyBodyAccelerometerJerk-Mean-Z"        "FrequencyBodyAccelerometerJerk-Std-X"         "FrequencyBodyAccelerometerJerk-Std-Y"        
[55] "FrequencyBodyAccelerometerJerk-Std-Z"         "FrequencyBodyGyroscope-Mean-X"                "FrequencyBodyGyroscope-Mean-Y"               
[58] "FrequencyBodyGyroscope-Mean-Z"                "FrequencyBodyGyroscope-Std-X"                 "FrequencyBodyGyroscope-Std-Y"                
[61] "FrequencyBodyGyroscope-Std-Z"                 "FrequencyBodyAccelerometerMagnitude-Mean"     "FrequencyBodyAccelerometerMagnitude-Std"     
[64] "FrequencyBodyAccelerometerJerkMagnitude-Mean" "FrequencyBodyAccelerometerJerkMagnitude-Std"  "FrequencyBodyGyroscopeMagnitude-Mean"        
[67] "FrequencyBodyGyroscopeMagnitude-Std"          "FrequencyBodyGyroscopeJerkMagnitude-Mean"     "FrequencyBodyGyroscopeJerkMagnitude-Std"