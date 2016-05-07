setwd("~/Desktop/Learn_R/cleandata/data/UHD")
var <- read.table("./features.txt")
var <- var[,2]
xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/y_test.txt")
subtest <- read.table("./test/subject_test.txt")
testdata <-  data.frame (xtest)
colnames(testdata) <- var
testdata$activity <- ytest$V1
testdata$subject <- subtest$V1
xtrain <- read.table("./train/X_train.txt")
ytrain <- read.table("./train/y_train.txt")
subtrain <- read.table("./train/subject_train.txt")
traindata <- data.frame (xtrain)
colnames(traindata) <- var
traindata$activity <- ytrain$V1
traindata$subject <- subtrain$V1
data <- rbind(testdata,traindata)
cleandata <- data[,grep("mean|std|activity|subject",names(data))]
cleandata <- cleandata[,-grep("meanFreq",names(cleandata))]
cleandata$activity[cleandata$activity==1] <- "WALKING"
cleandata$activity[cleandata$activity==2] <- "WALKING_UPSTAIRS"
cleandata$activity[cleandata$activity==3] <- "WALKING_DOWNSTAIR"
cleandata$activity[cleandata$activity==4] <- "SITTING"
cleandata$activity[cleandata$activity==5] <- "STANDING"
cleandata$activity[cleandata$activity==6] <- "LAYING"
datanew <- aggregate( cleandata[,1:66], cleandata[,67:68], FUN = mean)
write.table(cleandata, file="cleandata.txt")
write.table(datanew, file = "newdata.txt")

