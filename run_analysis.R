#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Unzip the files and set working directory "UCI HAR Dataset"

library(plyr)
library(dplyr)
library(reshape2)

#read Activity files
ActivityTest<-read.table("./test/Y_test.txt")
ActivityTrain<-read.table("./train/Y_train.txt")
#read Subject files
SubjectTest<-read.table("./test/subject_test.txt")
SubjectTrain<-read.table("./train/subject_train.txt")
#read Features files
FeaturesTest<-read.table("./test/X_test.txt")
FeaturesTrain<-read.table("./train/X_train.txt")
#Merge Train&Test and rename the columns
Activity<-rbind(ActivityTrain,ActivityTest)
names(Activity)<-c("activity")

Subject<-rbind(SubjectTrain,SubjectTest)
names(Subject)<-c("subject")

Features<-rbind(FeaturesTrain,FeaturesTest)
FeaturesNames<-read.table("features.txt")
names(Features)<-FeaturesNames$V2

data<-cbind(Features,Subject,Activity)

#Extracts only the measurements on the mean and standard deviation
#for each measurement
index<-c(grep("[Mm]ean\\()|[Ss]td\\()",FeaturesNames$V2),562,563)
data<-data[,index]

#Uses descriptive activity names to name the activities in the data set
activityNames<-read.table("activity_labels.txt")
data$activity=factor(data$activity,labels=activityNames$V2)

#Appropriately labels the data set with descriptive variable names
names(data)<-gsub("^t","time",names(data))
names(data)<-gsub("^f","frequency",names(data))
names(data)<-gsub("Acc","Accelerometer",names(data))
names(data)<-gsub("Gyro","Gyroscope",names(data))
names(data)<-gsub("Mag","Magnitude",names(data))
names(data)<-gsub("-","_",names(data))
names(data)<-gsub("\\()","",names(data))

#From the data set in step 4, creates a second, independent tidy data 
#set with the average of each variable for each activity and each subject.

dmelt<-melt(data,id.vars=c("subject","activity"))
newdata<-dcast(dmelt,subject+activity~variable,mean)

write.table(newdata,file="newdata.txt",col.names=T)

