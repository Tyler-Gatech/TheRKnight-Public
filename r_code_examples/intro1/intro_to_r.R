#

#1. R file is just a text file , that is compiled by the R Software
#You save your files as .R

#2. Console vs Editor
c <- 1
d <- 2
c + d
cd <- c + d


#comment
not comment

#hit ctrl + enter to run selected/highlighted line(s)

#bring in data

#Built in data sets
data()

#bring in a built in data set
data(mtcars)

mtcars

#structure type
str(mtcars)

#summary of data 
summary(mtcars)

#= vs <- 
a <- 1
b = 2

#create copy of data.frame or any other r element
test_cars <- mtcars


#write as csv
write.csv(test_cars, "./test_cars1.csv")

#working directory
getwd()

#read the csv back in 
test_cars_new <- read.csv("./test_cars1.csv")

test_cars_new

#data frame vs vector

vec_X <- test_cars_new$X


my_vec <- c(1,2,3)
my_vec <- c(1:3)
my_vec <- seq(from = 1,to = 3,by = 1)
my_vec <- seq(1,3,1)

?seq

#Type conversion forced
my_vec <- c(1 , "A")

#indexing in R in incredibly important to learn
my_index <- c(1,4,6)
new_vec <- seq(10,100, 10)

#Passing index to a vector
new_vec[c(1,4,6)]
new_vec[my_index]
new_vec[c(TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE)]
new_vec[c(T,F,F,T,F,T,F,F,F,F)]

#Boolean index
new_vec[c(T,F)]
new_vec[c(T,F,F)]
new_vec[c(T,F,F,F)]

#indexing in R
#test_cars_new[rows, columns]
test_cars_new[c(T,F), ]
test_cars_new[my_index,]


#I only want cars with > 20 mpg
#Create a logical vector 
gt_20mpg <- test_cars_new$mpg > 20 
test_cars_new[gt_20mpg,1:3]



#1 What's your working directory? 
getwd()

#2 Change your working directory
setwd("./public")
getwd()
setwd("../")
getwd()
setwd("C:/Users/Tyler/Documents/TheRKnight/public")
getwd() 




#2
install.packages("")
