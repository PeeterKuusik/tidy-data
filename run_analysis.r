
# remove clutter from WD and test for data 
rm(list = ls())
getwd()
g=list.files()
if("UCI HAR Dataset" %in% g){
  print("continue")
} else {"Put UCI HAR Dataset folder into working directory"}

setwd("./UCI HAR Dataset")

"1. Merges the training and the test sets to create one data set."
# read data
features= read.table("features.txt", col.names=c('id', 'name'), stringsAsFactors=FALSE)
activity_labels= read.table("activity_labels.txt", col.names=c('id', 'Activity'), stringsAsFactors=FALSE)

#get testset data
location=getwd()
setwd("./test")
testset = cbind(z=read.table("subject_test.txt", col.names="Subject"),
                         y=read.table("y_test.txt", col.names="Activity.ID"),
                         x=read.table("x_test.txt"))
#get trainset data
setwd(location)
setwd("./train")
trainset = cbind(z=read.table("subject_train.txt", col.names="Subject"),
                y=read.table("y_train.txt", col.names="Activity.ID"),
                x=read.table("x_train.txt"))

setwd(location)
datasetOK=rbind(testset,trainset)
rm(testset,trainset)

"2. Extracts only the measurements on the mean and standard deviation for each measurement. "
dataset2 =datasetOK[,c(1, 2, grep("mean\\(|std\\(", features$name) + 2)]

"4. Appropriately labels the data set with descriptive variable names"
namesOK2=c(grep("mean\\(|std\\(", features$name))
names(dataset2) = c("Subject","Activity.ID",features[namesOK2,2])

"3. Uses descriptive activity names to name the activities in the data set"
dataset2= merge(dataset2,activity_labels, by.x="Activity.ID", by.y="id")
dataset2=dataset2[,c(2,1,69,3:68)]

"5. From the data set in step 4, creates a second, independent tidy data set
with the average of each variable for each activity and each subject."
z= names(dataset2)
dataset2$Subject =as.factor(dataset2$Subject)                  
dataset2$Activity = as.factor(dataset2$Activity)
#collapse data by subject and activity
a= aggregate(dataset2, by=list(dataset2$Subject,dataset2$Activity),FUN=mean)
a=a[,c(1,2,3,6:71)]
names(a)<- z
#write a fail
write.csv(dataset2, file = "dataset2.txt",row.names = FALSE)
write.csv(a, file = "a.txt",row.names = FALSE)

"End of line"