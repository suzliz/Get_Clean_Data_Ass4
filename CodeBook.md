# Data Dictionary for TidySmartPhone.csv

## Background Information
Information taken from Features_Info.txt and Readme.txt provided as part of data set 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Each record contains:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.





The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the 
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Data reported below has been aggregated by taking the mean of all observations for each subject and activity.

## How run_analysis.R works
The script will read in the following files:

- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

The test results are combined by pasting the columns identifying the subject and activity from subject_test and y_test onto the measurement data in x_test. This is also done for the train data.

The test and train datasets are then pasted together using a row bind function

Descriptive column names are provided through the data in features.txt

Descriptive activity types are obtained by merging the data with the activity_labels information

All columns related to mean or standard devations are selected

This data is then aggregated by mean for each subject and activity type

The final tidy data set is created and written into a text file format.


## List of data


1. Subject (Integer Number from 1 to 30)
2. Activity (Character String)
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING
3. tBodyAcc-mean()-X (double)
4. tBodyAcc-mean()-Y (double)
5. tBodyAcc-mean()-Z (double)
6. tBodyAcc-std()-X (double)
7. tBodyAcc-std()-Y (double)
8. tBodyAcc-std()-Z (double)
9. tGravityAcc-mean()-X (double)
10. tGravityAcc-mean()-Y (double)
11. tGravityAcc-mean()-Z (double)
12. tGravityAcc-std()-X (double)
13. tGravityAcc-std()-Y (double)
14. tGravityAcc-std()-Z (double)
15. tBodyAccJerk-mean()-X (double)
16. tBodyAccJerk-mean()-Y (double)
17. tBodyAccJerk-mean()-Z (double)
18. tBodyAccJerk-std()-X (double)
19. tBodyAccJerk-std()-Y (double)
20. tBodyAccJerk-std()-Z (double)
21. tBodyGyro-mean()-X (double)
22. tBodyGyro-mean()-Y (double)
23. tBodyGyro-mean()-Z (double)
24. tBodyGyro-std()-X (double)
25. tBodyGyro-std()-Y (double)
26. tBodyGyro-std()-Z (double)
27. tBodyGyroJerk-mean()-X (double)
28. tBodyGyroJerk-mean()-Y (double)
29. tBodyGyroJerk-mean()-Z (double)
30. tBodyGyroJerk-std()-X (double)
31. tBodyGyroJerk-std()-Y (double)
32. tBodyGyroJerk-std()-Z (double)
33. tBodyAccMag-mean() (double)
34. tBodyAccMag-std() (double)
35. tGravityAccMag-mean() (double)
36. tGravityAccMag-std() (double)
37. tBodyAccJerkMag-mean() (double)
38. tBodyAccJerkMag-std() (double)
39. tBodyGyroMag-mean() (double)
40. tBodyGyroMag-std() (double)
41. tBodyGyroJerkMag-mean() (double)
42. tBodyGyroJerkMag-std() (double)
43. fBodyAcc-mean()-X (double)
44. fBodyAcc-mean()-Y (double)
45. fBodyAcc-mean()-Z (double)
46. fBodyAcc-std()-X (double)
47. fBodyAcc-std()-Y (double)
48. fBodyAcc-std()-Z (double)
49. fBodyAcc-meanFreq()-X (double)
50. fBodyAcc-meanFreq()-Y (double)
51. fBodyAcc-meanFreq()-Z (double)
52. fBodyAccJerk-mean()-X (double)
53. fBodyAccJerk-mean()-Y (double)
54. fBodyAccJerk-mean()-Z (double)
55. fBodyAccJerk-std()-X (double)
56. fBodyAccJerk-std()-Y (double)
57. fBodyAccJerk-std()-Z (double)
58. fBodyAccJerk-meanFreq()-X (double)
59. fBodyAccJerk-meanFreq()-Y (double)
60. fBodyAccJerk-meanFreq()-Z (double)
61. fBodyGyro-mean()-X (double)
62. fBodyGyro-mean()-Y (double)
63. fBodyGyro-mean()-Z (double)
64. fBodyGyro-std()-X (double)
65. fBodyGyro-std()-Y (double)
66. fBodyGyro-std()-Z (double)
67. fBodyGyro-meanFreq()-X (double)
68. fBodyGyro-meanFreq()-Y (double)
69. fBodyGyro-meanFreq()-Z (double)
70. fBodyAccMag-mean() (double)
71. fBodyAccMag-std() (double)
72. fBodyAccMag-meanFreq() (double)
73. fBodyBodyAccJerkMag-mean() (double)
74. fBodyBodyAccJerkMag-std() (double)
75. fBodyBodyAccJerkMag-meanFreq() (double)
76. fBodyBodyGyroMag-mean() (double)
77. fBodyBodyGyroMag-std() (double)
78. fBodyBodyGyroMag-meanFreq() (double)
79. fBodyBodyGyroJerkMag-mean() (double)
80. fBodyBodyGyroJerkMag-std() (double)
81. fBodyBodyGyroJerkMag-meanFreq() (double)



