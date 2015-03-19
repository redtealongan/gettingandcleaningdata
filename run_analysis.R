library(dplyr)

###1. Merges the training and the test sets to create one data set.

x_train <- read.table(file = "./train/x_train.txt", header = FALSE, na.strings = "", stringsAsFactors = F)
y_train <- read.table(file = "./train/y_train.txt", header = FALSE, col.names = "Activity", na.strings = "", stringsAsFactors = F)

x_test <- read.table(file = "./test/x_test.txt", header = FALSE, na.strings = "", stringsAsFactors = F)
y_test <- read.table(file = "./test/y_test.txt", header = FALSE, col.names = "Activity", na.strings = "", stringsAsFactors = F)

merged_x <- rbind(x_train, x_test)
merged_y <- rbind(y_train, y_test)


###2. Extracts only the measurements on the mean and standard deviation for each measurement. 

extracted_x <- merged_x[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266:271, 345:350, 424:429, 503, 504, 516, 517, 529, 530, 542, 543)]


###3. Uses descriptive activity names to name the activities in the data set

# Replace the data in a field based on equal to some value
merged_y$Activity[merged_y$Activity==1] <- "WALKING"
merged_y$Activity[merged_y$Activity==2] <- "WALKING_UPSTAIRS"
merged_y$Activity[merged_y$Activity==3] <- "WALKING_DOWNSTAIRS"
merged_y$Activity[merged_y$Activity==4] <- "SITTING"
merged_y$Activity[merged_y$Activity==5] <- "STANDING"
merged_y$Activity[merged_y$Activity==6] <- "LAYING"
yx <- cbind(merged_y, extracted_x)


###4. Appropriately labels the data set with descriptive variable names. 

colnames(yx) <- c("Activity"
                                  , "tBodyAccmeanX"
                                  , "tBodyAccmeanY"
                                  , "tBodyAccmeanZ"
                                  , "tBodyAccstdX"
                                  , "tBodyAccstdY"
                                  , "tBodyAccstdZ"
                                  , "tGravityAccmeanX"
                                  , "tGravityAccmeanY"
                                  , "tGravityAccmeanZ"
                                  , "tGravityAccstdX"
                                  , "tGravityAccstdY"
                                  , "tGravityAccstdZ"
                                  , "tBodyAccJerkmeanX"
                                  , "tBodyAccJerkmeanY"
                                  , "tBodyAccJerkmeanZ"
                                  , "tBodyAccJerkstdX"
                                  , "tBodyAccJerkstdY"
                                  , "tBodyAccJerkstdZ"
                                  , "tBodyGyromeanX"
                                  , "tBodyGyromeanY"
                                  , "tBodyGyromeanZ"
                                  , "tBodyGyrostdX"
                                  , "tBodyGyrostdY"
                                  , "tBodyGyrostdZ"
                                  , "tBodyGyroJerkmeanX"
                                  , "tBodyGyroJerkmeanY"
                                  , "tBodyGyroJerkmeanZ"
                                  , "tBodyGyroJerkstdX"
                                  , "tBodyGyroJerkstdY"
                                  , "tBodyGyroJerkstdZ"
                                  , "tBodyAccMagmean"
                                  , "tBodyAccMagstd"
                                  , "tGravityAccMagmean"
                                  , "tGravityAccMagstd"
                                  , "tBodyAccJerkMagmean"
                                  , "tBodyAccJerkMagstd"
                                  , "tBodyGyroMagmean"
                                  , "tBodyGyroMagstd"
                                  , "tBodyGyroJerkMagmean"
                                  , "tBodyGyroJerkMagstd"
                                  , "fBodyAccmeanX"
                                  , "fBodyAccmeanY"
                                  , "fBodyAccmeanZ"
                                  , "fBodyAccstdX"
                                  , "fBodyAccstdY"
                                  , "fBodyAccstdZ"
                                  , "fBodyAccJerkmeanX"
                                  , "fBodyAccJerkmeanY"
                                  , "fBodyAccJerkmeanZ"
                                  , "fBodyAccJerkstdX"
                                  , "fBodyAccJerkstdY"
                                  , "fBodyAccJerkstdZ"
                                  , "fBodyGyromeanX"
                                  , "fBodyGyromeanY"
                                  , "fBodyGyromeanZ"
                                  , "fBodyGyrostdX"
                                  , "fBodyGyrostdY"
                                  , "fBodyGyrostdZ"
                                  , "fBodyAccMagmean"
                                  , "fBodyAccMagstd"
                                  , "fBodyBodyAccJerkMagmean"
                                  , "fBodyBodyAccJerkMagstd"
                                  , "fBodyBodyGyroMagmean"
                                  , "fBodyBodyGyroMagstd"
                                  , "fBodyBodyGyroJerkMagmean"
                                  , "fBodyBodyGyroJerkMagstd")


###5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

subject_train <- read.table(file = "./train/subject_train.txt", header = FALSE, col.names = "Subject", na.strings = "", stringsAsFactors = F)
subject_test <- read.table(file = "./test/subject_test.txt", header = FALSE, col.names = "Subject", na.strings = "", stringsAsFactors = F)

merged_subject <- rbind(subject_train, subject_test)

zyx <- cbind(merged_subject,yx)

zyx <- group_by(zyx, Subject, Activity)

zyx <- summarize(zyx, mean(tBodyAccmeanX), mean(tBodyAccmeanY), mean(tBodyAccmeanZ), mean(tBodyAccstdX), mean(tBodyAccstdY), mean(tBodyAccstdZ), mean(tGravityAccmeanX), mean(tGravityAccmeanY), mean(tGravityAccmeanZ), mean(tGravityAccstdX), mean(tGravityAccstdY), mean(tGravityAccstdZ), mean(tBodyAccJerkmeanX), mean(tBodyAccJerkmeanY), mean(tBodyAccJerkmeanZ), mean(tBodyAccJerkstdX), mean(tBodyAccJerkstdY), mean(tBodyAccJerkstdZ), mean(tBodyGyromeanX), mean(tBodyGyromeanY), mean(tBodyGyromeanZ), mean(tBodyGyrostdX), mean(tBodyGyrostdY), mean(tBodyGyrostdZ), mean(tBodyGyroJerkmeanX), mean(tBodyGyroJerkmeanY), mean(tBodyGyroJerkmeanZ), mean(tBodyGyroJerkstdX), mean(tBodyGyroJerkstdY), mean(tBodyGyroJerkstdZ), mean(tBodyAccMagmean), mean(tBodyAccMagstd), mean(tGravityAccMagmean), mean(tGravityAccMagstd), mean(tBodyAccJerkMagmean), mean(tBodyAccJerkMagstd), mean(tBodyGyroMagmean), mean(tBodyGyroMagstd), mean(tBodyGyroJerkMagmean), mean(tBodyGyroJerkMagstd), mean(fBodyAccmeanX), mean(fBodyAccmeanY), mean(fBodyAccmeanZ), mean(fBodyAccstdX), mean(fBodyAccstdY), mean(fBodyAccstdZ), mean(fBodyAccJerkmeanX), mean(fBodyAccJerkmeanY), mean(fBodyAccJerkmeanZ), mean(fBodyAccJerkstdX), mean(fBodyAccJerkstdY), mean(fBodyAccJerkstdZ), mean(fBodyGyromeanX), mean(fBodyGyromeanY), mean(fBodyGyromeanZ), mean(fBodyGyrostdX), mean(fBodyGyrostdY), mean(fBodyGyrostdZ), mean(fBodyAccMagmean), mean(fBodyAccMagstd), mean(fBodyBodyAccJerkMagmean), mean(fBodyBodyAccJerkMagstd), mean(fBodyBodyGyroMagmean), mean(fBodyBodyGyroMagstd), mean(fBodyBodyGyroJerkMagmean), mean(fBodyBodyGyroJerkMagstd))

### For submission
# write.table(zyx, file="tidydata.txt", row.names=FALSE)  