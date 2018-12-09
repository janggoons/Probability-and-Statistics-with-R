a <- c(49.20,44.54,45.80,95.84,30.10,36.50,82.30,87.85,105,95.22,97.50,105,58.05,86.60,58.35,72.80,116.70,45.15,70.35,77.40)
b <- c(97.07,73.40,68.50,91.85,106.60,0.57,0.79,0.77,0.81)
c <- c(62.10,94.95,142.50,53,175.00,79.50,29.50,78.40,127.50)
d <- c(110.60,57.10,117.60,77.71,150.00,82.90,111.50)

y <- c(a,b,c,d)
y

group <- c(rep(1, length(a)), rep(2, length(b)), rep(3, length(c)), rep(4, length(d)))
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
group_aov <- aov(y ~ group, data = group_df)
summary(group_aov)

# Bartlett test to test the null hypothesis of equal group variances
bartlett.test(y ~ group, data = group_df)

# multiple comparison - Tukey's HSD test : TukeyHSD()
TukeyHSD(group_aov)
