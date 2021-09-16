a <- 10
total <- 5050
total
print(total)
cat('합계 :', total)

a <- 10
b <- 20
c <- a + b
print(a)
print(b)
print(c)

a <- 10
b <- 20
c <- a + b

# 소금물 농도 구하기

salt <- 50
water <- 100
print(salt)
print(water)

result <- salt / (salt + water) * 100

cat('소금 = ', salt, ', 물 = ', water, ': 농도 = ,', result, '%')

salt <- 70
water <- 110

print(salt)
print(water)

result <- salt / (salt + water) * 100

cat('소금 = ', salt, ', 물 = ', water, ': 농도 = ,', result, '%')

salt <- 70
water <- 110

#시험에서는 변수 2개 안쓰고 변수 1개애 다 집어놓고 사용함
salt <- c(50, 70)
water <- c(100, 110)

for(i in 1:length(salt)) {
 result[i] <- salt[i] / (salt[i] + water[i]) * 100
 cat('소금 = ', salt[i], ', 물 = ', water[i], ': 농도 = ', result[i], '%', '\n')
} 


#시험에서는 변수 2개 안쓰고 변수 1개애 다 집어놓고 사용함
salt <- c(50, 70)
water <- c(100, 110)
result <- salt / (salt + water) * 100

for(i in 1:length(salt)) {
  cat('소금 = ', salt[i], ', 물 = ', water[i], ': 농도 = ', result[i], '%', '\n')
} 

# 시퀀스 리피트 도 있음
# 적기 만금은 제곱을 해야됨 기간이 늘어나는 만큼 제곱
# kim의 2년 이자는 얼마인지 출력 하라 그리고 만기 금액은 얼마인지 결과값을 출력
# 그게 되면 for문을 사용해서 전부다 출력되도록 하라 (이것도 시험으로 출제될 수 있음음)
# 나중에 이 부분을 함수로 만들어서 사용하는 부분도 시험에 나올 수 있음

customer <- c('kim', 'lee', 'park', 'choi', 'seo')
deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000)
rate <- c(3.5, 3, 4, 5, 4.5)
period <- c(2, 2, 5, 7, 4)

names(deposit) <- customer
names(rate) <- customer
names(period) <- customer

who <- customer

# 2년 이자 출력
year <- deposit[who] * (1 + rate[who]/100)^period[who] - deposit[who]

sum <- deposit[who] * ( 1 + rate[who] / 100)^ period[who]

c(who, ' 의 2년 이자는 ', sum - deposit[who], '원이고, 만기금액은', sum,'입니다.')


for(who in customer) {
  cat('고객= ', who, '의', period[who],'년 이자는', sum[who] - deposit[who], '원 이고 만기금액은 ', sum[who], '원입니다.', '\n')
}



