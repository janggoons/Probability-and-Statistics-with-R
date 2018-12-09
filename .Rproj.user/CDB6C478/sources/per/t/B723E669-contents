a <- c(25.6, 24.3, 27.9)
b <- c(25.2, 28.6, 24.7)
c <- c(20.8, 26.7, 22.2)
d <- c(31.6, 29.8, 34.3)

y <- c(a,b,c,d)
y

group <- c(rep(1, length(a)), rep(2, length(b)), rep(3, length(c)), rep(4, length(d)))
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
