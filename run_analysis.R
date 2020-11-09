
# A. MERGING TRAINING AND TEST DATA SETS ---------------------------------------
  library(data.table)
  library(dplyr)
#1.Download data, make sure to record when the data was downloaded.
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL,destfile = './data/data_project.zip')
  unzip('./data/data_project.zip',exdir = "./data")
  date_of_download <- date()
#2. Read features.txt into a table
  features<-read.table("./data/UCI HAR Dataset/features.txt",col.names = c('FeatureIndex','Features'))

#3. Read activity labels into a table
  activity<-read.table("./data/UCI HAR Dataset/activity_labels.txt",col.names = c('ActivityIndex','Activity'))

#4. Read Test data files into tables and then combine  into one table.
  X_test<-read.table("./data/UCI HAR Dataset/test/X_test.txt",col.names = features$Features,check.names = F) #metrics  
  Y_test<-read.table("./data/UCI HAR Dataset/test/Y_test.txt",col.names = c('ActivityIndex'))  #activity
  subject_test<-read.table("./data/UCI HAR Dataset/test/subject_test.txt",col.names = c('Subject'))  #subjects
  dataType<-rep('test',NROW(X_test)) #identifying test data
  Merge_test<-cbind(Y_test,subject_test,X_test,dataType) #combine all columns.
  
 

#5. Read Training data files into tables and then combine  into one table.
  X_train<-read.table("./data/UCI HAR Dataset/train/X_train.txt",col.names = features$Features,check.names = F)  
  Y_train<-read.table("./data/UCI HAR Dataset/train/Y_train.txt",col.names = c('ActivityIndex'))  
  subject_train<-read.table("./data/UCI HAR Dataset/train/subject_train.txt",col.names = c('Subject')) 
  dataType<-rep('train',NROW(X_train)) 
  Merge_train<-cbind(Y_train,subject_train,X_train,dataType) #combine all columns.
  
#6. Merge training and test data
  Combined<-rbind(Merge_test,Merge_train)

#B. EXTRACT MEAN AND STD DEV FOR EACH MEASUREMENT -----------------------------

  col_other<-grep("Activity|Subject",names(Combined),ignore.case = T)
  col_measures<-grep("(mean|std)\\(\\)",names(Combined),ignore.case = T)
  Measurements<-Combined[,c(col_other,col_measures)]

#C USING DESCRIPTIVE ACTIVITY NAMES -----------------------------
  Measurements<-merge(Measurements,activity,by.x = "ActivityIndex",by.y = "ActivityIndex")
  
#D DESCRIPTIVE VARIABLE NAMES -----------------------------
# Based on description provided in features_info.txt
  col_names <- colnames(Measurements)

  col_names <- sub(x = col_names,pattern = '^t',replacement = 'Time domain signal: ')
  col_names <- sub(x = col_names,pattern = '^f',replacement = 'Frequency domain signal: ')
  col_names <- sub(x = col_names,pattern = '-',replacement = ', ')
  col_names <- sub(x = col_names,pattern = 'mean\\(\\)',replacement = ' mean value ')
  col_names <- sub(x = col_names,pattern = 'std\\(\\)',replacement = ' standard deviation ')
  col_names <- sub(x = col_names,pattern = '-X',replacement = 'in X direction')
  col_names <- sub(x = col_names,pattern = '-Y',replacement = 'in Y direction')
  col_names <- sub(x = col_names,pattern = '-Z',replacement = 'in Z direction')
  col_names <- sub(x = col_names,pattern = 'AccJerk',replacement = ' acceleration jerk')
  col_names <- sub(x = col_names,pattern = 'Acc',replacement = ' acceleration')
  col_names <- sub(x = col_names,pattern = 'GyroJerk',replacement = ' angular velocity jerk')
  col_names <- sub(x = col_names,pattern = 'Gyro',replacement = ' angular velocity')
  col_names <- sub(x = col_names,pattern = 'Mag',replacement = ' magnitude')
  col_names <- sub(x = col_names,pattern = 'BodyBody',replacement = 'Body ')
  
  colnames(Measurements) <- col_names

#E TIDY DATASET  -----------------------------
#tidy data set with the average of each variable for each activity and each subject

  tidy <- Measurements %>% 
    group_by(Activity,Subject) %>% 
    summarise_each(funs(mean))
  write.table(tidy, file = "TidyData.csv", sep=",",row.names = FALSE)


