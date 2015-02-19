
#' Step 0: download the data

url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
downloaded.file <- 'data/UCI_HAR_Dataset.zip'

if (!file.exists(downloaded.file)) {
  dir.create(path = './data', showWarnings = FALSE)
  download.file(url, downloaded.file)
  unzip(downloaded.file, exdir='./data')
}

#' Step 1: Merges the training and the test sets to create one data set.


#' Step 2: Extracts only the measurements on the mean and standard deviation
#'  for each measurement. 


#' Step 3: Uses descriptive activity names to name the activities in the data set


#' Step 4: Appropriately labels the data set with descriptive variable names.

#' Step 5: From the data set in step 4, creates a second, independent tidy data 
#' set with the average of each variable for each activity and each subject 

#' Step 6: Please upload the tidy data set created in step 5 of the instructions. 
#' Please upload your data set as a txt file created with write.table() 
#' using row.name=FALSE (do not cut and paste a dataset directly into
#' the text box, as this may cause errors saving your submission).

write.table(x = step5.df, file = './result.txt',row.name=FALSE)

