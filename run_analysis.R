library(utils)
library(data.table)
library(stats)
library(knitr)
library(markdown)

#getting the data
url =  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists(".\UCIHARData.zip"))
{
    download.file(url,destfile = ".\UCIHARData.zip",mode="wb")
    unzip("UCI HAR Dataset.zip",exdir=getwd())
}

path=getwd()
uci=file.path(path,"UCI HAR Dataset")

#reading data
features <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')
features <- as.character(features[,2])

subj.train = read.csv('./UCI HAR Dataset/train/subject_train.txt',header = FALSE, sep = ' ')
act.train = read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
x.train = read.table('./UCI HAR Dataset/train/X_train.txt')

subj.test = read.csv('./UCI HAR Dataset/test/subject_test.txt',header = FALSE, sep = ' ')
act.test = read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE, sep = ' ')
x.test = read.table('./UCI HAR Dataset/test/X_test.txt')


dat.train =  data.frame(subj.train, act.train, x.train)
names(dat.train) = c(c('subject', 'activity'), features)
dat.test =  data.frame(subj.test, act.test, x.test)
names(dat.test) = c(c('subject', 'activity'), features)

#merging tables from test and train
subj.all=rbind(dat.train,dat.test)

##Exctracting mean or standard dev measurement
feat.mean_std = grep("mean|std",features)
subj.all2=subj.all[,c(1,2,feat.mean_std+2)]

##activity_labels.txt is used for descriptive names
act.lab=fread(file.path(uci, "activity_labels.txt"))
names(act.lab)=c("actnumber","actname")
subj.all3=merge(subj.all2,act.lab,by.x="activity",by.y="actnumber",all.x=TRUE) #merging based on activity number and activity

##renaming names from data set with labels
name = names(subj.all3)
name = gsub("-","_",name)
name = gsub("^t","Time",name)
name = gsub("^f","Freq",name)
name = gsub("Acc","Accelerometer",name)
name = gsub("Gyro","Gyroscope",name)
name = gsub("Body","Body",name)
name = gsub("Gravity","Gravity",name)
name = gsub("mean","Mean",name)
name = gsub("std","StDev",name)
name = gsub("Mag","Magnitude",name)
name

##creating tidy data
tidy.data <- aggregate(subj.all3[,3:81], by = list(activity = subj.all2$activity, subject = subj.all2$subject),FUN = mean)
tidy.data.2=merge(tidy.data,act.lab,by.x="activity",by.y="actnumber",all.x=TRUE)
tidy.data.2=tidy.data.2[,c(1,82,2,3,4:ncol(tidy.data.2))]
tidy.data.2=tidy.data.2[,1:82]

##creating .txt file
write.table(x = tidy.data.2, file = "tidy_data.txt", row.names = FALSE)

