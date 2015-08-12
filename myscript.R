x <- c(140, -50, 20, -120, 240)
y <- c(-24, -50, 100, -350, 10)

daysoftheweek <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(x) <- daysoftheweek
names(y) <- daysoftheweek

average_x <- mean(x)
average_y <- mean(y)

average_x
average_y

selection_x <- x > 0
selection_x

selection_y <- y > 0
selection_y

profit_x <- sum(x)
profit_y <- sum(y)

profit_x
profit_y

matrix(1:9, byrow = TRUE, nrow = 3)

wednesday <- x[3]
wednesday

mid_week <- x[c(2,3,4)]
mid_week

mid_week2 <- y[2:5]
mid_week2

mid_week3 <- x[c("Monday", "Tuesday", "Wednesday")]
mid_week3

positive_x <- x[selection_x]
positive_x

positive_y <- y[selection_y]
positive_y