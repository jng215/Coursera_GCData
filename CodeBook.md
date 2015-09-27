Coursera - Getting and Cleaning Data - Course Project

The source data used by this project is the UCI HAR dataset with the URL link below:
- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Futher information about the source data can be obtained in the URL below:
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


After downloading and importing the source data, the R script run_analysis.R does the following:
- Merge the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates an independent tidy data set with the average of each variable for each activity and each subject.


The last step creates a data file called tidyAverageData.txt, which has the following variables that contain the averages for each activity and each subject:

 $ Subject
 $ Activity
 $ tBodyAccelerometer-Mean-X
 $ tBodyAccelerometer-Mean-Y
 $ tBodyAccelerometer-Mean-Z
 $ tBodyAccelerometer-StdDev-X
 $ tBodyAccelerometer-StdDev-Y
 $ tBodyAccelerometer-StdDev-Z
 $ tGravityAccelerometer-Mean-X
 $ tGravityAccelerometer-Mean-Y
 $ tGravityAccelerometer-Mean-Z
 $ tGravityAccelerometer-StdDev-X
 $ tGravityAccelerometer-StdDev-Y
 $ tGravityAccelerometer-StdDev-Z
 $ tBodyAccelerometerJerk-Mean-X
 $ tBodyAccelerometerJerk-Mean-Y
 $ tBodyAccelerometerJerk-Mean-Z
 $ tBodyAccelerometerJerk-StdDev-X
 $ tBodyAccelerometerJerk-StdDev-Y
 $ tBodyAccelerometerJerk-StdDev-Z
 $ tBodyGyroscope-Mean-X
 $ tBodyGyroscope-Mean-Y
 $ tBodyGyroscope-Mean-Z
 $ tBodyGyroscope-StdDev-X
 $ tBodyGyroscope-StdDev-Y
 $ tBodyGyroscope-StdDev-Z
 $ tBodyGyroscopeJerk-Mean-X
 $ tBodyGyroscopeJerk-Mean-Y
 $ tBodyGyroscopeJerk-Mean-Z
 $ tBodyGyroscopeJerk-StdDev-X
 $ tBodyGyroscopeJerk-StdDev-Y
 $ tBodyGyroscopeJerk-StdDev-Z
 $ tBodyAccelerometerMagnitude-Mean
 $ tBodyAccelerometerMagnitude-StdDev
 $ tGravityAccelerometerMagnitude-Mean
 $ tGravityAccelerometerMagnitude-StdDev
 $ tBodyAccelerometerJerkMagnitude-Mean
 $ tBodyAccelerometerJerkMagnitude-StdDev
 $ tBodyGyroscopeMagnitude-Mean
 $ tBodyGyroscopeMagnitude-StdDev
 $ tBodyGyroscopeJerkMagnitude-Mean
 $ tBodyGyroscopeJerkMagnitude-StdDev
 $ fBodyAccelerometer-Mean-X
 $ fBodyAccelerometer-Mean-Y
 $ fBodyAccelerometer-Mean-Z
 $ fBodyAccelerometer-StdDev-X
 $ fBodyAccelerometer-StdDev-Y
 $ fBodyAccelerometer-StdDev-Z
 $ fBodyAccelerometerJerk-Mean-X
 $ fBodyAccelerometerJerk-Mean-Y
 $ fBodyAccelerometerJerk-Mean-Z
 $ fBodyAccelerometerJerk-StdDev-X
 $ fBodyAccelerometerJerk-StdDev-Y
 $ fBodyAccelerometerJerk-StdDev-Z
 $ fBodyGyroscope-Mean-X
 $ fBodyGyroscope-Mean-Y
 $ fBodyGyroscope-Mean-Z
 $ fBodyGyroscope-StdDev-X
 $ fBodyGyroscope-StdDev-Y
 $ fBodyGyroscope-StdDev-Z
 $ fBodyAccelerometerMagnitude-Mean
 $ fBodyAccelerometerMagnitude-StdDev
 $ fBodyBodyAccelerometerJerkMagnitude-Mean
 $ fBodyBodyAccelerometerJerkMagnitude-StdDev
 $ fBodyBodyGyroscopeMagnitude-Mean
 $ fBodyBodyGyroscopeMagnitude-StdDev
 $ fBodyBodyGyroscopeJerkMagnitude-Mean
 

