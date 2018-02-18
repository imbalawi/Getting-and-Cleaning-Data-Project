# Code Book
This code book summarizes variables from `tidy_data.csv` and other labels involved.
It describes variables from the `run_analysis.R`

## Preliminaries
* data was fetched from:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* some packages needed include `library(utils)`, `library(data.table)`, and `library(stats)`

## Script Variables
Script `run_analysis.R` includes variables:
* data variable `features`,`subj.train`,`act.train`,`x.train`,`subj.test`,`act.test`,`x.test`
* aggregated variable `dat.train`, `dat.test`
* merged variable `subj.all`,`subj.all2`,`act.lab`,`subj.all3`
* output variable `tiny.data` (initial output),`tiny.data.2` (final output)

## Identifiers
Important columns include

Column Header     | Description
--------------------|------------
`subject`           | ID of subject
`actnumber`      | ID of activity
`actname`     | Label of activity

## tiny_data variable

Variable name   |
--------------------------------------
* "activity"                                         
* "subject"                                          
* "TimeBodyAccelerometer_Mean()_X"                   
* "TimeBodyAccelerometer_Mean()_Y"                   
* "TimeBodyAccelerometer_Mean()_Z"                   
* "TimeBodyAccelerometer_StDev()_X"                  
* "TimeBodyAccelerometer_StDev()_Y"                  
* "TimeBodyAccelerometer_StDev()_Z"                  
* "TimeGravityAccelerometer_Mean()_X"                
* "TimeGravityAccelerometer_Mean()_Y"                
* "TimeGravityAccelerometer_Mean()_Z"                
* "TimeGravityAccelerometer_StDev()_X"               
* "TimeGravityAccelerometer_StDev()_Y"               
* "TimeGravityAccelerometer_StDev()_Z"               
* "TimeBodyAccelerometerJerk_Mean()_X"               
* "TimeBodyAccelerometerJerk_Mean()_Y"               
* "TimeBodyAccelerometerJerk_Mean()_Z"               
* "TimeBodyAccelerometerJerk_StDev()_X"              
* "TimeBodyAccelerometerJerk_StDev()_Y"              
* "TimeBodyAccelerometerJerk_StDev()_Z"              
* "TimeBodyGyroscope_Mean()_X"                       
* "TimeBodyGyroscope_Mean()_Y"                       
* "TimeBodyGyroscope_Mean()_Z"                       
* "TimeBodyGyroscope_StDev()_X"                      
* "TimeBodyGyroscope_StDev()_Y"                      
* "TimeBodyGyroscope_StDev()_Z"                      
* "TimeBodyGyroscopeJerk_Mean()_X"                   
* "TimeBodyGyroscopeJerk_Mean()_Y"                   
* "TimeBodyGyroscopeJerk_Mean()_Z"                   
* "TimeBodyGyroscopeJerk_StDev()_X"                  
* "TimeBodyGyroscopeJerk_StDev()_Y"                  
* "TimeBodyGyroscopeJerk_StDev()_Z"                  
* "TimeBodyAccelerometerMagnitude_Mean()"            
* "TimeBodyAccelerometerMagnitude_StDev()"           
* "TimeGravityAccelerometerMagnitude_Mean()"         
* TimeGravityAccelerometerMagnitude_StDev()"        
* "TimeBodyAccelerometerJerkMagnitude_Mean()"        
* "TimeBodyAccelerometerJerkMagnitude_StDev()"       
* "TimeBodyGyroscopeMagnitude_Mean()"                
* "TimeBodyGyroscopeMagnitude_StDev()"               
* TimeBodyGyroscopeJerkMagnitude_Mean()"            
* "TimeBodyGyroscopeJerkMagnitude_StDev()"           
* "FreqBodyAccelerometer_Mean()_X"                   
* "FreqBodyAccelerometer_Mean()_Y"                   
* "FreqBodyAccelerometer_Mean()_Z"                   
* "FreqBodyAccelerometer_StDev()_X"                  
* "FreqBodyAccelerometer_StDev()_Y"                  
* "FreqBodyAccelerometer_StDev()_Z"                  
* FreqBodyAccelerometer_MeanFreq()_X"               
* "FreqBodyAccelerometer_MeanFreq()_Y"               
* "FreqBodyAccelerometer_MeanFreq()_Z"               
* "FreqBodyAccelerometerJerk_Mean()_X"               
* "FreqBodyAccelerometerJerk_Mean()_Y"               
* "FreqBodyAccelerometerJerk_Mean()_Z"               
* "FreqBodyAccelerometerJerk_StDev()_X"              
* "FreqBodyAccelerometerJerk_StDev()_Y"              
* "FreqBodyAccelerometerJerk_StDev()_Z"              
* "FreqBodyAccelerometerJerk_MeanFreq()_X"           
* "FreqBodyAccelerometerJerk_MeanFreq()_Y"           
* "FreqBodyAccelerometerJerk_MeanFreq()_Z"           
* "FreqBodyGyroscope_Mean()_X"                       
* "FreqBodyGyroscope_Mean()_Y"                       
* "FreqBodyGyroscope_Mean()_Z"                       
* "FreqBodyGyroscope_StDev()_X"                      
* "FreqBodyGyroscope_StDev()_Y"                      
* "FreqBodyGyroscope_StDev()_Z"                      
* "FreqBodyGyroscope_MeanFreq()_X"                   
* "FreqBodyGyroscope_MeanFreq()_Y"                   
* "FreqBodyGyroscope_MeanFreq()_Z"                   
* "FreqBodyAccelerometerMagnitude_Mean()"            
* "FreqBodyAccelerometerMagnitude_StDev()"           
* "FreqBodyAccelerometerMagnitude_MeanFreq()"        
* "FreqBodyBodyAccelerometerJerkMagnitude_Mean()"    
* "FreqBodyBodyAccelerometerJerkMagnitude_StDev()"   
* "FreqBodyBodyAccelerometerJerkMagnitude_MeanFreq()"
* "FreqBodyBodyGyroscopeMagnitude_Mean()"            
* "FreqBodyBodyGyroscopeMagnitude_StDev()"           
* "FreqBodyBodyGyroscopeMagnitude_MeanFreq()"        
* "FreqBodyBodyGyroscopeJerkMagnitude_Mean()"        
* "FreqBodyBodyGyroscopeJerkMagnitude_StDev()"       
* "FreqBodyBodyGyroscopeJerkMagnitude_MeanFreq()"
