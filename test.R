cust_id <- c("c01","c02","c03","c04") 
last_name <- c("Kim", "Lee", "Choi", "Park") 
cust_mart_1 <- data.frame(cust_id, last_name)

cust_mart_2 <- data.frame( cust_id = c("c05", "c06", "c07"), last_name = c("Bae", "Kim", "Lim"))

cust_mart_12 <- rbind(cust_mart_1, cust_mart_2)

cust_mart_3 <- data.frame( cust_id = c("c08", "c09"), last_name = c("Lee", "Park"), gender = c("F", "M"))

cust_mart_4 <- data.frame( cust_id = c("c10", "c11"), first_name = c("Kildong", "Yongpal"))

cust_mart_5 <- data.frame( age = c(20, 25, 19, 40, 32, 39, 28), income = c(2500, 2700, 0, 7000, 3400, 3600, 2900))

"+"(2,3)

T_name <- c("T1","T2","T3","T4","T5","T6")
x<-c(1.4, 1.8, 1.5, 1.4, 1.6, 1.5)
y<-c(3.2, 3.4, 3.9, 3.2, 3.5, 3.9)


dfm1 <- data.frame(T_name=c("T1","T2","T3","T4","T5","T6"), x=c(1.4, 1.8, 1.5, 1.4, 1.6, 1.5), y=c(3.2, 3.4, 3.9, 3.2, 3.5, 3.9))
dfm2 <- data.frame(T_name=c("T1","T3","T5"), z=c(5.7, 5.8, 6.9))

cbind(dfm1, dfm2, by="T_name")
rbind(dfm1, dfm2, by="T_name")  #오류 발생
merge(dfm1, dfm2, by="T_name")  
subset(dfm1, dfm2, by="T_name") #오류 발생 
#비어있는 칸은 재활용규칙에 의해서 반복적으로 입력됨

x<-c(1:5)
y<-seq(10,50,10)
xy<-rbind(x,y)

x<-1:100
sum(x>50)
# 오로지 sum()함수의 기준에 근거 해서만 출력됨
# 50이 출력됨

f <- function(x,a) return((x-a)^2)
f(1:2,3)

fruit <- c(5, 10, 1, 2)
names(fruit) <- c("orange", "banana", "apple", "peach")

