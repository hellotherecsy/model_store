

library(MASS)
library(ggplot2)

# 01. 디렉토리 셋팅 
work_dir <- "/Users/hellothere/choi/06.project/004. meta/01. Rmodel"
setwd(work_dir)

# 02. load model 
cats.load.model2 <- readRDS("./result.rds")

# 03. make the input data frame
newdata = data.frame(cats$Bwt)
colnames(newdata) <- c("Bwt")
newdata

# 04. Predict  
result <- predict(cats.load.model2, newdata = newdata )

# 05. 결과 저장 및 확인 
predict.data.frame <- data.frame(result,cats$Hwt) 
colnames(predict.data.frame) <- c("prd.Hwt","ori.Hwt")

 