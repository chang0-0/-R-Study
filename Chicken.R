install.packages("chickwts")

head(chickwts)

 s <- summary(chickwts)

library(plyr)

a <- ddply(chickwts, ~ feed, summarize, groupmean=mean(weight))


summary_df <- data.frame(chickwts)

normal <- t.test(chickwts$weight)

#         One Sample t-test

# data:  chickwts$weight
# t = 28.202, df = 70, p-value < 2.2e-16
# alternative hypothesis: true mean is not equal to 0
# 95 percent confidence interval:
#  242.8301 279.7896
# sample estimates:
# mean of x
#  261.3099

# 99%의 신뢰구간을 설정
t99 <- t.test(chickwts$weight, conf.level=0.99)

#         One Sample t-test

# data:  chickwts$weight
# t = 28.202, df = 70, p-value < 2.2e-16
# alternative hypothesis: true mean is not equal to 0
# 99 percent confidence interval:
#  236.7753 285.8444
# sample estimates:
# mean of x
#  261.3099