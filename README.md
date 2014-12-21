
# Code Book

The data set consists of 10 tables, one for the summary and 9 for the signal tables.

### Table 1: summary  (saved as summary.txt)

1. ID – it is a unique identifier for the table and serves as the link from summary table to the 9 Inertial Signal tables. It is the concatenation of the values of Subject and Activity. (Note that the concatenated string is chosen arbitrarily and I could have chosen numbers instead to uniquely identify each row. I did not intend to compress the two variable into one column and in fact both variables exist in the table)
2. Subject – Refers to the subject who perform the activity experiment. The subjects are labeled from 1 to 30.
3. Activity – refers to one of the six activities performed by the subjects. Its value is either of the six activities below:
	a. WALKING
	b. WALKING_UPSTAIRS
	c. WALKING_DOWNSTAIRS
	d. SITTING
	e. STANDING
	f. LAYING 

The variables 4 through 82 refers to the mean and standard deviation-related measurements. The variables are listed below.

4.tBodyAcc-mean()-X
5.tBodyAcc-mean()-Y
6.tBodyAcc-mean()-Z
7.tGravityAcc-mean()-X
8.tGravityAcc-mean()-Y
9.tGravityAcc-mean()-Z
10. tBodyAccJerk-mean()-X
11. tBodyAccJerk-mean()-Y
12. tBodyAccJerk-mean()-Z
13. tBodyGyro-mean()-X
14. tBodyGyro-mean()-Y
15. tBodyGyro-mean()-Z
16. tBodyGyroJerk-mean()-X
17. tBodyGyroJerk-mean()-Y
18. tBodyGyroJerk-mean()-Z
19. tBodyAccMag-mean()
20. tGravityAccMag-mean()
21. tBodyAccJerkMag-mean()
22. tBodyGyroMag-mean()
23. tBodyGyroJerkMag-mean()
24. fBodyAcc-mean()-X
25. fBodyAcc-mean()-Y
26. fBodyAcc-mean()-Z
27. fBodyAcc-meanFreq()-X
28. fBodyAcc-meanFreq()-Y
29. fBodyAcc-meanFreq()-Z
30. fBodyAccJerk-mean()-X
31. fBodyAccJerk-mean()-Y
32. fBodyAccJerk-mean()-Z
33. fBodyAccJerk-meanFreq()-X
34. fBodyAccJerk-meanFreq()-Y
35. fBodyAccJerk-meanFreq()-Z
36. fBodyGyro-mean()-X
37. fBodyGyro-mean()-Y
38. fBodyGyro-mean()-Z
39. fBodyGyro-meanFreq()-X
40. fBodyGyro-meanFreq()-Y
41. fBodyGyro-meanFreq()-Z
42. fBodyAccMag-mean()
43. fBodyAccMag-meanFreq()
44. fBodyBodyAccJerkMag-mean()
45. fBodyBodyAccJerkMag-meanFreq()
46. fBodyBodyGyroMag-mean()
47. fBodyBodyGyroMag-meanFreq()
48. fBodyBodyGyroJerkMag-mean()
49. fBodyBodyGyroJerkMag-meanFreq()
50. tBodyAcc-std()-X
51. tBodyAcc-std()-Y
52. tBodyAcc-std()-Z
53. tGravityAcc-std()-X
54. tGravityAcc-std()-Y
55. tGravityAcc-std()-Z
56. tBodyAccJerk-std()-X
57. tBodyAccJerk-std()-Y
58. tBodyAccJerk-std()-Z
59. tBodyGyro-std()-X
60. tBodyGyro-std()-Y
61. tBodyGyro-std()-Z
62. tBodyGyroJerk-std()-X
63. tBodyGyroJerk-std()-Y
64. tBodyGyroJerk-std()-Z
65. tBodyAccMag-std()
66. tGravityAccMag-std()
67. tBodyAccJerkMag-std()
68. tBodyGyroMag-std()
69. tBodyGyroJerkMag-std()
70. fBodyAcc-std()-X
71. fBodyAcc-std()-Y
72. fBodyAcc-std()-Z
73. fBodyAccJerk-std()-X
74. fBodyAccJerk-std()-Y
75. fBodyAccJerk-std()-Z
76. fBodyGyro-std()-X
77. fBodyGyro-std()-Y
78. fBodyGyro-std()-Z
79. fBodyAccMag-std()
80. fBodyBodyAccJerkMag-std()
81. fBodyBodyGyroMag-std()
82. fBodyBodyGyroJerkMag-std()


### Signal Tables

Consists of nine inertial signal tables with 129 columns each. The tables are listed below.
1. body_acc_x - The body acceleration signal in X - axis obtained by subtracting the gravity from the total acceleration.
2. body_acc_y - The body acceleration signal in Y - axis obtained by subtracting the gravity from the total acceleration.
3. body_acc_z - The body acceleration signal in Z - axis obtained by subtracting the gravity from the total acceleration.
4. body_gyro_x - The angular velocity vector in X - axis measured by the gyroscope for each window sample. The units are radians/second.
5. body_gyro_y - The angular velocity vector in Y - axis measured by the gyroscope for each window sample. The units are radians/second.
6. body_gyro_z - The angular velocity vector in Z - axis measured by the gyroscope for each window sample. The units are radians/second.
7. total_acc_x - The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. 
8. total_acc_y - The acceleration signal from the smartphone accelerometer Y axis in standard gravity units 'g'. 
9. total_acc_z  - The acceleration signal from the smartphone accelerometer Z axis in standard gravity units 'g'.

Each of these tables consists of 129 columns specified below
1. linktosignal – This is an identifier that links the summary table to the inertial signal tables
     The columns 2 through 129 is a vector with 128 elements representing the signal





# The run_analysis.R script

IMPORTANT NOTE: load the plyr package before running this script.

The run_analysis.R script does the following:
1.	Augment the rows of X_train to the rows of X_test to form a bigger table X. Note that the X_test comes first before the X_train. 
In similar fashion, the following tables are also merged
	• y_test and y_train
	• subject_test and subject train
	• body_acc_x_test and body_acc_x_train
	• body_acc_y_test and body_acc_y_train
	• body_acc_z_test and body_acc_z_train
	• body_gyro_x_test and body_gyro_x_train
	• body_gyro_y_test and body_gyro_y_train
	• body_gyro_z_test and body_gyro_z_train
	• total_acc_x_test and total_acc_x_train
	• total_acc_y_test and total_acc_y_train
	• total_acc_z_test and total_acc_z_train
2. Determine which of 561 columns of the features table are mean and standard deviation measurement. (Based on the result of this, there are 79 mean and standard deviation related features)
3. Remove some of the columns of x (79 were left out of 561) that are not related to mean and standard deviation. 
4. Name the columns of x based on the descriptive feature name.
5. Add two columns in x (at the start). The first column refers to the subject and the second column to the activity.
6. Add another column named ID at the start by concatenating subject and activity for each row. (Since there are 30 unique values of subject and 6 unique values of activity, there are 6 * 30 = 180 unique values for the new column ID)
7. Divide the rows of x into 180 groups based on the value of their ID column. For each of these 180 groups, calculate the column means for the columns 4 - 82. Save the means into another table. This new table has 180 rows and 82 columns; 180 rows for the unique values of ID and 82 columns for the 79 mean and standard deviation related measurements and the additional 3 columns from numbers 5 and 6). This new table will then be saved as summary.txt
8. For each of the nine signal tables, add another columns named linktosignal to link the signal tables to the summary. This column has 180 unique values similar to the of the ID column in summary.txt. This column identifies in which row in the summary table the observation (rows in signal table) is included.

