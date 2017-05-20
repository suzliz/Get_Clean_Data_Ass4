## Code to read in data from the UCI Machine Learning Repository
## on human activity recognition using smartphones data set
## Assumes that the working directory is set to UCI HAR Dataset
## and that there exists a "train" and "test" subdirectory

## Load required libraries
library(data.table)
library(dplyr)

## Read file containing activity labels
act_lab <- read.table("activity_labels.txt",sep =" ",header=FALSE,col.names 
                      = c("Activity Number","Activity Name"))
## Read file containing feature descriptions
features <- read.table("features.txt",sep=" ",header=FALSE,
                       col.names= c("Feature.Num","Feature.Desc"))

## Read Test directory files
subj_test <- read.table("./test/subject_test.txt", header=FALSE,
                        col.names="Subject.Num")
X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/Y_test.txt")

## Read Train directory files
subj_train <- read.table("./train/subject_train.txt")
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/Y_train.txt")

## Merge data on subjects, Activity types (y)  and feature data (x)
Train_Data <- cbind(subj_train,Y_train,X_train)
Test_Data <- cbind(subj_test,Y_test, X_test)

## Insert appropriate column names from Feature data
 cnames <- c("Subject","Activity.Number", as.character(features[,2]))
 names(Train_Data) <- names(Test_Data) <- cnames
 
 ## Combine Test and Train Data sets
 Full_Data <- rbind(Test_Data, Train_Data)
 
 ## Merge with Activity Label data to obtain activity description
 Full_Data <- merge(Full_Data, act_lab,by="Activity.Number",sort=FALSE) 
 
 ## Pull out columns that contain mean or standard deviation information
 ## along with the subject and activity type
 fnames <- names(Full_Data)
 MS_Data <- Full_Data[,grep("Subject|Activity.Name|mean|std",fnames)]
 
 ## Aggregate the data by subject, activity type by taking the mean of all
 ## columns
 Final <- aggregate(MS_Data[,!grepl("Activity|Subject",names(GMS_Data))],
                    list(Subject = GMS_Data$Subject,
                         Activity = GMS_Data$Activity.Name),mean)
