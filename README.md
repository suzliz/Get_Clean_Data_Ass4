
#  Getting and Cleaning Data - Assignment 4

This assignment uses data from the Human Activity Recognition Using Smartphones Dataset from the following publication.

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Assignment Tasks

Run_analysis.R is a script that is run to complete the five parts to this assignment:
1. Merge the training and test sets to create one dataset
2. Extract only measurements on mean and standard deviation
3. Use descriptive activity names
4. Label the dataset with descriptive variable names
5. Create a second independent tidy data set with the average of each variable for each activity and subject

## Files in this Repo

This repo contains four files
1. run_anaylsis.R - this file contains the R code to load in individual data sets, combine them into one data set and produce the mean data for each category by subject and activity
2. CodeBook.md - this file describes the input data, output data and the process used to transform the data.
3. TidySmartPhone.txt is a txt file containing the tidy data produced by run_analysis.R
4. TidySmartPhone.csv is a csv file containing the tidy data produced by run_analysis.R

## How to run the script

The test data can be downloaded from the link below and should be put into your working directory.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Download run_analysis.R from this repo and place this in your working directory. You should have a directory call "UCI HAR Dataset" with subdirectories called "test" and "train.

Open R or R Studio

Type source("run_analysis.R")

This will produce a tidy data file called "TidySmartPhone.txt" in the working directory.

## Summary of information - provided as part of the README data file

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Each record contains:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
