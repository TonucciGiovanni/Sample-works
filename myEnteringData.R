#COLON OPERATOR

(x1 <- 0:10)
(x <- 10:0)
(x3 <- seq(10))

#specify change in values(-3)
(x4 <- seq(30, 0, by = -3))

#ENTER MULTIPLE VALUES WITH C - CONCATENATE

(x5 <- c(5,1,3,5,2,1,4,8,9))

# SCAN
?scan

x6 <- scan() #after running go to console
# hit return after each number
#hit return twice to stop
x6

?rep
x7 <- rep(c(T,F), 5)
x7
(x8 <- rep(c(T,F), each = 5))
