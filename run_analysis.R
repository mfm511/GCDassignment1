## load data
features <- read.table("features.txt")
activitylabels <- read.table("activity_labels.txt")

xtest <- read.table("test//X_test.txt")
ytest <- read.table("test//y_test.txt")
subjecttest <- read.table("test//subject_test.txt")
xtrain <- read.table("train//X_train.txt")
ytrain <- read.table("train//y_train.txt")
subjecttrain <- read.table("train//subject_train.txt")

baccxtest <- read.table("test//Inertial Signals//body_acc_x_test.txt")
baccytest <- read.table("test//Inertial Signals//body_acc_y_test.txt")
baccztest <- read.table("test//Inertial Signals//body_acc_z_test.txt")
gyroxtest <- read.table("test//Inertial Signals//body_gyro_x_test.txt")
gyroytest <- read.table("test//Inertial Signals//body_gyro_y_test.txt")
gyroztest <- read.table("test//Inertial Signals//body_gyro_z_test.txt")
taccxtest <- read.table("test//Inertial Signals//total_acc_x_test.txt")
taccytest <- read.table("test//Inertial Signals//total_acc_y_test.txt")
taccztest <- read.table("test//Inertial Signals//total_acc_z_test.txt")

baccxtrain <- read.table("train//Inertial Signals//body_acc_x_train.txt")
baccytrain <- read.table("train//Inertial Signals//body_acc_y_train.txt")
baccztrain <- read.table("train//Inertial Signals//body_acc_z_train.txt")
gyroxtrain <- read.table("train//Inertial Signals//body_gyro_x_train.txt")
gyroytrain <- read.table("train//Inertial Signals//body_gyro_y_train.txt")
gyroztrain <- read.table("train//Inertial Signals//body_gyro_z_train.txt")
taccxtrain <- read.table("train//Inertial Signals//total_acc_x_train.txt")
taccytrain <- read.table("train//Inertial Signals//total_acc_y_train.txt")
taccztrain <- read.table("train//Inertial Signals//total_acc_z_train.txt")

## combine test and train data
baccx <- rbind(baccxtest, baccxtrain)
baccy <- rbind(baccytest, baccytrain)
baccz <- rbind(baccztest, baccztrain)
gyrox <- rbind(gyroxtest, gyroxtrain)
gyroy <- rbind(gyroytest, gyroytrain)
gyroz <- rbind(gyroztest, gyroztrain)
taccx <- rbind(taccxtest, taccxtrain)
taccy <- rbind(taccytest, taccytrain)
taccz <- rbind(taccztest, taccztrain)

x <- rbind(xtest,xtrain)
y <- rbind(ytest,ytrain)
subject <- rbind(subjecttest,subjecttrain)

## find which among the 561 objects has mean and std keywords

ims <- c(grep("mean()",features[,2]),grep("std()",features[,2]))
msfeatures <- features[ims,]

## Remove non-mean and non-std column then name the variables using the 
## descriptive name from the feature

x <- x[,msfeatures[,1]]
colnames(x) <- msfeatures[,2]

## Add three columns at the start of x - the ID, subject and activity
## Make sure that the plyr package is loaded

y <- cbind(id=1:nrow(y),y)       ## this will create a unique ID
y <- merge(y,activitylabels,by.x=2,by.y=1)
y <- arrange(y,id) 

x <- cbind(subject = subject,activity = y[,3],x)
x <- cbind(ID = interaction(x[,1],x[,2]),x)

## create the summary table

xt <- split(x[,4:82],x$ID)
xt <- sapply(split(x[,4:82],x$ID),colMeans)
xt <- t(xt)
xt <- cbind(ID=rownames(xt),xt)

as <- unique(x[,1:3])
as <- arrange(as,as[,1])
tmpxt <- cbind(xt[,1],as[,2:3])
xt <- cbind(tmpxt,xt[,2:ncol(xt)])

colnames(xt) <- c("ID","Subject","Activity",as.character(msfeatures[,2]))

## create a link between signal tables to the summary data
linktosignal <- x[,1]

baccx <- cbind(linktosignal, baccx)
baccy <- cbind(linktosignal, baccy)
baccz <- cbind(linktosignal, baccz)
gyrox <- cbind(linktosignal, gyrox)
gyroy <- cbind(linktosignal, gyroy)
gyroz <- cbind(linktosignal, gyroz)
taccx <- cbind(linktosignal, taccx)
taccy <- cbind(linktosignal, taccy)
taccz <- cbind(linktosignal, taccz)

## save the data set
dir.create("mydata")
dir.create("mydata//Inertial Signals")
write.table(xt,"mydata//summary.txt",row.name=FALSE)
write.table(baccx,"mydata//Inertial Signals//body_acc_x.txt",row.name=FALSE)
write.table(baccy,"mydata//Inertial Signals//body_acc_y.txt",row.name=FALSE)
write.table(baccz,"mydata//Inertial Signals//body_acc_z.txt",row.name=FALSE)
write.table(gyrox,"mydata//Inertial Signals//body_gyro_x.txt",row.name=FALSE)
write.table(gyroy,"mydata//Inertial Signals//body_gyro_y.txt",row.name=FALSE)
write.table(gyroz,"mydata//Inertial Signals//body_gyro_z.txt",row.name=FALSE)
write.table(taccx,"mydata//Inertial Signals//total_acc_x.txt",row.name=FALSE)
write.table(taccy,"mydata//Inertial Signals//total_acc_y.txt",row.name=FALSE)
write.table(taccz,"mydata//Inertial Signals//total_acc_z.txt",row.name=FALSE)

## Saving the data