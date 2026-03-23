setwd("C:/Users/34275/OneDrive/Desktop/PreAnalytics")

# Import dataset
beanie <- read.csv("beanie.csv", header = TRUE)

plot(beanie$age, beanie$value,
     main = "Beanie Value vs Age",
     xlab = "Age",
     ylab = "Value")

hist(beanie$value,
     main = "Distribution of Beanie Values",
     xlab = "Value")


library(lattice)

xyplot(value ~ age, data = beanie,
       main = "Value vs Age",
       xlab = "Age",
       ylab = "Value",
       col = "blue")

bwplot(age ~ value, data = beanie,
       main = "Value by Age Group")


library(ggplot2)

ggplot(beanie, aes(x = age, y = value, color = age)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Beanie Value vs Age",
       x = "Age",
       y = "Value",
       color = "Age Group") +
  theme_minimal()
