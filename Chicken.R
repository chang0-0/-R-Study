install.packages("chickwts")

head(chickwts)

 s <- summary(chickwts)

library(plyr)

a <- ddply(chickwts, ~ feed, summarize, groupmean=mean(weight))


summary_df <- data.frame(chickwts)

