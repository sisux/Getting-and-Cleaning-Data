
#' Step 0: download the data

url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
downloaded.file <- 'data/UCI_HAR_Dataset.zip'

if (!file.exists(downloaded.file)) {
  dir.create(path = './data', showWarnings = FALSE)
  download.file(url, downloaded.file)
  unzip(downloaded.file, exdir='./data')
}

#' Step 1: Merges the training and the test sets to create one data set.

## Reads the data into R:

features <- read.table("./data/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

train_x <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

test_x <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Prepares the intermdiate date

names(train_y)[1] <- "Activity"
train_xy <- cbind(train_x, train_y)
names(train_subject)[1] <- "Subject"
train_xys <- cbind(train_xy, train_subject)

names(test_y)[1] <- "Activity"
test_xy <- cbind(test_x, test_y)
names(test_subject)[1] <- "Subject"
test_xys <- cbind(test_xy, test_subject)

# Merges the training and the test sets to create one data set:

full_ds <- rbind(train_xys, test_xys)

#' Step 4: Appropriately labels the data set with descriptive variable names.

names(full_ds)[1:561] <- as.character(features$V2)

#' Step 2: Extracts only the measurements on the mean and standard deviation
#'  for each measurement. 

mean_columnsIdx <- grep("-mean\\(\\)", names(full_ds))
std_columnsIdx <- grep("-std\\(\\)", names(full_ds))

mean_std_ds <- cbind(full_ds[,c(mean_columnsIdx, std_columnsIdx)],
                     full_ds[,c("Activity", "Subject")]) 

#' Step 3: Uses descriptive activity names to name the activities in the data set

ds_activities <- merge(x = mean_std_ds, y = activity_labels, by.x = "Activity", by.y = "V1")
colnames(ds_activities)[which(colnames(ds_activities) == 'V2')] <- 'ActivityName'

#' Step 5: From the data set in step 4, creates a second, independent tidy data 
#' set with the average of each variable for each activity and each subject 

library(reshape2)

#use subset to only grab the variables of interest...
ds_activities <- ds_activities[, names(ds_activities) != c("Activity")] 

vars_byActvAndSubj <- aggregate(x = ds_activities[, 1:(ncol(ds_activities)-2)],
                       by=list(Subject = ds_activities$Subject, 
                               Activity = ds_activities$ActivityName),
                       FUN = mean)

#' Step 6: Please upload the tidy data set created in step 5 of the instructions. 
#' Please upload your data set as a txt file created with write.table() 
#' using row.name=FALSE

write.table(x = vars_byActvAndSubj, file = './result.txt',row.name=FALSE)

