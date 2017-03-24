---
title: Codebook
author: Duncan Munslow
date: March 24, 2017
output: html_document
---


## Variables
***
* subject  
    + Subject Code 
        + *integer:* 1-30
  
* activity       
    + Activity type  
        + walking  
        + walking upstairs  
        + walking downstairs  
        + sitting   
        + standing  
        + laying  
        
##### Features

* TimeBodyAcc[X,Y,Z]  
    + Time Body Acceleration Measurement for X, Y and Z axis   
        + TimeBodyAccMean[X,Y,Z]  
        + TimeBodyAccStd[X,Y,Z]  
* TimeGravityAcc[X,Y,Z]  
    + Time Gravity Acceleration Measurement for X, Y and Z axis  
        + TimeGravityAccMean[X,Y,Z]  
        + TimeGravityAccStd[X,Y,Z]  
* TimeBodyAccJerk[X,Y,Z]    
    + Time Body Acceleration Jerk Measurement for X, Y and Z axis  
        + TimeBodyAccJerkMean[X,Y,Z]  
        + TimeBodyAccJerkStd[X,Y,Z]  
* TimeBodyGyro[X,Y,Z]  
    + Time Body Gyroscope Measurement for X, Y and Z axis  
        + TimeBodyGyroMean[X,Y,Z]  
        + TimeBodyGyroStd[X,Y,Z]  
* TimeBodyGyroJerk[X,Y,Z]
    + Time Body Gyroscope Measurement for X, Y and Z axis
        + TimeBodyGyroJerkMean[X,Y,Z]  
        + TimeBodyGyroJerkStd[X,Y,Z]  
* TimeBodyAccMag  
    + Time Body Mag measurement  
        + TimeBodyAccMagMean  
        + TimeBodyAccMagStd  
* TimeGravityAccMag  
    + Time Gravity Acceleration Mag measurement  
        + TimeGravityAccMagMean   
        + TimeGravityAccMagStd  
* TimeBodyAccJerkMag  
    + Time Body Acceleration Jerk Mag measurement  
        + TimeBodyAccJerkMagMean  
        + TimeBodyAccJerkMagStd  
* TimeBodyGyroMag  
    + Time Body Gyroscope Mag measurement  
        + TimeBodyGyroMagMean  
        + TimeBodyGyroMagStd  
* TimeBodyGyroJerkMag  
    + Time Body Gryoscope Jerk Mag Measurement 
        + TimeBodyGyroJerkMagMean  
        + TimeBodyGyroJerkMagStd  
* FrequencyBodyAcc[X,Y,Z]  
    + Frequency Body Acceleration measurement for X, Y and Z axis  
        + FrequencyBodyAccMean[X,Y,Z]   
        + FrequencyBodyAccStd[X,Y,Z]   
* FrequencyBodyAccJerk[X,Y,Z]  
    + Frequency Body Acceleration Jerk measurement for X, Y and Z axis  
        + FrequencyBodyAccJerkMean[X,Y,Z]  
        + FrequencyBodyAccJerkStd[X,Y,Z]  
* FrequencyBodyGyro[X,Y,Z]
    + Frequency Body Gyroscope measurement for X, Y and Z axis
        + FrequencyBodyGyroMean[X,Y,Z]  
        + FrequencyBodyGyroStd[X,Y,Z]  
* FrequencyBodyAccMag  
    + Frequency Body Acceleration Mag Measurement  
        + FrequencyBodyAccMagMean  
        + FrequencyBodyAccMagStd  
* FrequencyBodyAccJerkMag   
    + Frequency Body Acceleration Jerk Mag Measurement  
        + FrequencyBodyAccJerkMagMean  
        + FrequencyBodyAccJerkMagStd  
* FrequencyBodyGyroMag  
    + Frequency Body Acceleration Gyroscope Mag Measurement  
        + FrequencyBodyGyroMagMean  
        + FrequencyBodyGyroMagStd  
* FrequencyBodyGyroJerkMag  
     + Frequency Body Gyroscope Jerk Mag Measurement  
        + FrequencyBodyGyroJerkMagMean   
        + FrequencyBodyGyroJerkMagStd  

