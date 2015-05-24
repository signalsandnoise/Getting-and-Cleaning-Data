Overview:
=========
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors

Data for this project were obtain from:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Aim:
====
The aim of this project is to produce a tidy data set from the original data set obtain from the link above.

This project includes the following files:
=========================================
- 'README.md'
- 'Codebook.md' : Shows information about the variables used in the tidy data  
- 'Run_analysis.R' : Code for running the analysis to obatain the tidy data

Steps taken to produce independent tidy data set 
==================================================
The following steps were taken to produce the independent tidy data set with the average of each variable for each activity and each subject: 

  1. Merge the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Rename the activities in the data set with descriptive activity names 
  4. Label data set with with descriptive variable names. 
  5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

# Details of the code can be found in run_analysis.R

N.B. The final product data set is tidy as each column is a variable and each row is an observation corresponding to the subject and activity. Lastly each type of observational unit, the subject or activity forms a table. 

Details of the original dataset are listed below
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  See 'Codebook.md' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 81-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes: 
======
- Features are normalized and bounded within [-1,1].
