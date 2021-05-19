
# 10 tips to get started in R studio

# 1. Use # to comment out code, so it won't run in console.
# Hit ctrl+shift+c to comment line/lines

# 2. create vector objects. use arrow "<-" or "=" to assign data to an operator
# hit ctrl + enter to run current editor line in console
a_vec <- 5
b_vec <- 1:4

a_vec
b_vec

c_vec = 4:6
d_vec <- c(1,3,5)
e_vec <- c("one", "two", "three", "four")


cd_df <- data.frame(c,d)
cd_df2 <- data.frame(rbind(c,d))



# 3. Learn to subset 
c
c[c(1,3)]
c[c(1:3)]

# 4. Read in Data Sets. Can connect R to files, databases, apis, anything


#1. Read in Data from CSV computer

#Explicit Directory
getwd()
setwd("C:/Users/Tyler/Documents/TheRKnight")
#Move down a directory
setwd("./public")


#Subdirectory


#2. Read in Data from R Library


#3. Create a data set



# 5. Download Packages. R has a great community
#Build off base r functions


install.packages("tidyverse")
install.packages("ggplot2")
library(tidyverse)


#Learn to Work with vectors 
#4. Numeric Vectors



#5. TF Vectors
#Note the repeating nature



#Tidyverse vs base R
#6. Mutate New Column


#7. Aggregation


#8. Pivot Wide vs Narrow



#Basic Graphing
#9 GGPlot line/bar


#10. Write a function






