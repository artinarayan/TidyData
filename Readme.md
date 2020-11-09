
# README - Tidy Data Project 

# Background 

The original data details can be sourced from ["Human Activity Recognition Using Smartphones Data Set Paper"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The HARUSD data is collected from the recordings of 30 subjects (within an age bracket of 19-48 years) performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. The original data is made available in multiple files separately as train and test sets with 561 attributes.  The student project output file data set is summarized with a single file and tidy data having a subset of features.

## For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## A subset of the raw data files are used

The original source ["HARUSD"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) provides many data files, however only the following files are used for processing the TidyDataSet.csv:

Folder/file name | File contents
-------------- | --------------
features | descriptions of features/variables collected
activity_labels | the 6 activities performed by subjects
train/X_train | training data/measurements each subject and activity
train/y_train | labels for the variables in X_train file
train/subject_train | the subject (numbers) for whom the data is available in X_train
test/X_test | test data/measurements for each subject and activity
test/y_test | labels for the variables in X_test file
test/subject_test | the subject (numbers) for whom the data is available in X_test


# Tidy data set: Transformation from raw data:


The transformations are per the student project to produce a single tidy data file from the above listed files. "run_analysis.R" does the following to read the above listed raw files and transforms to "TidyDataSet.txt" output file following the process steps listed below

1. Merge train and test data sets to a single data set
    + First read the raw data files
    + Prepare a single data set for each of Train and Test data
    + Merge/combine train and test data sets into single data set 
2. Extract only the measurements on the mean and standard deviation for each measurement
    # Identify required measurements
    # Create a data set with only required measurements
3. Assign descriptive activity names to name the activities in the data set
4. Assign meaningful variable names to the measurements.
4. Create an independent tidy data set with the average of each variable for each activity and each subject




