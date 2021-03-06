a <- c(551,457,450,731,499,632)
b <- c(595,580,508,583,633,517)
c <- c(639,615,511,573,648,677)
d <- c(417,449,517,438,415,555)
e <- c(563,631,522,613,656,679)

y <- c(a,b,c,d,e)
y

group <- c(rep(1, length(a)), rep(2, length(b)), rep(3, length(c)), rep(4, length(d)), rep(5, length(e)))
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
