# Getting-and-Cleaing-Data-Project
## Criteria
***
> 1. Merges the training and the test sets to create one data set.  
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
> 3. Uses descriptive activity names to name activities in the data set
> 4. Appropriately labels the data set with descriptive variable names.  
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

## Analysis Script
***
1. The script checks for "Project"" directory in current working directory and creates one if none exists    
2. The script downloads and extracts the data into the "Project"" directory 
3. The script reads the test and train data sets into appropriate data frames   
4. The script prepares the test and train data sets for a merge  
    i) Converts Activity data for both data sets to a factor variable and assigns appropriate labels  
    ii) Assigns "features" data to column names of both data sets  
    iii) Subsets the data to include ONLY features with mean() or std()  
5. The script merges the prepared data sets  
6. The script renames the variables using regular expressions for clearer interpretation 
7. The script groups the merged data by subject and activity, and summarizes by the mean using dplyr functions
8. The script outputs the tidy data to the "Project" directory in a text file called "tidydata"

