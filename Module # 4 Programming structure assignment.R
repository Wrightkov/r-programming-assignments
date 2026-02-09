#frequency
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)

#blood pressure
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)

#first assessment (bad 1,good 0)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)

#second assessment (low 0,high 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)

#final decision (low 0,high 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)


boxplot(bloodp ~ finaldecision,
        main = "Blood Pressure/Final Decision",
        xlab = "Final Decision (0 = Low, 1 = High)",
        ylab = "Blood Pressure")


hist(bloodp,
     main = "Histogram of Blood Pressure",
     xlab = "Blood Pressure",
     col = "lightgray")
