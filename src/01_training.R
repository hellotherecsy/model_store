
library(MASS)
library(ggplot2)
library(maxent)



# 01. 파라미터 셋업
help(cats)
nrow(cats)
summary(cats)
colSums(is.na(cats))
work_dir <- "/Users/hellothere/choi/06.project/004. meta/01. Rmodel"
setwd(work_dir)


# 02. 데이터 확인 /w ggplot 
names(cats)
ggplot(cats, aes(Bwt , Hwt)) + 
  geom_point()

newdata = data.frame(cats$Bwt)
colnames(newdata) <- c("Bwt")
newdata

# 03. Training  
cats.lm <- lm(Hwt ~ Bwt , cats )
cats.lm #  intercept : 1.0196   Coefficients:   0.1603   
summary(cats.lm)

# 04. Save the model
saveRDS(cats.lm, "./result.rds")



