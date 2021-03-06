head(airquality)
library(reshape)

# melt(): 원데이터 형태로 만드는 함수(쉬운 casting을 위해 적당한 형태로 만들어줌)

aqm <- melt(airquality, id=c("Month", "Day"), na.rm=T)

# cast(): 요약 형태로 만드는 함수(데이터를 원하느 형태로 계산 또는 변형 시켜줌)

a1 <- cast(aqm, Day ~ Month)
a2 <- cast(aqm, Day + Month ~ variable)

str(airquality)

airquality$Day
airquality[[2]]

head(aqm)

summary(aqm)

# > summary(aqm)
#      Month            Day           variable       value
#  Min.   :5.000   Min.   : 1.00   Ozone  :116   Min.   :  1.00
#  1st Qu.:6.000   1st Qu.: 8.00   Solar.R:146   1st Qu.: 13.00
#  Median :7.000   Median :16.00   Wind   :153   Median : 66.00
#  Mean   :7.044   Mean   :15.83   Temp   :153   Mean   : 80.06
#  3rd Qu.:8.000   3rd Qu.:23.00                 3rd Qu.: 91.00
#  Max.   :9.000   Max.   :31.00                 Max.   :334.00


head(airquality)

summary(lm(formula = Ozone ~ Solar.R + Wind + Temp, data=airquality))

Call:
lm(formula = Ozone ~ Solar.R + Wind + Temp, data = airquality)

Residuals:
    Min      1Q  Median      3Q     Max
-40.485 -14.219  -3.551  10.097  95.619

Coefficients:
             Estimate Std. Error t value Pr(>|t|)
(Intercept) -64.34208   23.05472  -2.791  0.00623 **
Solar.R       0.05982    0.02319   2.580  0.01124 *  
Wind         -3.33359    0.65441  -5.094 1.52e-06 ***
Temp          1.65209    0.25353   6.516 2.42e-09 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 21.18 on 107 degrees of freedom
  ()
Multiple R-squared:  0.6059,    Adjusted R-squared:  0.5948
F-statistic: 54.83 on 3 and 107 DF,  p-value: < 2.2e-16


#a1 출력 결과
# , , variable = Ozone

#     Month                                                                             
# Day    5  6   7   8  9
#   1   41 NA 135  39 96
#   2   36 NA  49   9 78
#   3   12 NA  32  16 73
#   4   18 NA  NA  78 91
#   5   NA NA  64  35 47
#   6   28 NA  40  66 32
#   7   23 29  77 122 20
#   8   19 NA  97  89 23
#   9    8 71  97 110 21


# , , variable = Solar.R

#     Month
# Day    5   6   7   8   9
#   1  190 286 269  83 167
#   2  118 287 248  24 197
#   3  149 242 236  77 183
#   4  313 186 101  NA 189
#   5   NA 220 175  NA  95
#   6   NA 264 314  NA  92
#   7  299 127 276 255 252
#   8   99 273 267 229 220
#   9   19 291 272 207 230


# , , variable = Wind

#     Month
# Day     5    6    7    8    9
#   1   7.4  8.6  4.1  6.9  6.9
#   2   8.0  9.7  9.2 13.8  5.1
#   3  12.6 16.1  9.2  7.4  2.8
#   4  11.5  9.2 10.9  6.9  4.6
#   5  14.3  8.6  4.6  7.4  7.4
#   6  14.9 14.3 10.9  4.6 15.5
#   7   8.6  9.7  5.1  4.0 10.9
#   8  13.8  6.9  6.3 10.3 10.3
#   9  20.1 13.8  5.7  8.0 10.9


# , , variable = Temp

#     Month
# Day   5  6  7  8  9
#   1  67 78 84 81 91
#   2  72 74 85 81 92
#   3  74 67 81 82 93
#   4  62 84 84 86 93
#   5  56 85 83 85 87
#   6  66 79 83 87 84
#   7  65 82 88 89 80
#   8  59 87 92 90 78
#   9  61 90 92 90 75


# a2 출력결과
#     Day Month Ozone Solar.R Wind Temp
# 1     1     5    41     190  7.4   67
# 2     1     6    NA     286  8.6   78
# 3     1     7   135     269  4.1   84
# 4     1     8    39      83  6.9   81
# 5     1     9    96     167  6.9   91
# 6     2     5    36     118  8.0   72
# 7     2     6    NA     287  9.7   74
# 8     2     7    49     248  9.2   85
# 9     2     8     9      24 13.8   81
# 10    2     9    78     197  5.1   92
# 11    3     5    12     149 12.6   74
# 12    3     6    NA     242 16.1   67
# 13    3     7    32     236  9.2   81
# 14    3     8    16      77  7.4   82
# 15    3     9    73     183  2.8   93







