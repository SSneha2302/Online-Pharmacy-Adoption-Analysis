library(readxl)
FRESS_AVG <- read_excel("C:/Users/sneha/Desktop/RESEARCH PROJECT/FRESS AVG.xlsx")
View(FRESS_AVG)

u <- read_excel("C:/Users/Shobi Prasad/Desktop/Research-avg.xlsx")
View(u)
library(caTools)
su <- sample(1:nrow(FRESS_AVG),nrow(FRESS_AVG)*0.8,replace=F)
trs <- FRESS_AVG[su,
tes <- FRESS_AVG[-su,]
dim(trs)
library(rpart)
dtu <- rpart(trs$`what do you think about online-pharmacy?`~.,trs,method="class")
dtu
library(rpart.plot)
rpart.plot(dtu)
pu <- predict(dtu,tes,type="class")
pu
library(caret)
vs <- table(tes$`what do you think about online-pharmacy?`,pu)
vs
confusionMatrix(vs)




library(readxl)
 FRESS_AVG <- read_excel("C:/Users/sneha/Desktop/RESEARCH PROJECT/FRESS AVG.xlsx")
 View(FRESS_AVG)
 library(caTools)
 su <- sample(1:nrow(FRESS_AVG),nrow(FRESS_AVG)*0.8,replace=F)
 trs <- FRESS_AVG[su,]
 tes <- FRESS_AVG[-su,]
 dim(trs)
 library(rpart)
 dtu <- rpart(trs$`what do you think about online-pharmacy?`~.,trs,method="class")
 dtu
 library(rpart.plot)
 rpart.plot(dtu)
 predicted_variable <- predict(dtu,tes,type="class")
 predicted_variable
 library(caret)
 vs <- table(tes$`what do you think about online-pharmacy?`,predicted_variable)
 vs
 confusionMatrix(vs)

 
 library(readxl)
 FRESH_AVG_NEW <- read_excel("C:/Users/sneha/Desktop/RESEARCH PROJECT/FRESH_AVG NEW.xlsx")
 View(FRESH_AVG_NEW)
 library(caTools)
 su <- sample(1:nrow(FRESS_AVG),nrow(FRESS_AVG)*0.8,replace=F)
 trs <- FRESS_AVG[su,]
 tes <- FRESS_AVG[-su,]
 dim(trs)
 library(rpart)
 dtu <- rpart(trs$`what do you think about online-pharmacy?`~.,trs,method="class")
 dtu
 library(rpart.plot)
 rpart.plot(dtu)
 predicted_variable <- predict(dtu,tes,type="class")
 predicted_variable
 library(caret)
 vs <- table(tes$`what do you think about online-pharmacy?`,predicted_variable)
 vs
 confusionMatrix(vs)

 
 library(readxl)
 FRESH_AVG_NEW <- read_excel("C:/Users/sneha/Desktop/RESEARCH PROJECT/FRESH_AVG NEW.xlsx")
View(FRESH_AVG_NEW)
library(caTools)
su <- sample(1:nrow(FRESS_AVG),nrow(FRESS_AVG)*0.8,replace=F)
trs <- FRESS_AVG[su,]
tes <- FRESS_AVG[-su,]
dim(trs)
library(rpart)
dtu <- rpart(trs$`what do you think about online-pharmacy?`~.,trs,method="class")
dtu
library(rpart.plot)
rpart.plot(dtu)
predicted_variable <- predict(dtu,tes,type="class")
predicted_variable
library(caret)
vs <- table(tes$`what do you think about online-pharmacy?`,predicted_variable)
vs
confusionMatrix(vs)


