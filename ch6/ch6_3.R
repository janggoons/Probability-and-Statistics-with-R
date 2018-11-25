# 2표본 t-test
# p269
# 데이터 입력
noNitrogen<-c(0.32, 0.53, 0.28, 0.37, 0.47, 0.43, 0.36, 0.42, 0.38, 0.43)
nitrogen<-c(0.26, 0.43, 0.47, 0.49, 0.52, 0.75, 0.79, 0.86, 0.62, 0.46)
# 등분산 검정, 귀무가설(등분산이 다르다.)
var.test(noNitrogen, nitrogen)
# t-test
t.test(nitrogen, noNitrogen, paired = FALSE, var.equal = TRUE, conf.level = 0.95)
t.test(nitrogen, noNitrogen, paired = FALSE, var.equal = FALSE, conf.level = 0.95)
