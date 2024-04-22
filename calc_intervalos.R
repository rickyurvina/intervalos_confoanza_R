library(confintr)
library(MASS)
library(psych)
attach(birthwt)
# intervalos de confianza
# describe(bwt)
ci_mean(bwt)
# intervalo de confianza 99% , percentiles
ci_mean(bwt, probs = c(0.005,0.995))
# intervalo de confianza de 90%
ci_mean(bwt, probs = c(0.05,0.95))

#asignar subser
race
birtwt2=subset(birthwt, birthwt$race==2)
View(birtwt2)

ci_mean(bwt, data=birtwt2)
detach(birthwt)
attach(birtwt2)
ci_mean(bwt, data=birtwt2)