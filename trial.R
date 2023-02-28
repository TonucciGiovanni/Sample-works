a = 11
b = 10
print(255)
c = a*b
print(c(a,b))
print("Hello")
print("Hi", quote=FALSE)
#adding two vectors
a = c (1, 0.1)
b = c (2.33, 4)
print(a+b)

B = matrix(c(4, 6i), nrow = 1, ncol = 2)
C = matrix(c(2, 2i), nrow = 1, ncol = 2)
print(B*C)
q = 2
s = 5
print(s%%q)

(list1 = c(TRUE, 0.1))
(list2 = c(0, 4+3i))
print(list1 || list2)

vec1 <- c(2:5)
c(2:5) ->> vec2
vec3 <<- c(2:5)
vec4 = c(2:5)
c(2:5) -> vec5

cat("vector 1 : ", vec1)
cat("vector  : ", vec2)
cat("vector 1 : ", vec3)
cat("vector 1 : ", vec4)
cat("vector 1 : ", vec5)

#checks if element belongs to a list
val = 0.1
list1 = c(TRUE, 0.1, "APPLE")
print(val %in% list1)
print(1:9)

#multiply matrix with transpose
mat = matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3)
print(mat)

print(t(mat))
pro = mat %*% t(mat)
print(pro)

a = 5
if(a>0)
{
  print("P No.")
}

x = 5

if(x>10)
{
  print(paste(x, "greater than 10"))
}else
{
  print(paste(x,"less than 10"))
}

val = 1
while (val <=5) {
  print(val)
  val = val + 1
}

for (val1 in 1:5) {
  print(val1)
}

evenOdd <- function(x){
  if(x%%2 == 0)
    return("even")
  else
    return("odd")
}
print(evenOdd(4))
print(evenOdd(3))
print(255)
print("hello")

#check Inf
x = c(Inf,2, 3)
print(is.finite(x))
#check NaN
y = c(1, NaN, 3)
print(is.nan(y))

y = 4
print(class(y))
print(typeof(y))
x = 3.4
print(class(x))
print(typeof(x))
print(is.integer(y))
#create an integer value
x = as.integer(5)
print(class(x))
print(typeof(x))
h = 6L
print(class(h))
#complex data type
l = 4 + 6i
print(class(l))
print(typeof(l))
print(is.numeric(l))
k = as.integer(66)
print(class(k))
print(as.numeric(TRUE))
print(as.complex(3L))
print(as.logical(10.4))
print(as.character(1+2i))
print(as.numeric(33L))
print(ls())
var1 = c(1,2,3,4)
var2 = c("a","b","c")
z = list(var1,var2)
print(z)

a <- function(z) {
  b <- 10
  function() {
    z + 4 * b
  }
}
x <- a(10)
x()
