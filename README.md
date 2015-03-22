Contents
--------
* Introduction
* About the Original Dataset
* About the Tidy Dataset
* How to Run the Script
* About the Code Book


Introduction
----------------
This repository contains my work for the "Getting and Cleaning Data" course assignment.


About the Original Datasets
---------------------------
The original datasets represent data collected from the accelerometers from the Samsung Galaxy S smartphone, downloaded from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* The "X_test.txt" file contains the unlabelled data for the "test" dataset.
* The "Y_test.txt" file contains the Activity labels for the "test" dataset.
* The "subject_test.txt" file contains the subjects for the "test" dataset.

* The "X_train.txt file contains the unlabelled data for the "train" dataset.
* The "Y_train.txt" file contains the Activity labels for the "train" dataset.
* The "subject_train.txt" file contains the subjects for the "train" dataset.


About the Tidy Dataset
----------------------
For the assignment, I created a tidy dataset from the original dataset. The dataset has been stored in the "tidydata.txt" file.

The tidy dataset can be created using the "run_analysis.R" script.


How to Run the Script
---------------------
1. Extract the zip of the original dataset into your current working directory.
2. Navigate to the "UCI HAR Dataset" folder, and set it as your current working directory.
3. Run the "run_analysis.R" script


About the Code Book
-------------------
The codebook describes the variables, the data, and any transformations or work that was performed to clean up the data. To read it, open "CodeBook.md".