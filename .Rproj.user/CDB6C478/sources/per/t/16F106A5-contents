a <- c(190, 266, 270)
b <- c(318, 295, 271, 438, 402)
c <- c(390, 321, 396, 399)

y <- c(a,b,c)
y

group <- c(rep(1, length(a)), rep(2, length(b)), rep(3, length(c)))
group

# combining into data.frame
group_df <- data.frame(y, group)
head(group_df)

# transform from 'integer' to 'factor'
sapply(group_df, class)
group_df <- transform(group_df, group = factor(group))
sapply(group_df, class)

# boxplot
attach(group_df)
boxplot(y ~ group)

# descriptive statistics by group
tapply(y, group, summary)
detach(group_df)

# one-way ANOVA
group_aov <- aov(y ~ group, data = group_df)
summary(group_aov)

# Bartlett test to test the null hypothesis of equal group variances
bartlett.test(y ~ group, data = group_df)

# multiple comparison - Tukey's HSD test : TukeyHSD()
TukeyHSD(group_aov)
plot(TukeyHSD(group_aov))