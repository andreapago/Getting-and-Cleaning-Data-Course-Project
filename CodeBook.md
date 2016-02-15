## 1.Data description
The data contained in this dataset come from activity monitoring of a set of 30 subjects by using a smart phone equipped with several motion sensors. This data is the result of the merge of the original training and test sets of the experiments performed by researchers Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto from the
Smartlab - Non Linear Complex Systems Laboratory at DITEN - Università degli Studi di Genova.


The sensor signals (accelerometer and gyroscope) were pre-processed by the researchers by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals (tAcc-XYZ and tGyro-XYZ). These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). The acceleration signal from the smartphone accelerometer is in standard gravity units 'g' for each axis, while the body acceleration signal obtained by subtracting the gravity from the total acceleration. 
A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
For each set of measures the activity performed by the user is also provided. 




## 2.Variable description

The data set contains the following variables:

Variable Name|Description|Unit|
|:-------------- |:---------------- |:---------|
|tBodyAcc-mean-X |Mean body acceleration X-axis |g|
|tBodyAcc-mean-Y|Mean body acceleration Y-axis |g|
|tBodyAcc-mean-Z|Mean body acceleration Z-axis |g|
|tGravityAcc-mean-X|Mean gravity acceleration X-axis |g
|tGravityAcc-mean-Y|Mean gravity acceleration Y-axis |g
|tGravityAcc-mean-Z|Mean gravity acceleration Z-axis |  g   
|tBodyAccJerk-mean-X|Mean body acceleration jerk (i.e., derivative of the acceleration) X-axis |g/s
|tBodyAccJerk-mean-Y|Mean body acceleration jerk Y-axis |g/s
|tBodyAccJerk-mean-Z|Mean body acceleration jerk Z-axis|g/s
|tBodyGyro-mean-X|Mean body gyroscopic measure X-axis |rad/s
|tBodyGyro-mean-Y|Mean body gyroscopic measure Y-axis|rad/s
|tBodyGyro-mean-Z|Mean body gyroscopic measure Z-axis |rad/s
|tBodyGyroJerk-mean-X|Mean body gyroscopic jerk X-axis |g/s
|tBodyGyroJerk-mean-Y|Mean body gyroscopic jerk Y-axis |g/s
|tBodyGyroJerk-mean-Z|Mean body gyroscopic jerk Z-axis |g/s
|tBodyAccMag-mean |Mean body acceleration magnitude calculated using the Euclidean norm | g     
|tGravityAccMag-mean|Mean gravity acceleration magnitude calculated using the Euclidean norm |   g 
|tBodyAccJerkMag-mean|Mean body acceleration jerk magnitude calculated using the Euclidean norm |g/s
|tBodyGyroMag-mean|Mean gyroscopic magnitude calculated using the Euclidean norm |   g
|tBodyGyroJerkMag-mean |Mean gyroscopic jerk magnitude calculated using the Euclidean norm |    g/s
|fBodyAcc-mean-X|Mean body acceleration X-axis in frequency domain|g
|fBodyAcc-mean-Y|Mean body acceleration Y-axis in frequency domain|g
|fBodyAcc-mean-Z|Mean body acceleration Z-axis in frequency domain|g
|fBodyAccJerk-mean-X|Mean body acceleration jerk (i.e., derivative of the acceleration) X-axis in frequency domain|g/s
|fBodyAccJerk-mean-Y|Mean body acceleration jerk Y-axis in frequency domain|g/s
|fBodyAccJerk-mean-Z|Mean body acceleration jerk Z-axis in frequency domain|g/s
|fBodyGyro-mean-X|Mean body gyroscopic measure X-axis in frequency domain|rad/s
|fBodyGyro-mean-Y|Mean body gyroscopic measure Y-axis in frequency domain|rad/s
|fBodyGyro-mean-Z|Mean body gyroscopic measure Z-axis in frequency domain|rad/s
|fBodyAccMag-mean |Mean body acceleration magnitude calculated using the Euclidean norm in frequency domain| g     
|fBodyBodyAccJerkMag-mean|Mean body acceleration jerk magnitude calculated using the Euclidean norm in frequency domain|g/s
|fBodyBodyGyroMag-mean|Mean gyroscopic magnitude calculated using the Euclidean norm in frequency domain|  rad/s 
|fBodyBodyGyroJerkMag-mean |Mean gyroscopic jerk magnitude calculated using the Euclidean norm in frequency domain| rad/s^2
|tBodyAcc-std-X | Standard deviation body acceleration X-axis|g
|tBodyAcc-std-Y| Standard deviation body acceleration Y-axis|g
|tBodyAcc-std-Z| Standard deviation body acceleration Z-axis |g
|tGravityAcc-std-X| Standard deviation gravity acceleration X-axis|g
|tGravityAcc-std-Y| Standard deviationgravity acceleration Y-axis|g
|tGravityAcc-std-Z| Standard deviation gravity acceleration Z-axis |g    
|tBodyAccJerk-std-X|Standard deviation body acceleration jerk (i.e., derivative of the acceleration) X-axis|g/s
|tBodyAccJerk-std-Y|Standard deviation body acceleration jerk Y-axis|g/s
|tBodyAccJerk-std-Z|Standard deviation body acceleration jerk Z-axis|g/s
|tBodyGyro-std-X|Standard deviation body gyroscopic measure X-axis |rad/s
|tBodyGyro-std-Y|Standard deviation body gyroscopic measure Y-axis |rad/s
|tBodyGyro-std-Z|Standard deviation body gyroscopic measure Z-axis |rad/s
|tBodyGyroJerk-std-X|Standard deviation body gyroscopic jerk X-axis|rad/s^2
|tBodyGyroJerk-std-Y|Standard deviation body gyroscopic jerk Y-axis|rad/s^2
|tBodyGyroJerk-std-Z|Standard deviation body gyroscopic jerk Z-axis|rad/s^2      
|tBodyAccMag-std |Standard deviation body acceleration magnitude calculated using the Euclidean norm |g      
|tGravityAccMag-std|Standard deviation gravity acceleration magnitude calculated using the Euclidean norm |g    
|tBodyAccJerkMag-std|Standard deviation body acceleration jerk magnitude calculated using the Euclidean norm|g/s
|tBodyGyroMag-std|Standard deviation gyroscopic magnitude calculated using the Euclidean norm |rad/s   
|tBodyGyroJerkMag-std |Standard deviation gyroscopic jerk magnitude calculated using the Euclidean norm |rad/s^2
|fBodyAcc-std-X|Standard deviation body acceleration X-axis in frequency domain|g
|fBodyAcc-std-Y|Standard deviation body acceleration Y-axis in frequency domain|g
|fBodyAcc-std-Z|Standard deviation body acceleration Z-axis in frequency domain|g
|fBodyAccJerk-std-X|Standard deviation body acceleration jerk (i.e., derivative of the acceleration) X-axis in frequency domain|g/s
|fBodyAccJerk-std-Y|Standard deviation body acceleration jerk Y-axis in frequency domain|g/s
|fBodyAccJerk-std-Z|Standard deviation body acceleration jerk Z-axis in frequency domain|g/s
|fBodyGyro-std-X|Standard deviation body gyroscopic measure X-axis in frequency domain|rad/s
|fBodyGyro-std-Y|Standard deviation body gyroscopic measure Y-axis in frequency domain|rad/s
|fBodyGyro-std-Z|Standard deviation body gyroscopic measure Z-axis in frequency domain| rad/s
|fBodyBodyAccMag-std |Standard deviation body acceleration magnitude calculated using the Euclidean norm in frequency domain|g 
|fBodyBodyAccJerkMag-std|Standard deviation body acceleration jerk magnitude calculated using the Euclidean norm in frequency domain|g/s
|fBodyBodyGyroMag-std|Standard deviation gyroscopic magnitude calculated using the Euclidean norm in frequency domain|rad/s
|fBodyBodyGyroJerkMag-std |Standard deviation gyroscopic jerk magnitude calculated using the Euclidean norm in frequency domain|rad/s^2 
|activityName| Activity category name| Not Available


Please note that all the variables (except activityName) are normalized values bounded within [-1,1].


The activityName variable can assume one of the following:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING


## 3.Transformation/work on data

From the original raw comprehensive data available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip the following transformations have been performed.
From the whole set of features only the features representing mean and standard deviation are identified in the list of features by using a string matching function (grep).
The train and test dataset containing all the measures are merged together (binding of rows) and filtered to extract just the features of interest (selection of the variables corresponding to the interesting features - mean and standard deviation). The variables (columns) are re-named according to the appropriate features names. Such names are cleaned of unnecessary characters (i.e., parenthesis).
The train and test dataset representing the activities (e.g., walking) performed by the subjects are merged together. At each numerical ID of the activity the corresponding name is also attributed.
The features data and the name of activity data are bind together (column binding) to create a single dataset.

## 4.Second independent data set

###4.1 Variable description
In addition to the variables as described in Section 2, the additional variable for this dataset is:

Variable Name|Description|
|:-------------- |:---------------- |
|subjectID | Identificator of the subject participating to the experiment|

The subjectID variable can assume integer values from 1 to 30.

###4.2 Transformation/work on data
The additional data set requires addition/modification of features of the dataset created following the transformations described in 3. Therefore, for this step the dataset created following 3 is used.
First, the train and test dataset representing the subjects are merged and the name of the variable (i.e., column) is modified to a meaningful name: subjectID. 
The dataset of 3 is bind together with the dataset representing the subjects (columns binding). The so formed dataset is  split according to the subjectID and activityName. For each splitted (sub-)data the mean is computed for each variable.
