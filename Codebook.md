Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Variables for feature Vector
============================
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
tBodyAcc-XYZ     : TimeDomain.Body.Acceleration-XYZ

tGravityAcc-XYZ  : TimeDomain.Gravity.Acceleration-XYZ

tBodyAccJerk-XYZ : TimeDomain.Body.Acceleration.Jerk-XYZ

tBodyGyro-XYZ	   : TimeDomain.Body.AngularVelocity-XYZ

tBodyGyroJerk-XYZ: TimeDomain.Body.AngularVelocity.Jerk-XYZ

tBodyAccMag      : TimeDomain.Body.Acceleration.Magnitude

tGravityAccMag   : TimeDomain.Gravity.Acceleration.Magnitude

tBodyAccJerkMag  : TimeDomain.Body.Acceleration.JerkMagnitude

tBodyGyroMag     : TimeDomain.Body.AngularVelocity.Magnitude

tBodyGyroJerkMag : TimeDomain.Body.AngularVelocity.JerkMagnitude

fBodyAcc-XYZ     : FrequencyDomain.Body.Acceleration-XYZ

fBodyAccJerk-XYZ : FrequencyDomain.Body.Acceleration.Jerk-XYZ

fBodyGyro-XYZ    : FrequencyDomain.Body.AngularVelocity-XYZ

fBodyAccJerkMag  : FrequencyDomain.Body.Acceleration.Magnitude

fBodyAccJerkMag  : FrequencyDomain.BodyBody.Acceleration.JerkMagnitude

fBodyGyroMag     : FrequencyDomain.BodyBody.AngularVelocity.Magnitude

fBodyGyroJerkMag : FrequencyDomain.BodyBody.AngularVelocity.JerkMagnitude

The set of variables that were estimated from these signals are: 
mean(): Mean value

std(): Standard deviation

meanFreq(): Weighted average of the frequency components to obtain a mean frequency


