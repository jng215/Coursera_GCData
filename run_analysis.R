# -----------------------------------------------------
# Coursera - Getting and Cleaning Data - Course Project
# -----------------------------------------------------

# library packages
library(sqldf)
library(dplyr)
library(plyr)

# download file
fileName <- "getdata_dataset.zip"
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", fileName)
unzip(fileName) 

# import data into data frames
impdataFeatures <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
impdataActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

impdataXTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
impdataYTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
impdataSubjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)

impdataXTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
impdataYTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
impdataSubjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)


#####
# ----- 1. Merges the training and the test sets to create one data set.
#
dataX <- rbind(impdataXTrain,impdataXTest)  # merge data       
names(dataX) <- impdataFeatures[,2]         # add variable (column) names


#####
# ----- 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#
colNames <- filter(impdataFeatures,grepl("mean\\(\\)|std\\(\\)",V2))       # get column names
dataMeanStd <- dataX[,colNames[,1]]              # create mean and standard deviation measurement dataset.


#####
# ----- 3. Uses descriptive activity names to name the activities in the data set
#
# give imported data frames their variable names
names(impdataActivityLabels) <- c('Activity','ActivityDesc');

dataY <- rbind(impdataYTrain,impdataYTest)  
names(dataY) <- c("Activity")

dataSubject <- rbind(impdataSubjectTrain,impdataSubjectTest)         
names(dataSubject) <- c("Subject")

# add Subject and Activity variables (columns) to  Mean-Std dataset, then add ActivityDesc
dataMeanStd <- cbind(dataMeanStd, dataSubject, dataY)    
dataMeanStd <- sqldf("SELECT * FROM dataMeanStd JOIN impdataActivityLabels USING(Activity) ")    # sqldf: SELECT 


#####
# ----- 4. Appropriately labels the data set with descriptive variable names. 
#
names(dataMeanStd) <- gsub("\\()","", names(dataMeanStd))
names(dataMeanStd) <- gsub("-mean","-Mean", names(dataMeanStd))
names(dataMeanStd) <- gsub("-std","-StdDev", names(dataMeanStd))
names(dataMeanStd) <- gsub("Acc", "Accelerometer", names(dataMeanStd))
names(dataMeanStd) <- gsub("Gyro", "Gyroscope", names(dataMeanStd))
names(dataMeanStd) <- gsub("Mag", "Magnitude", names(dataMeanStd))


#####
# ----- 5. From the data set in step 4, creates a second, independent tidy data set with 
#          the average of each variable for each activity and each subject.
numVariables <- length(dataMeanStd)-3    # number of variables, deducted Subject, Activity, ActivityDesc
dataAverages <- ddply(dataMeanStd, .(Subject, Activity), function(x) colMeans(x[, 1:numVariables]))     ###
write.table(dataAverages, "tidyAverageData.txt", row.name=FALSE)   



