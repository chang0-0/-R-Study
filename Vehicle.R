install.packages("Vehicle")
library(mlbench)
data("Vehicle")
Vehicle <- subset(Vehicle, select  = c("Class", "Sc.maxis", "Scat.Ra", "Elong", "Pr.Axis.Rect", "Sc.Var.Maxis"))
table(Vehicle$Class)

Vehicle <- subset(Vehicle, Class == "bus" || Class == "van")
Vehicle$Class <- factor(Vehicle$Class)
table(Vehicle$Class)

head(Vehicle)
summary(Vehicle)

summary(lm(Circ ~ Comp, data=Vehicle))

# Call:
# lm(formula = Comp ~ Circ, data = Vehicle)

# Residuals:
#      Min       1Q   Median       3Q      Max
# -16.6558  -4.0940   0.0431   3.9624  16.8711

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)
# (Intercept) 52.19386    1.50004   34.80   <2e-16 ***
# Circ         0.92472    0.03313   27.92   <2e-16 ***
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Residual standard error: 5.941 on 844 degrees of freedom
# Multiple R-squared:  0.4801,    Adjusted R-squared:  0.4795
# F-statistic: 779.3 on 1 and 844 DF,  p-value: < 2.2e-16
