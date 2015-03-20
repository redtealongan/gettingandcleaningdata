
Contents
--------
Introduction
About the Original Dataset
About the Tidy Dataset
How to Run the Script
About the Code Book


Introduction
----------------
This repository contains my work for the "Getting and Cleaning Data" course assignment.


About the Original Dataset
-----------------------------
The original datasets represent data collected from the accelerometers from the Samsung Galaxy S smartphone, downloaded from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

"test" folder:
The "X_test.txt" file contains the unlabelled data for the "test" dataset.
The "Y_test.txt" file contains the Activity labels for the "test" dataset.
The "subject_test.txt" file contains the subjects for the "test" dataset.

"train" folder:
The "X_train.txt file contains the unlabelled data for the "train" dataset.
The "Y_train.txt" file contains the Activity labels for the "train" dataset.
The "subject_train.txt" file contains the subjects for the "train" dataset.


About the Tidy Dataset
-------------------------
For the assignment, I created a tidy dataset from the original dataset. The dataset has been stored in the "tidydata.txt" file.

The tidying done:
1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement. 
3. Used descriptive activity names (e.g. WALKING) to name the activities in the data set
4. Appropriately labelled the data set with descriptive variable names. 
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

The tidy dataset can be created using the "run_analysis.R" script.


How to Run the Script
------------------------
1. Extract the zip of the original dataset into your current working directory.
2. Navigate to the "UCI HAR Dataset" folder, and set it as your current working directory.
3. Run the "run_analysis.R" script


About the Code Book
----------------------------
The codebook describes the variables, the data, and any transformations or work that was performed to clean up the data. To read it, open "CodeBook.md".