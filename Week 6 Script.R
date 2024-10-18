#If you have a + sign on your console. Just hit Esc.

#If -else statement

#syntax

#if(text_expression){
# statement_1
#}else{
# statement_2
#}

if(Man_U > Arsenal){
  print("Man U won")
}else{
  print("Man U lost")
}

#You can have more than 2 options to choose from As such you use a different code

# A Nested If -else statement

#syntax

#if(text_expression){
#statement_1
#}else if(text_expression2){
# statement_2
#}else if (text_expression3){
# statement_3
#}else{
# statement_m
#}

if(Man_U > Arsenal){
  print("Man U won")
}else if (Man_U < Arsenal){
  print("Man U lost")
}else if(Man_U == Arsenal){
  print("Draw")
}else{
  print("DNF")
}

#Write a code that prints X is greater than y, x=8, y=8

x <- 4^2
y <- 4*2

if(x >y){
  print("x is greated than y")
}else if(x < y){
  print("y is greater than x")
}else if(x == y){
  print("x is equal to y")
}else{
  print("error")
}

age <- c(15,27,34,65)

age_grp <- ifelse(age<18, "minor", "adult")
print(age_grp)

match_result <- ifelse(Man_U > Arsenal, "Man_U won", "Man U lost")
print(match_result)
match_result2 <- ifelse(Man_U > Arsenal, "Man_U won", ifelse(Man_U<Arsenal,"Man U lost", "Draw"))
print(match_result2)


#write an r code that print "x is greater than y and z"

z <- 4/2

result <- ifelse(x>y & x>z, "x is greater than y and z", "x is not greater than y and z")
print(result)

#write a code that confirms whether the elements of vector x are either odd or even numbers

status <- ifelse (x%%2 == 0, "x is even", "x is odd")
print(status)

x2 <- c(12,24,56,345,989,22)

testx <- ifelse(x2%%2 ==0, paste(x2, "is even"),paste(x2,"is odd"))
print(testx)

#How does past 0 work
?paste0

testx2 <- ifelse(x2%%2 ==0, paste0(x2, " is even."),paste0(x2," is odd."))
print(testx2)

#Rewrite the code so that each output is on its own line

??trim.text
?strsplit
strsplit(testx2,"\\. (?=1-100)", perl = TRUE)


#----------------------- For Loop -------------------#

#syntax

#for (element in vector){
#statement
#}

# Arsenal and Man U - Goals Scored by each team respectively

matches <- list (c(2,1), c(3,7), c(6,2))
print(matches)

#If statement to print out winner of a game

if(matches[[1]][1]>matches[[1]][2]){
  print("Man U wins")
}else{
  print("Man U lost")
}

if(matches[[2]][1]>matches[[2]][2]){
  print("Man U wins")
}else{
  print("Man U lost")
}

if(matches[[3]][1]>matches[[3]][2]){
  print("Man U wins")
}else{
  print("Man U lost")
}

teams <- c("Man_U","Arsenal")

for (team in teams) {
  print(team)
}

for (match in matches) {
  print(match)
}

#Total Number of goals scored
#In R, we used the function "sum" to obtain sums

for (match in matches) {
  print(sum(match))
}

# Now we wish to assign it to a vector

#First we create an empty vector
total_goals <- c()

#We now append the vector
for (match in matches) {
  total_goals <- c(total_goals, sum(match))
}
print(total_goals)

#There is also another way of doing this

total_goals_2 <- c()

j <- 1 #Introduce a counter

for (match in matches) {
  total_goals_2[j] <- sum(match)
  j <- j+1
}
print(total_goals_2)

rm(j) # TO Reset the counter of the For Loop

#assignment 

# 1. Write a for loop that iterates over the numbers 1 to 10 and prints the cube of each number using print()
numbers <- c(1:10) #CReate a Vector from 1 to 10
print(numbers)

for (number in numbers) {
  print(number)
}
for (number in numbers) {
  print(number^3)
}

# 2. write a for loop that iterates over the column names of the inbuilt iris dataset and print each together
#with the number of characters in the column name in paranthesis. Example output: Sepal.Length(12)
#use the following functions print(), paste0(), and nchar()
names(iris)

Col_Headers <- names(iris)
print(Col_Headers)

headers <- c()
for (Col_Header in Col_Headers) {
  headers <- c(headers, print(Col_Header))
}
print(headers)

num_char <- c()

for (Col_Header in Col_Headers) {
  num_char <- c(num_char, nchar(Col_Header))
}

print(num_char)

paste0(headers,"(", num_char, ")")

# 3. Write a for loop to compute the mean of every column in mtcars dataset

print(mtcars)
View(mtcars)
class(mtcars)

mean(mtcars$mpg)

colMeans(mtcars)

mean_col <- c()
cars <- mtcars
View(cars)
q <- 1
mean(cars[, q])


for (car in cars) {
  mean_col[q] <- mean(cars[, q])
  q <- q+1
}
print(mean_col)


rm(q)
# 4 Refer to the Arsenal and Man U matches and combine if else and for loop statement

results <- c()
rm(p)
p <- 1

for (match in matches) {
  results[p] <- { if(matches[[p]][1]>matches[[p]][2]){
    print("Man U wins")
  }else{
    print("Man U lost")
  }}
  p <- p+1
  if (p==4){
    break
  }
}
print(results)


#Further questions....Building on the control structures, extend the examples and find out how the following works
# break
?break
results <- c()
rm(p)
p <- 1

for (match in matches) {
  results[p] <- { if(matches[[p]][1]>matches[[p]][2]){
    print("Man U wins")
  }else{
    print("Man U lost")
  }}
  p <- p+1
  if (p==4){
    break
  }
}
print(results)

#next

x2 <- c(1:12)

for (i in x2){
  if(i%%2 !=0){
    next
  }
  print(i)
}

# while loop to get the continuous sum of the first 10 natural numbers

number = 1
sum= 0

while(number <= 10) {
  sum = sum + number
  number = number +1
}
print(sum)


#--------------- Functions -----------------#


#syntax

#function(arguments){
  #body #Computations on the arguments
  #return
#}


my_first_function <- function(x){
  cube<-x**3
  return(cube)
}

my_first_function(5)

my_first_function(1000)

my_first_function(9)

pi

#Write a function that can compute the area of a circle

my_function2 <- function(r){
  area <- pi*r^2
  return(area)
}

my_function2(3)

#Write a function that can check if a given number is divisible by 5

check <- function(x, div =5){
  if (x%%div ==0){
    result <- paste0(x, " is divisible by ", div)
  }else{
    result <- paste0(x, " is not divisible by ", div)
  }
  return(result)
}

check(11, div=5)

check(120, div=5)

check(130, div= 2) 
#These defined functions are not restricted as long as the structure is not broken



#Write the function that checks the divisibility of elements in a vector

tests <- c(1:9)
divi <- c()
rm(t)
t <- 1

for (i in tests){
  divi[t] <- check(i, div = 2)
  t <- t+1
}
print(divi)

#Other answer

check_1 <- function(x, div = 5){
  result <- c()
  z <- 1
  for (i in x) {
    if(i%%div ==0){
      result[z] <- paste0(i, " is divisible by ", div)
    }else{
      result[z] <- paste0(i, " is not divisible by ", div)
    }
    z <- z+1
  }
  return(result)
}

check_1(x = c(7,15, 16, 20), div = 2) #extend this to ensure that they are printed in an new line each

#Write a function that returns the multiplication of three numbers every time we call it
    ## How does this work with Vector multiplication