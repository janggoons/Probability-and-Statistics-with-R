# 2표본 t-test
# p291 사례연구
# 데이터 입력
alloyA<-c(88,82,87,79,85,90,84,88,83,89,80,81,81,85,83,87,82,80,79,78)
alloyB<-c(75,81,80,77,78,81,86,78,77,84,82,78,80,80,78,76,83,85,76,79)
# 각 표본의 표준편차, 표준오차
sd(alloyA)
SE_alloyA<-sd(alloyA)/sqrt(length(alloyA))
SE_alloyA
sd(alloyB)
SE_alloyB<-sd(alloyB)/sqrt(length(alloyB))
SE_alloyB
# 상자-수엄 그림
boxplot(alloyA, alloyB, names = c("합금A", "합금B"))
# 등분산 검정, 영가설(등분산이다), p-value 가 0.05보다 크면, 영가설 기각 못함
var.test(alloyA, alloyB)
# t-test
t.test(alloyB, alloyA, paired = FALSE, var.equal = TRUE, conf.level = 0.95)
t.test(alloyB, alloyA, paired = FALSE, var.equal = FALSE, conf.level = 0.95)