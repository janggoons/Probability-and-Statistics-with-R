## 단일표본 t검정
x<-c(7.07, 7.00, 7.10, 6.97, 7.00, 7.03, 7.01, 7.01, 6.98, 7.08)
summary(x)
sd(x)
sd(x)/sqrt(length(x))
t.test(x, mu=7)