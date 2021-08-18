library(mlbench)
data("Vehicle")
Vehicle <- subset(Vehicle, select  = c("Class", "Sc.maxis", "Scat.Ra", "Elong", "Pr.Axis.Rect", "Sc.Var.Maxis"))
table(Vehicle$Class)

Vehicle <- subset(Vehicle, Class == "bus" || Class == "van")
Vehicle$Class <- factor(Vehicle$Class)
table(Vehicle$Class)