#Annova one Factor Example
getwd()
AnovaGolfproblem = read.csv("Golfball.csv" , header=TRUE)
attach(AnovaGolfproblem)
AnovaGolfproblem
GolfAnovaFactor=aov(Distance~Design)
summary(GolfAnovaFactor)
print(summary(GolfAnovaFactor), digits = 6)
TukeyHSD(GolfAnovaFactor)
TukeyHSD(GolfAnovaFactor, Confidence=99)
