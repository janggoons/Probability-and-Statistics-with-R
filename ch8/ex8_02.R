a <- c(5.2, 4.7, 8.1, 6.2, 3.0)
b <- c(9.1, 7.1, 8.2, 6.0, 9.1)
c <- c(3.2, 5.8, 2.2, 3.1, 7.2)
d <- c(2.4, 3.4, 4.1, 1.0, 4.0)
e <- c(7.1, 6.6, 9.3, 4.2, 7.6)

y <- c(a,b,c,d,e)
y

n <- rep(length(a), 5)
n

group <- rep(1:5, n)
group

# combining into data.frame
group_df <- data.frame(y, group)
group_df

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
