install.packages('cowsay')
library(cowsay)

//이거 시험임 (내 생일이 나오는지 보여주고 나가면됨)
month <- 8
day <- 21

#공식 
gon <- month * 4 + 9 * 25 + day
gon

s <- 931

result1 <- s/4-9
result2 <- result1 / 25


(m *4+9)*25+d

n <- c('소윤', '주연', '민철', '석준', '현석', '나')
n
f <- c(931, 754, 1029, 1139, 1442, 833 )
f
#(m * 4 + 9) + 25 + d = 931
# 100 m + 225 + d = 931
t <- f - 225
t
d <- t %% 100
m <- floor(t / 100)
m
d

# 소윤이 태어난 일
(931 - 225) %% 100

# 소윤이 태어난 달
((931 - 225) - ((931 - 225) %% 100)) / 100


