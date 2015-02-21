Code Book
==========

## Introduction

This code book describes the variables, the data, and any transformations or work that are performed to clean up the data.

## The Data Set

The data set is structured by 68 summarized variables (mean), aggregated over 30 subjects and 6 activities. It results in a dataset with 180 rows and 68 columns.

### General variables description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 

Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

### Actual Variables

The `result.txt` file generated is structured as follows:

| Name                       |  Type | Description                            |
|----------------------------|:-----:|----------------------------------------|
| Subject                    | int   | 1:30                                   |
| Activity                   | Factor| 6 levels "LAYING","SITTING","STANDING",|
|                            |       | "WALKING", "WALKING_DOWNSTAIRS",       |
|                            |       | "WALKING_UPSTAIRS"                     |
| tBodyAcc-mean()-X          | num   | Defined above                          |
| tBodyAcc-mean()-Y          | num   | Defined above                          |
| tBodyAcc-mean()-Z          | num   | Defined above                          |
| tGravityAcc-mean()-X       | num   | Defined above                          |
| tGravityAcc-mean()-Y       | num   | Defined above                          |
| tGravityAcc-mean()-Z       | num   | Defined above                          |
| tBodyAccJerk-mean()-X      | num   | Defined above                          |
| tBodyAccJerk-mean()-Y      | num   | Defined above                          |
| tBodyAccJerk-mean()-Z      | num   | Defined above                          |
| tBodyGyro-mean()-X         | num   | Defined above                          |
| tBodyGyro-mean()-Y         | num   | Defined above                          |
| tBodyGyro-mean()-Z         | num   | Defined above                          |
| tBodyGyroJerk-mean()-X     | num   | Defined above                          |
| tBodyGyroJerk-mean()-Y     | num   | Defined above                          |
| tBodyGyroJerk-mean()-Z     | num   | Defined above                          |
| tBodyAccMag-mean()         | num   | Defined above                          |
| tGravityAccMag-mean()      | num   | Defined above                          |
| tBodyAccJerkMag-mean()     | num   | Defined above                          |
| tBodyGyroMag-mean()        | num   | Defined above                          |
| tBodyGyroJerkMag-mean()    | num   | Defined above                          |
| fBodyAcc-mean()-X          | num   | Defined above                          |
| fBodyAcc-mean()-Y          | num   | Defined above                          |
| fBodyAcc-mean()-Z          | num   | Defined above                          |
| fBodyAccJerk-mean()-X      | num   | Defined above                          |
| fBodyAccJerk-mean()-Y      | num   | Defined above                          |
| fBodyAccJerk-mean()-Z      | num   | Defined above                          |
| fBodyGyro-mean()-X         | num   | Defined above                          |
| fBodyGyro-mean()-Y         | num   | Defined above                          |
| fBodyGyro-mean()-Z         | num   | Defined above                          |
| fBodyAccMag-mean()         | num   | Defined above                          |
| fBodyBodyAccJerkMag-mean() | num   | Defined above                          |
| fBodyBodyGyroMag-mean()    | num   | Defined above                          |
| fBodyBodyGyroJerkMag-mean()| num   | Defined above                          |
| tBodyAcc-std()-X           | num   | Defined above                          |
| tBodyAcc-std()-Y           | num   | Defined above                          |
| tBodyAcc-std()-Z           | num   | Defined above                          |
| tGravityAcc-std()-X        | num   | Defined above                          |
| tGravityAcc-std()-Y        | num   | Defined above                          |
| tGravityAcc-std()-Z        | num   | Defined above                          |
| tBodyAccJerk-std()-X       | num   | Defined above                          |
| tBodyAccJerk-std()-Y       | num   | Defined above                          |
| tBodyAccJerk-std()-Z       | num   | Defined above                          |
| tBodyGyro-std()-X          | num   | Defined above                          |
| tBodyGyro-std()-Y          | num   | Defined above                          |
| tBodyGyro-std()-Z          | num   | Defined above                          |
| tBodyGyroJerk-std()-X      | num   | Defined above                          |
| tBodyGyroJerk-std()-Y      | num   | Defined above                          |
| tBodyGyroJerk-std()-Z      | num   | Defined above                          |
| tBodyAccMag-std()          | num   | Defined above                          |
| tGravityAccMag-std()       | num   | Defined above                          |
| tBodyAccJerkMag-std()      | num   | Defined above                          |
| tBodyGyroMag-std()         | num   | Defined above                          |
| tBodyGyroJerkMag-std()     | num   | Defined above                          |
| fBodyAcc-std()-X           | num   | Defined above                          |
| fBodyAcc-std()-Y           | num   | Defined above                          |
| fBodyAcc-std()-Z           | num   | Defined above                          |
| fBodyAccJerk-std()-X       | num   | Defined above                          |
| fBodyAccJerk-std()-Y       | num   | Defined above                          |
| fBodyAccJerk-std()-Z       | num   | Defined above                          |
| fBodyGyro-std()-X          | num   | Defined above                          |
| fBodyGyro-std()-Y          | num   | Defined above                          |
| fBodyGyro-std()-Z          | num   | Defined above                          |
| fBodyAccMag-std()          | num   | Defined above                          |
| fBodyBodyAccJerkMag-std()  | num   | Defined above                          |
| fBodyBodyGyroMag-std()     | num   | Defined above                          |
| fBodyBodyGyroJerkMag-std() | num   | Defined above                          |
