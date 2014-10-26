####DataScienceCoursera_CleaningDataProj
====================================
# Getting and Cleaning Data Project
## Data Codebook for HAR_Smartphone_Summary
====================================
This data set contains summary data for 30 subjects and 6 activities
Each of the 30 subjects completed each activity
Column results are the average measurement collection per subject and activity.

Average measurements are only done for selected measurements (mean / std).  Mean measurement were only selected when there was an accompanying standard deviation.

There are 180 rows and 68 fields (described below)
There are no missing values

The raw data come from the accelerometer and gyroscope 3-axial raw signals (TimeAcceleration-XYZ and TimeGyroscope-XYZ. These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleration-XYZ and TimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerationMagnitute, TimeGravityAccerationMagnitude, TimeBodyAccelerationJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcceleration-XYZ, FrequencyBodyAccelerationJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerationJerkMagnitude, FrequencyBodyGyroMagnitude, FrequencyBodyGyroscopeJerkMagnitude. (Note the 'frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: XYZ is used to denote 3-axial signals in the X, Y and Z directions.
====================================
| ------------------------------------------------------------------------------------------------------------ |
| Column Name                                 | Column Description                                             |
| ------------------------------------------- | -------------------------------------------------------------- |
| subjectid                                   | Subject ID                                                     |
| ------------------------------------------- | -------------------------------------------------------------- |
| activitydescription                         | Activity Description                                           |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationmeanx                   | Average Time of Body Acceleration for mean of X                |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationmeany                   | Average Time of Body Acceleration for mean of Y                |
|                                             | (per activity/subject)                                         | 
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationmeanz                   | Average Time of Body Acceleration for mean of Z                |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- |--------------------------------------------------------------- |
| timebodyaccelerationstdx                    | Average Time of Body Acceleration for standard deviation of X  | 
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationstdy                    | Average Time of Body Acceleration for standard deviation of Y  |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationstdz                    | Average Time of Body Acceleration for standard deviation of Z  |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timegravityaccelerationmeanx                | Average Time of Gravity Acceleration for mean of X             |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timegravityaccelerationmeany                | Average Time of Gravity Acceleration for mean of Y             |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timegravityaccelerationmeanz                | Average Time of Gravity Acceleration for mean of Z             |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timegravityaccelerationstdx                 | Average Time of Gravity Acceleration for standard deviation    |
|                                             | of X (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timegravityaccelerationstdy                 | Average Time of Gravity Acceleration for standard deviation    | 
|                                             | of Y (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timegravityaccelerationstdz                 | Average Time of Gravity Acceleration for standard deviation    |
|                                             | of Z (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationjerkmeanx               | Average Time of Body Acceleration Jerk for mean of X           |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationjerkmeany               | Average Time of Body Acceleration Jerk for mean of Y           |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationjerkmeanz               | Average Time of Body Acceleration Jerk for mean of Z           |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationjerkstdx                | Average Time of Body Acceleration Jerk for standard deviation  |
|                                             | of X (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationjerkstdy                | Average Time of Body Acceleration Jerk for standard deviation  |
|                                             | of Y (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationjerkstdz                | Average Time of Body Acceleration Jerk for standard deviation  |
|                                             | of Z (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopemeanx                      | Average Time of Body Gyroscope for mean of X                   |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopemeany                      | Average Time of Body Gyroscope for mean of Y                   |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopemeanz                      | Average Time of Body Gyroscope for mean of Z                   |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopestdx                       | Average Time of Body Gyroscope for standard deviation of X     |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopestdy                       | Average Time of Body Gyroscope for standard deviation of Y     |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopestdz                       | Average Time of Body Gyroscope for standard deviation of Z     |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopejerkmeanx                  | Average Time of Body Gyroscope Jerk for mean of X              |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopejerkmeany                  | Average Time of Body Gyroscope Jerk for mean of Y              |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopejerkmeanz                  | Average Time of Body Gyroscope Jerk for mean of Z              |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopejerkstdx                   | Average Time of Body Gyroscope Jerk for standard deviation     |
|                                             | of X (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopejerkstdy                   | Average Time of Body Gyroscope Jerk for standard deviation     |
|                                             | of Y (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopejerkstdz                   | Average Time of Body Gyroscope Jerk for standard deviation     |
|                                             | of Z (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationmagnitudemean           | Average Time of Mean Body Acceleration Magnitude               |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationmagnitudestd            | Average Time for the standard deviation of Body Acceleration   |
|                                             | Magnitude (per activity/subject)                               |
| ------------------------------------------- | -------------------------------------------------------------- |
| timegravityaccelerationmagnitudemean        | Average Time of Mean Gravity Acceleration Magnitude            |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timegravityaccelerationmagnitudestd         | Average Time for the standard deviation of Gravity Acceleration| 
|                                             | Magnitude (per activity/subject)                               |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationjerkmagnitudemean       | Average Time of Mean Body Acceleration Jerk Magnitude          |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodyaccelerationjerkmagnitudestd        | Average Time for the standard deviation of Body Acceleration   |
|                                             | Jerk Magnitude (per activity/subject)                          |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopemagnitudemean              | Average Time of Mean Body Gyroscope Magnitude                  |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopemagnitudestd               | Average Time for the standard deviation of Body Gyroscope      |
|                                             | Magnitude (per activity/subject)                               |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopejerkmagnitudemean          | Average Time of Mean Body Gyroscope Jerk Magnitude             |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| timebodygyroscopejerkmagnitudestd           | Average Time for the standard deviation of Body Gyroscope Jerk |
|                                             | Magnitude (per activity/subject)                               |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationmeanx              | Average Frequency of Body Acceleration for mean of X           |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationmeany              | Average Frequency of Body Acceleration for mean of Y           |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationmeanz              | Average Frequency of Body Acceleration for mean of Z           |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationstdx               | Average Frequency of Body Acceleration for standard deviation  |
|                                             | of X (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationstdy               | Average Frequency of Body Acceleration for standard deviation  |
|                                             | of Y (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationstdz               | Average Frequency of Body Acceleration for standard deviation  |
|                                             | of Z (per activity/subject)                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationjerkmeanx          | Average Frequency of Body Acceleration Jerk for mean of X      |
|                                             | (per activity/subject)                                         | 
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationjerkmeany          | Average Frequency of Body Acceleration Jerk for mean of Y      |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationjerkmeanz          | Average Frequency of Body Acceleration Jerk for mean of Z      |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationjerkstdx           | Average Frequency of Body Acceleration Jerk for standard       |
|                                             | deviation of X (per activity/subject)                          |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationjerkstdy           | Average Frequency of Body Acceleration Jerk for standard       |
|                                             | deviation of Y (per activity/subject)                          |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationjerkstdz           | Average Frequency of Body Acceleration Jerk for standard       | 
|                                             | deviation of Z (per activity/subject)                          |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopemeanx                 | Average Frequency of Body Gyroscope for mean of X              |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopemeany                 | Average Frequency of Body Gyroscope for mean of Y              |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopemeanz                 | Average Frequency of Body Gyroscope for mean of Z              |
|                                             | (per activity/subject)                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopestdx                  | Average Frequency of Body Gyroscope for standard deviation     |
|                                             | of X  (per activity/subject)                                   |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopestdy                  | Average Frequency of Body Gyroscope for standard deviation     |
|                                             | of Y  (per activity/subject)                                   |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopestdz                  | Average Frequency of Body Gyroscope for standard deviation     |
|                                             | of Z  (per activity/subject)                                   |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationmagnitudemean      | Average Frequency of Mean Body Acceleration Magnitude          | 
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationmagnitudestd       | Average Frequency for the standard deviation of Body           |
|                                             | Acceleration Magnitude                                         |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationjerkmagnitudemean  | Average Frequency of Mean Body Acceleration Jerk Magnitude     | 
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodyaccelerationjerkmagnitudestd   | Average Frequency for the standard deviation of Body           |
|                                             | Acceleration Jerk Magnitude                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopemagnitudemean         | Average Frequency of Mean Body Gyroscope Magnitude             |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopemagnitudestd          | Average Frequency for the standard deviation of Body           |
|                                             | Gyroscope Magnitude                                            |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopejerkmagnitudemean     | Average Frequency of Mean Body Gyroscope Jerk Magnitude        |
| ------------------------------------------- | -------------------------------------------------------------- |
| frequencybodygyroscopejerkmagnitudestd      | Average Frequency for the standard deviation of Body           |
|                                             | Gyroscope Jerk Magnitude                                       |
| ------------------------------------------------------------------------------------------------------------ |
 
