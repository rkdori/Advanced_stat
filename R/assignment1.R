## Problem 1
set.seed(1)
n = 200
x = seq(0, 1, length.out = n)
y = sin(2*pi*x) + rnorm(n, sd = 0.15)


# 1 - (a)
data <- data.frame(x = x, y = y)
write.csv(data, "data/assignment1_data.csv", row.names = FALSE)

# 1 - (b)
library(ggplot2)
data1 <- read.csv("data/assignment1_data.csv")

plot1 <- ggplot(data1, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "loess")
print(plot1)

# 1 - (c)
ggsave("plots/assignment1_plot1.png", plot = plot1)

# 1 - (d)
# https://github.com/rkdori/Advanced_stat
