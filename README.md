
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

