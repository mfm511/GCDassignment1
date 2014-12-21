
# Code Book

The data set consists of 10 tables, one for the summary and 9 for the signal tables.

### Table 1: summary  (saved as summary.txt)

<ol>
<li> ID – it is a unique identifier for the table and serves as the link from summary table to the 9 Inertial Signal * tables. It is the concatenation of the values of Subject and Activity. (Note that the concatenated string is chosen arbitrarily and I could have chosen numbers instead to uniquely identify each row. I did not intend to compress the two variable into one column and in fact both variables exist in the table) </li>
<li> Subject – Refers to the subject who perform the activity experiment. The subjects are labeled from 1 to 30.</li>
<li> Activity – refers to one of the six activities performed by the subjects. Its value is either of the six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING </li>
<li>  tBodyAcc-mean()-X </li>
<li>  tBodyAcc-mean()-Y </li>
<li>  tBodyAcc-mean()-Z </li>
<li>  tGravityAcc-mean()-X </li>
<li>  tGravityAcc-mean()-Y </li>
<li>  tGravityAcc-mean()-Z </li>
<li>  tBodyAccJerk-mean()-X </li>
<li>  tBodyAccJerk-mean()-Y </li>
<li>  tBodyAccJerk-mean()-Z </li>
<li>  tBodyGyro-mean()-X </li>
<li>  tBodyGyro-mean()-Y </li>
<li>  tBodyGyro-mean()-Z </li>
<li>  tBodyGyroJerk-mean()-X </li>
<li>  tBodyGyroJerk-mean()-Y </li>
<li>  tBodyGyroJerk-mean()-Z </li>
<li>  tBodyAccMag-mean() </li>
<li>  tGravityAccMag-mean() </li>
<li>  tBodyAccJerkMag-mean() </li>
<li>  tBodyGyroMag-mean() </li>
<li>  tBodyGyroJerkMag-mean() </li>
<li>  fBodyAcc-mean()-X </li>
<li>  fBodyAcc-mean()-Y </li>
<li>  fBodyAcc-mean()-Z </li>
<li>  fBodyAcc-meanFreq()-X </li>
<li>  fBodyAcc-meanFreq()-Y </li>
<li>  fBodyAcc-meanFreq()-Z </li>
<li>  fBodyAccJerk-mean()-X </li>
<li>  fBodyAccJerk-mean()-Y </li>
<li>  fBodyAccJerk-mean()-Z </li>
<li>  fBodyAccJerk-meanFreq()-X </li>
<li>  fBodyAccJerk-meanFreq()-Y </li>
<li>  fBodyAccJerk-meanFreq()-Z </li>
<li>  fBodyGyro-mean()-X </li>
<li>  fBodyGyro-mean()-Y </li>
<li>  fBodyGyro-mean()-Z </li>
<li>  fBodyGyro-meanFreq()-X </li>
<li>  fBodyGyro-meanFreq()-Y </li>
<li>  fBodyGyro-meanFreq()-Z </li>
<li>  fBodyAccMag-mean() </li>
<li>  fBodyAccMag-meanFreq() </li>
<li>  fBodyBodyAccJerkMag-mean() </li>
<li>  fBodyBodyAccJerkMag-meanFreq() </li>
<li>  fBodyBodyGyroMag-mean() </li>
<li>  fBodyBodyGyroMag-meanFreq() </li>
<li>  fBodyBodyGyroJerkMag-mean() </li>
<li>  fBodyBodyGyroJerkMag-meanFreq() </li>
<li>  tBodyAcc-std()-X </li>
<li>  tBodyAcc-std()-Y </li>
<li>  tBodyAcc-std()-Z </li>
<li>  tGravityAcc-std()-X </li>
<li>  tGravityAcc-std()-Y </li>
<li>  tGravityAcc-std()-Z </li>
<li>  tBodyAccJerk-std()-X </li>
<li>  tBodyAccJerk-std()-Y </li>
<li>  tBodyAccJerk-std()-Z </li>
<li>  tBodyGyro-std()-X </li>
<li>  tBodyGyro-std()-Y </li>
<li>  tBodyGyro-std()-Z </li>
<li>  tBodyGyroJerk-std()-X </li>
<li>  tBodyGyroJerk-std()-Y </li>
<li>  tBodyGyroJerk-std()-Z </li>
<li>  tBodyAccMag-std() </li>
<li>  tGravityAccMag-std() </li>
<li>  tBodyAccJerkMag-std() </li>
<li>  tBodyGyroMag-std() </li>
<li>  tBodyGyroJerkMag-std() </li>
<li>  fBodyAcc-std()-X </li>
<li>  fBodyAcc-std()-Y </li>
<li>  fBodyAcc-std()-Z </li>
<li>  fBodyAccJerk-std()-X </li>
<li>  fBodyAccJerk-std()-Y </li>
<li>  fBodyAccJerk-std()-Z </li>
<li>  fBodyGyro-std()-X </li>
<li>  fBodyGyro-std()-Y </li>
<li>  fBodyGyro-std()-Z </li>
<li>  fBodyAccMag-std() </li>
<li>  fBodyBodyAccJerkMag-std() </li>
<li>  fBodyBodyGyroMag-std() </li>
<li>  fBodyBodyGyroJerkMag-std() </li>
</ol>

<b>The variables 4 through 82 refers to the mean and standard deviation-related measurements. The variables are listed below. </b>

### Signal Tables

<b>Consists of nine inertial signal tables with 129 columns each. The tables are listed below.</b>

<ol>
<li> body_acc_x - The body acceleration signal in X - axis obtained by subtracting the gravity from the total acceleration. </li>
<li> body_acc_y - The body acceleration signal in Y - axis obtained by subtracting the gravity from the total acceleration. </li>
<li> body_acc_z - The body acceleration signal in Z - axis obtained by subtracting the gravity from the total acceleration. </li>
<li> body_gyro_x - The angular velocity vector in X - axis measured by the gyroscope for each window sample. The units are radians/second. </li>
<li> body_gyro_y - The angular velocity vector in Y - axis measured by the gyroscope for each window sample. The units are radians/second. </li>
<li> body_gyro_z - The angular velocity vector in Z - axis measured by the gyroscope for each window sample. The units are radians/second. </li>
<li> total_acc_x - The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.  </li>
<li> total_acc_y - The acceleration signal from the smartphone accelerometer Y axis in standard gravity units 'g'.  </li>
<li> total_acc_z  - The acceleration signal from the smartphone accelerometer Z axis in standard gravity units 'g'. </li>
</ol>
<b>Each of these tables consists of 129 columns specified below</b>
1. linktosignal – This is an identifier that links the summary table to the inertial signal tables

<b>The columns 2 through 129 is a vector with 128 elements representing the signal</b>


# The run_analysis.R script

<b>IMPORTANT NOTE: load the plyr package before running this script.</b>

<b>The run_analysis.R script does the following:</b>
<ol><li>
Augment the rows of X_train to the rows of X_test to form a bigger table X. Note that the X_test comes first before the X_train. </li>
In similar fashion, the following tables are also merged y_test and y_train, subject_test and subject train, body_acc_x_test and body_acc_x_train, body_acc_y_test and body_acc_y_train ,body_acc_z_test and body_acc_z_train, body_gyro_x_test and body_gyro_x_train, body_gyro_y_test and body_gyro_y_train, body_gyro_z_test and body_gyro_z_train, total_acc_x_test and total_acc_x_train, total_acc_y_test and total_acc_y_train, total_acc_z_test and total_acc_z_train

<li> Determine which of 561 columns of the features table are mean and standard deviation measurement. (Based on the result of this, there are 79 mean and standard deviation related features) </li>
<li> Remove some of the columns of x (79 were left out of 561) that are not related to mean and standard deviation. 
<li> Name the columns of x based on the descriptive feature name. </li>
<li> Add two columns in x (at the start). The first column refers to the subject and the second column to the activity.</li>
<li> Add another column named ID at the start by concatenating subject and activity for each row. (Since there are 30 unique values of subject and 6 unique values of activity, there are 6 * 30 = 180 unique values for the new column ID)</li>
<li> Divide the rows of x into 180 groups based on the value of their ID column. For each of these 180 groups, calculate the column means for the columns 4 - 82. Save the means into another table. This new table has 180 rows and 82 columns; 180 rows for the unique values of ID and 82 columns for the 79 mean and standard deviation related measurements and the additional 3 columns from numbers 5 and 6). This new table will then be saved as summary.txt</li>
<li> For each of the nine signal tables, add another columns named linktosignal to link the signal tables to the summary. This column has 180 unique values similar to the of the ID column in summary.txt. This column identifies in which row in the summary table the observation (rows in signal table) is included.</li>
</ol>

