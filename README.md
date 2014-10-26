####DataScienceCoursera_CleaningDataProj
====================================
# Getting and Cleaning Data
## Using the Human Activity Recognition Using Smartphones Dataset
### Version 1.0

==================================================================
## Background information
The original datasets and information are
Located here:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Original Experiment and Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing
a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial 
linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded 
to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the 
volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which 
has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration 
and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time 
and frequency domain.

Original data provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Check the README.txt file for further details about this dataset. 
========================================================================================

## For this exercise:
### There is a script available:

#### run_analysis.R 
(R version 3.1.1 64 bit)

#### Requires the follwing packages to be installed:
plyr
data.table

Created by:  LBettencourt 10/25/2014

#### This script does the following:
1.  Reads in the following datasets from the HAR Smartphones data respository:
    x_test.txt:  contains subject test results data
    y_test.txt:  contains  test data activity codes
    subject_test.txt: contains test subject IDs
    x_train.txt:  contains subject training data
    y_train.txt:  contains  training data activity codes
    subject_train.txt: contains training subject IDs
2.  Combines subject, activity, and results data for both test and training subjects
3.  Combines test and training data to form one dataset
4.  Reads in column descriptions from the following file:
    features.txt
5.  Subsets features file to only labels for mean() and std() and tidies up the names
6.  Uses features file to subset main dataset and to rename columns to "tidy" names
7.  Reads in the activity descriptions from activity_labels.txt
8.  Merges the main dataset with activity labels
9.	From the main dataset, creates a second, independent tidy data set with the average of each variable for each 
    activity and each subject.

###  The tidy dataset produced is available here:

###  A codebook describing the dataset is here





======================================================================================================================
Acknowledgement to:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
Use of the original dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
