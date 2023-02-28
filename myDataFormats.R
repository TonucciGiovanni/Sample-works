#Numeric

n <- 15 #double precision by default
n
typeof(n)
n2 <- 1.5
typeof(n2)

#character

c1 <- "c"
typeof(c1)
c2 <- "a string"
typeof(c2)

#Logical
l1 <- T
l2 <- F

typeof(l2)

#Vector
v1 <- c(1,2,3,4,5)
v1
is.vector(v1)
v2 <- c("a","b","c")
v2
is.vector(v2)

#Matrix
m1 <- matrix(c(T,F,T,F,F,T), nrow = 2)
m1

#Array

#give data, then dimensions(rows, columns, tables)
a1 <- array(c(1:24), c(4,3,2))
a1

#Data Frame
#can combine vectors of the same length

vNumeric <- c(1,2,3)
vCharacter <- c("a", "b", "c")
vLogical <- c(T, F, F)
dfa <- cbind(vNumeric, vCharacter, vLogical)
dfa #matrix of one data type

df <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df #Makes a data frame with three different variables

#List

o1 <- c(1,2,3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T,T,F,T,F)

list1 <- list(o1,o2,o3)
list1

#COERCING TYPES

#Automatic coercion
#Goes to least restrictive data type

(coerce1 <- c(1, "b", T))
typeof(coerce1)

#coerce numeric to integer
(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

#coerce character to numeric
(coerce4 <- c("1", "2", "3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5)

#coerce matrix to data frame
(coerce6 <- matrix(1:9, nrow = 3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(coerce6))
is.data.frame(coerce7)
