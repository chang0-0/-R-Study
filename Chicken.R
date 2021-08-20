install.packages("chickwts")

head(chickwts)

summary(chickwts)

library(plyr)

a <- ddply(chickwts, ~ feed, summarize, groupmean=mean(weight))

