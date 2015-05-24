library(plyr)
        
#Preparing files
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt" , stringsAsFactors=FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
        
#1. merging test and train data
test_data <- cbind(subject_test, Y_test, X_test )
train_data <- cbind(subject_train, Y_train, X_train )
combined_data <- rbind(test_data, train_data)
        
        #Heading for all columns
        #Using rbind to add "Subject" and "Activityid" to features for complete heading 
        sensor_labels <- rbind(c(1, "Subject"), rbind(c(2, "ActivityId"), features))[,2]
        names(combined_data) <- sensor_labels # label data

#2.Extract mean and std deviation for each measurement
sensordata_mean_std <- combined_data[,grepl("Subject|ActivityId|mean|std", names(combined_data))]

#3.Uses descriptive activity names to name the activities in the data set
names(activity_labels) <- c("ActivityId", "Activity")
sensordata_mean_std <- join(sensordata_mean_std, activity_labels, by = "ActivityId", match = "first")
sensordata_mean_std <- sensordata_mean_std[,-1]

# 4. Labels the data set with descriptive names.
        # Make syntactically valid names
        names(sensordata_mean_std) <- make.names(names(sensordata_mean_std))
        #Replace names with words in full
        names(sensordata_mean_std) <- gsub("^t", "TimeDomain.", names(sensordata_mean_std))
        names(sensordata_mean_std) <- gsub("^f", "FrequencyDomain.", names(sensordata_mean_std))
        names(sensordata_mean_std) <- gsub("Acc", ".Acceleration.", names(sensordata_mean_std))
        names(sensordata_mean_std) <- gsub("Gyro", ".AngularVelocity.", names(sensordata_mean_std))
        names(sensordata_mean_std) <- gsub('Mag',"Magnitude.",names(sensordata_mean_std))
        names(sensordata_mean_std) <- gsub('\\.mean',"Mean.",names(sensordata_mean_std))
        names(sensordata_mean_std) <- gsub('\\.std',".StandardDeviation",names(sensordata_mean_std))
        names(sensordata_mean_std) <- gsub('Freq\\.',"Frequency.",names(sensordata_mean_std))
        names(sensordata_mean_std) <- gsub('Freq$',"Frequency",names(sensordata_mean_std))

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidydata = ddply(sensordata_mean_std, c("Subject","Activity"), numcolwise(mean))
write.table(tidydata, file = "sensoravg_tidydata.txt", row.name=FALSE)


