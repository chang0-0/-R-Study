install.packages("data.table")
library(data.table)
DF <- data.frame(x = runif(2.6e+07), y = rep (LETTERS, each = 10000))
df <- data.frame(x = runif(2.6e+07), y = rep (letters, each = 10000))
system.time(x <- DF[DF$y == "C", ])

#  사용자  시스템 elapsed 
#    0.17    0.00    0.17

DT <- as.data.table(DF)
setkey(DT, y)
system.time(x <- DT[J("C"), ])

#  사용자  시스템 elapsed 
#       0       0       0

