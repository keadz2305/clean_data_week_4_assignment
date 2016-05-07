#Summary:

The dataset is captured from the experiment data acquired from the following link: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##For each record it is provided:
Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
The 561-feature vector with time and frequency domain variables has been filtered down to only the mean and standard deviation variables
Its activity label has been appended to the dataset as the activity column.
An identifier of the subject who carried out the experiment has been appended to the dataset as the subject column.

##The dataset includes the following files:
'README.md': describe the script used to analyse the data

'CodeBook.md': Shows information about the dataset and the variables.

'second_data.txt': summarize data set with the average of each variable for each activity and each subject

'run_analysis.R': the script used to anaylse the data and output the final dataset

##The following describes the variables:
'subject': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'activity': indicates the type of activity performed by the subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

'Acc': The acceleration signal from the smartphone accelerometer X,Y or Z axis in standard gravity units 'g'.

'Gyro': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

##Notes:
Features are normalized and bounded within [-1,1].
Each feature vector is a row on the text file.
For more information about this dataset contact: activityrecognition@smartlab.ws

##Complete list of Variables:
1 tBodyAcc-mean()-X  
2 tBodyAcc-mean()-Y  
3 tBodyAcc-mean()-Z  
4 tBodyAcc-std()-X  
5 tBodyAcc-std()-Y  
6 tBodyAcc-std()-Z  
7 tGravityAcc-mean()-X  
8 tGravityAcc-mean()-Y  
9 tGravityAcc-mean()-Z  
10 tGravityAcc-std()-X  
11 tGravityAcc-std()-Y  
12 tGravityAcc-std()-Z  
13 tBodyAccJerk-mean()-X  
14 tBodyAccJerk-mean()-Y  
15 tBodyAccJerk-mean()-Z  
16 tBodyAccJerk-std()-X  
17 tBodyAccJerk-std()-Y  
18 tBodyAccJerk-std()-Z  
19 tBodyGyro-mean()-X  
20 tBodyGyro-mean()-Y  
21 tBodyGyro-mean()-Z  
22 tBodyGyro-std()-X  
23 tBodyGyro-std()-Y  
24 tBodyGyro-std()-Z  
25 tBodyGyroJerk-mean()-X  
26 tBodyGyroJerk-mean()-Y  
27 tBodyGyroJerk-mean()-Z  
28 tBodyGyroJerk-std()-X  
29 tBodyGyroJerk-std()-Y  
30 tBodyGyroJerk-std()-Z  
31 tBodyAccMag-mean()  
32 tBodyAccMag-std()  
33 tGravityAccMag-mean()  
34 tGravityAccMag-std()  
35 tBodyAccJerkMag-mean()  
36 tBodyAccJerkMag-std()  
37 tBodyGyroMag-mean()  
38 tBodyGyroMag-std()  
39 tBodyGyroJerkMag-mean()  
40 tBodyGyroJerkMag-std()  
41 fBodyAcc-mean()-X  
42 fBodyAcc-mean()-Y  
43 fBodyAcc-mean()-Z  
44 fBodyAcc-std()-X  
45 fBodyAcc-std()-Y  
46 fBodyAcc-std()-Z  
47 fBodyAccJerk-mean()-X  
48 fBodyAccJerk-mean()-Y  
49 fBodyAccJerk-mean()-Z  
50 fBodyAccJerk-std()-X  
51 fBodyAccJerk-std()-Y  
52 fBodyAccJerk-std()-Z  
53 fBodyGyro-mean()-X  
54 fBodyGyro-mean()-Y  
55 fBodyGyro-mean()-Z  
56 fBodyGyro-std()-X  
57 fBodyGyro-std()-Y  
58 fBodyGyro-std()-Z  
59 fBodyAccMag-mean()  
60 fBodyAccMag-std()  
61 fBodyBodyAccJerkMag-mean()  
62 fBodyBodyAccJerkMag-std()  
63 fBodyBodyGyroMag-mean()  
64 fBodyBodyGyroMag-std()  
65 fBodyBodyGyroJerkMag-mean()  
66 fBodyBodyGyroJerkMag-std()  
67 activity  
68 subject  