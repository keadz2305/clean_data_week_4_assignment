#Clean-data-Wk-4-Assignment


setwd("~/Desktop/Learn_R/cleandata/data/UHD") sets working directory to the unzip dataset

var <- read.table("./features.txt") imports all the complete list of variables as a data frame

var <- var[,2] select the column with the variable names as a vector

xtest <- read.table("./test/X_test.txt") imports test observations

ytest <- read.table("./test/y_test.txt") imports test activity ids

subtest <- read.table("./test/subject_test.txt") imports test subject ids

testdata <- data.frame (xtest) create a dataframe for re-shaping test dataset

colnames(testdata) <- var assigns the variable vector as column names for the test dataset

testdata$activity <- ytest$V1 appends the test activity column to the test dataset

testdata$subject <- subtest$V1 appends subject id column to the test dataset

xtrain <- read.table("./train/X_train.txt") imports train observations

ytrain <- read.table("./train/y_train.txt") imports train activity ids

subtrain <- read.table("./train/subject_train.txt") imports train subject ids

traindata <- data.frame (xtrain) create a dataframe for re-shaping train dataset

colnames(traindata) <- var assigns the variable vector as column names to the train dataset

traindata$activity <- ytrain$V1 appends the train activity id column to the train dataset

traindata$subject <- subtrain$V1 appends the train subject id column to the train dataset

data <- rbind(testdata,traindata) combines the test and train dataset as 1 data frame

cleandata <- data[,grep("mean|std|activity|subject",names(data))] filter the columns that has mean, std, activity id and subject id

cleandata <- cleandata[,-grep("meanFreq",names(cleandata))] remove meanFreq columns that were not filter out

cleandata$activity[cleandata$activity==1] <- "WALKING" replace activity with id = 1 with activity name

cleandata$activity[cleandata$activity==2] <- "WALKING_UPSTAIRS" replace activity with id = 2 with activity name

cleandata$activity[cleandata$activity==3] <- "WALKING_DOWNSTAIR" replace activity with id = 3 with activity name

cleandata$activity[cleandata$activity==4] <- "SITTING" replace activity with id = 4 with activity name

cleandata$activity[cleandata$activity==5] <- "STANDING" replace activity with id = 5 with activity name

cleandata$activity[cleandata$activity==6] <- "LAYING" replace activity with id = 6 with activity name

datanew <- aggregate( cleandata[,1:66], cleandata[,67:68], FUN = mean) summarize dataset with averages of each variable groups by activity and subject ids