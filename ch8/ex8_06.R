a <- c(1.06, 0.79, 0.82, 0.89, 1.05, 0.95, 0.65, 1.15, 1.12)
b <- c(1.58, 1.45, 0.57, 1.16, 1.12, 0.91, 0.83, 0.43)
c <- c(0.29, 0.06, 0.44, 0.55, 0.61, 0.43, 0.51, 0.10, 0.53, 0.34, 0.06, 0.09, 0.17, 0.17, 0.60)

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
aov(y ~ group, data = group_df)
summary(aov(y ~ group, data = group_df))

# Bartlett test to test the null hypothesis of equal group variances
bartlett.test(y ~ group, data = group_df)

# Welch's ANOVA
oneway.test(y ~ group, data = group_df, var.equal = FALSE)
