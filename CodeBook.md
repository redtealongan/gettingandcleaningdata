CodeBook for the tidy dataset
=============================


Data source
-----------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set", downloadable from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Variables
---------
This tidy dataset contains the average of each variable for each subject and each activity. Here are the variables and their units.

| VARIABLE_NAME                    | UNIT                       |
|----------------------------------|----------------------------|
| Subject                          | integer                    |
| Activity                         | integer                    |
| mean(tBodyAccmeanX)              | standard gravity units 'g' |
| mean(tBodyAccmeanY)              | standard gravity units 'g' |
| mean(tBodyAccmeanZ)              | standard gravity units 'g' |
| mean(tBodyAccstdX)               | standard gravity units 'g' |
| mean(tBodyAccstdY)               | standard gravity units 'g' |
| mean(tBodyAccstdZ)               | standard gravity units 'g' |
| mean(tGravityAccmeanX)           | standard gravity units 'g' |
| mean(tGravityAccmeanY)           | standard gravity units 'g' |
| mean(tGravityAccmeanZ)           | standard gravity units 'g' |
| mean(tGravityAccstdX)            | standard gravity units 'g' |
| mean(tGravityAccstdY)            | standard gravity units 'g' |
| mean(tGravityAccstdZ)            | standard gravity units 'g' |
| mean(tBodyAccJerkmeanX)          | standard gravity units 'g' |
| mean(tBodyAccJerkmeanY)          | standard gravity units 'g' |
| mean(tBodyAccJerkmeanZ)          | standard gravity units 'g' |
| mean(tBodyAccJerkstdX)           | standard gravity units 'g' |
| mean(tBodyAccJerkstdY)           | standard gravity units 'g' |
| mean(tBodyAccJerkstdZ)           | standard gravity units 'g' |
| mean(tBodyGyromeanX)             | radians/second             |
| mean(tBodyGyromeanY)             | radians/second             |
| mean(tBodyGyromeanZ)             | radians/second             |
| mean(tBodyGyrostdX)              | radians/second             |
| mean(tBodyGyrostdY)              | radians/second             |
| mean(tBodyGyrostdZ)              | radians/second             |
| mean(tBodyGyroJerkmeanX)         | radians/second             |
| mean(tBodyGyroJerkmeanY)         | radians/second             |
| mean(tBodyGyroJerkmeanZ)         | radians/second             |
| mean(tBodyGyroJerkstdX)          | radians/second             |
| mean(tBodyGyroJerkstdY)          | radians/second             |
| mean(tBodyGyroJerkstdZ)          | radians/second             |
| mean(tBodyAccMagmean)            | standard gravity units 'g' |
| mean(tBodyAccMagstd)             | standard gravity units 'g' |
| mean(tGravityAccMagmean)         | standard gravity units 'g' |
| mean(tGravityAccMagstd)          | standard gravity units 'g' |
| mean(tBodyAccJerkMagmean)        | standard gravity units 'g' |
| mean(tBodyAccJerkMagstd)         | standard gravity units 'g' |
| mean(tBodyGyroMagmean)           | radians/second             |
| mean(tBodyGyroMagstd)            | radians/second             |
| mean(tBodyGyroJerkMagmean)       | radians/second             |
| mean(tBodyGyroJerkMagstd)        | radians/second             |
| mean(fBodyAccmeanX)              | standard gravity units 'g' |
| mean(fBodyAccmeanY)              | standard gravity units 'g' |
| mean(fBodyAccmeanZ)              | standard gravity units 'g' |
| mean(fBodyAccstdX)               | standard gravity units 'g' |
| mean(fBodyAccstdY)               | standard gravity units 'g' |
| mean(fBodyAccstdZ)               | standard gravity units 'g' |
| mean(fBodyAccJerkmeanX)          | standard gravity units 'g' |
| mean(fBodyAccJerkmeanY)          | standard gravity units 'g' |
| mean(fBodyAccJerkmeanZ)          | standard gravity units 'g' |
| mean(fBodyAccJerkstdX)           | standard gravity units 'g' |
| mean(fBodyAccJerkstdY)           | standard gravity units 'g' |
| mean(fBodyAccJerkstdZ)           | standard gravity units 'g' |
| mean(fBodyGyromeanX)             | radians/second             |
| mean(fBodyGyromeanY)             | radians/second             |
| mean(fBodyGyromeanZ)             | radians/second             |
| mean(fBodyGyrostdX)              | radians/second             |
| mean(fBodyGyrostdY)              | radians/second             |
| mean(fBodyGyrostdZ)              | radians/second             |
| mean(fBodyAccMagmean)            | standard gravity units 'g' |
| mean(fBodyAccMagstd)             | standard gravity units 'g' |
| mean(fBodyBodyAccJerkMagmean)    | standard gravity units 'g' |
| mean(fBodyBodyAccJerkMagstd)     | standard gravity units 'g' |
| mean(fBodyBodyGyroMagmean)       | radians/second             |
| mean(fBodyBodyGyroMagstd)        | radians/second             |
| mean(fBodyBodyGyroJerkMagmean)   | radians/second             |
| mean(fBodyBodyGyroJerkMagstd)    | radians/second             |


Work Performed to Clean Up the Data
-----------------------------------
1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement. 
3. Used descriptive activity names (e.g. WALKING) to name the activities in the data set
4. Appropriately labelled the data set with descriptive variable names. 
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.
