library(dplyr)

#******************************* Verify/Create File directory **************************************#

# Creates "Project" directory in current working directory if none exists
if(!file.exists("Project")){
  dir.create("Project")
}

#******************************* Download/Extract Data *********************************************#

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "./Project/data.zip")
unzip("./Project/data.zip", exdir = "./Project")

#********************************** Read Data ******************************************************#

#test data
test.data <- read.table("./Project/UCI HAR Dataset/test/X_test.txt")
test.subjects <- read.table("./Project/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
test.activity <- read.table("./Project/UCI HAR Dataset/test/y_test.txt", col.names = "activity")

#train data
train.data<- read.table("./Project/UCI HAR Dataset/train/X_train.txt")
train.subjects<- read.table("./Project/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
train.activity<- read.table("./Project/UCI HAR Dataset/train/y_train.txt", col.names = "activity")

#feature data
features <- read.table("./Project/UCI HAR Dataset/features.txt")

#************************* Prepair data for merge ***************************************************#

#convert activity to factor with labels for both data sets
train.activity <-factor(train.activity$activity, levels = 1:6, labels = c("walking", "walking upstairs",
                                                                           "walking downstairs", "sitting",
                                                                           "standing", "laying"))
test.activity <-factor(test.activity$activity, levels = 1:6, labels = c("walking", "walking upstairs",
                                                                         "walking downstairs", "sitting",
                                                                         "standing", "laying"))

# Isolate feature names from features data set and transpose data to fit wide format
features <-select(features, V2)
features<-t(features)

# Assign feature names to colums in both data sets
colnames(test.data) <- features 
colnames(train.data) <- features 

# Combine main data with subject and activity columns
test.merge <- cbind(test.activity, test.subjects, test.data)
train.merge <- cbind(train.activity, train.subjects, train.data)

# Subset data to include only variables with mean() or std() values
test.merge <- test.merge[, grepl("std()",colnames(test.merge)) |grepl("mean[(][)]",colnames(test.merge))
                         |grepl("activity",colnames(test.merge))|grepl("subject",colnames(test.merge))]
train.merge <- train.merge[, grepl("std()",colnames(train.merge)) |grepl("mean[(][)]",colnames(train.merge))
                           |grepl("activity",colnames(train.merge))|grepl("subject",colnames(train.merge))]

# Rename activity columns to allow merge
test.merge <- rename(test.merge, activity = test.activity)
train.merge <- rename(train.merge, activity = train.activity)

#******************************  Merge Test and Train Data sets **************************************#

merged.data <- rbind(train.merge, test.merge)

#****************************** Rename Variables *****************************************************#

# Rename variables for easier interpretation
names(tidy.data) <- gsub("^t", "Time", names(tidy.data))
names(tidy.data) <- gsub("^f", "Frequency", names(tidy.data))
names(tidy.data) <- gsub("-", "", names(tidy.data))
names(tidy.data) <- gsub("mean[(][)]", "Mean", names(tidy.data))
names(tidy.data) <- gsub("Std[(][)]", "Std", names(tidy.data))

#****************************** Compile Tidy Data ****************************************************#

# Use chained dplyr commands to create summarized, tidied data set
tidy.data <- merged.data %>% group_by(subject, activity) %>% summarize_all(mean)

#**************************** Write table to File ****************************************************#

write.table(tidy.data, "./Project/tidydata.txt", row.names = FALSE)


