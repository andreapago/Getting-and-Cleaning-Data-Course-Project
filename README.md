##Assignment: Getting and Cleaning Data Course Project


The repository contains a R file with a set of functions realized to clean and tide-up a data set containing measures of sensors to categorize/recognize user activities based on the measures of the accelerometers/gyroscopes of smart phones.

The R file contains the following functions:

__downloadData()__: looks at the presence of the dataset in the working directory. If not present the data set is downloaded
and unzipped automatically.

__tidyDatasetCreator()__: 

- Merges the training and the test sets to create one data set. 

- Extracts only the measurements on the mean and standard deviation for each measurement.

- Uses descriptive activity names to name the activities in the data set

- Appropriately labels the data set with descriptive variable names.

__computeMeanForSubjectAndAcivity()__: creates a second, independent tidy data set (by calling and using th results of tidyDatasetCreator() function) with the average of each variable for each activity and each subject.

__NB: to produce the step 5 of the assignment (i.e., From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.)  one should just call the function computeMeanForSubjectAndAcivity()__
