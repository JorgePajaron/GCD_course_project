#Code Book

This code book describes the variables, the data, and any transformations or work that I performed to clean up the data.

###The Data

data project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

data obtained after executing the scrip:
newdata.txt

###The transformations

From the data proyect we have made the following transformatios:  
* Merges the training and the test sets to create one data set.  
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.  
* Appropriately labels the data set with descriptive variable names.   
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.   



###The Variables

The newdata variables:

[1] "subject"                                         
 [2] "activity"                                        
 [3] "timeBodyAccelerometer_mean_X"                    
 [4] "timeBodyAccelerometer_mean_Y"                    
 [5] "timeBodyAccelerometer_mean_Z"                    
 [6] "timeBodyAccelerometer_std_X"                     
 [7] "timeBodyAccelerometer_std_Y"                     
 [8] "timeBodyAccelerometer_std_Z"                     
 [9] "timeGravityAccelerometer_mean_X"                 
[10] "timeGravityAccelerometer_mean_Y"                 
[11] "timeGravityAccelerometer_mean_Z"                 
[12] "timeGravityAccelerometer_std_X"                  
[13] "timeGravityAccelerometer_std_Y"                  
[14] "timeGravityAccelerometer_std_Z"                  
[15] "timeBodyAccelerometerJerk_mean_X"                
[16] "timeBodyAccelerometerJerk_mean_Y"                
[17] "timeBodyAccelerometerJerk_mean_Z"                
[18] "timeBodyAccelerometerJerk_std_X"                 
[19] "timeBodyAccelerometerJerk_std_Y"                 
[20] "timeBodyAccelerometerJerk_std_Z"                 
[21] "timeBodyGyroscope_mean_X"                        
[22] "timeBodyGyroscope_mean_Y"                        
[23] "timeBodyGyroscope_mean_Z"                        
[24] "timeBodyGyroscope_std_X"                         
[25] "timeBodyGyroscope_std_Y"                         
[26] "timeBodyGyroscope_std_Z"                         
[27] "timeBodyGyroscopeJerk_mean_X"                    
[28] "timeBodyGyroscopeJerk_mean_Y"                    
[29] "timeBodyGyroscopeJerk_mean_Z"                    
[30] "timeBodyGyroscopeJerk_std_X"                     
[31] "timeBodyGyroscopeJerk_std_Y"                     
[32] "timeBodyGyroscopeJerk_std_Z"                     
[33] "timeBodyAccelerometerMagnitude_mean"             
[34] "timeBodyAccelerometerMagnitude_std"              
[35] "timeGravityAccelerometerMagnitude_mean"          
[36] "timeGravityAccelerometerMagnitude_std"           
[37] "timeBodyAccelerometerJerkMagnitude_mean"         
[38] "timeBodyAccelerometerJerkMagnitude_std"          
[39] "timeBodyGyroscopeMagnitude_mean"                 
[40] "timeBodyGyroscopeMagnitude_std"                  
[41] "timeBodyGyroscopeJerkMagnitude_mean"             
[42] "timeBodyGyroscopeJerkMagnitude_std"              
[43] "frequencyBodyAccelerometer_mean_X"               
[44] "frequencyBodyAccelerometer_mean_Y"               
[45] "frequencyBodyAccelerometer_mean_Z"               
[46] "frequencyBodyAccelerometer_std_X"                
[47] "frequencyBodyAccelerometer_std_Y"                
[48] "frequencyBodyAccelerometer_std_Z"                
[49] "frequencyBodyAccelerometerJerk_mean_X"           
[50] "frequencyBodyAccelerometerJerk_mean_Y"           
[51] "frequencyBodyAccelerometerJerk_mean_Z"           
[52] "frequencyBodyAccelerometerJerk_std_X"            
[53] "frequencyBodyAccelerometerJerk_std_Y"            
[54] "frequencyBodyAccelerometerJerk_std_Z"            
[55] "frequencyBodyGyroscope_mean_X"                   
[56] "frequencyBodyGyroscope_mean_Y"                   
[57] "frequencyBodyGyroscope_mean_Z"                   
[58] "frequencyBodyGyroscope_std_X"                    
[59] "frequencyBodyGyroscope_std_Y"                    
[60] "frequencyBodyGyroscope_std_Z"                    
[61] "frequencyBodyAccelerometerMagnitude_mean"        
[62] "frequencyBodyAccelerometerMagnitude_std"         
[63] "frequencyBodyBodyAccelerometerJerkMagnitude_mean"   
[64] "frequencyBodyBodyAccelerometerJerkMagnitude_std"  
[65] "frequencyBodyBodyGyroscopeMagnitude_mean"        
[66] "frequencyBodyBodyGyroscopeMagnitude_std"         
[67] "frequencyBodyBodyGyroscopeJerkMagnitude_mean"    
[68] "frequencyBodyBodyGyroscopeJerkMagnitude_std" 
