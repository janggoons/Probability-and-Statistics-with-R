before<-c(2.76, 5.18, 2.68, 3.05, 4.10, 7.05, 6.60, 4.79, 7.39, 7.30, 11.78, 3.90, 26.00, 67.48, 17.04)
after<-c(7.02, 3.10, 5.44, 3.99, 5.21, 10.26, 13.91, 18.53, 7.91, 4.85, 11.10, 3.74, 94.03, 94.03, 41.70)
dat<-data.frame(before, after)
dat$diff<-dat$after-dat$before
dat
t.test(dat$after, dat$before, alternative = "two.sided", paired = T, conf.level = 0.95)