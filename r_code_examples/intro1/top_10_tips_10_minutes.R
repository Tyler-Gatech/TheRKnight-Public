#10 tips for Beginners in R, under 10 Minutes

#If you've never used R, begin with "Getting Started in R, under 10 Minutes"

#Tips 1-4 Learn Base R. I recommend learning these 4 basic concepts, then moving to tidyverse.
#Tips 5-10 Start using the Tidyverse. Much easier, but good to have knowledge of base R. 

#1 Index a Vector with another Vector
  my_vec <- seq(10,100,10)
  print(my_vec)
  
  my_index <- c(1,3,5,7,9)
  
  my_vec[my_index]
  
  #Assign to new variable
  my_vec_new <- my_vec[my_index]
  print(my_vec_new)

#2  Index a Vector with a logical vector
  print(my_vec)
  
  log_vec <- c(T,F,F,T,F,T,F,F,F,F)
  my_vec[log_vec]
  my_vec[c(1,4,6)]
  
  #Recycle logical vector
  log_vec_2 <- c(T,F,F)
  my_vec[log_vec_2]
  
  
#3 Learn to index a data frame

  #create a data frame with the built-in mtcars data set
  data(mtcars)
  #copy it to new name
  df_cars <- mtcars
  
  #view first few rows 
  head(df_cars)
  
  #index the data set with the index created above, select 1st 3 columns
  df_cars[my_index, 1:3]
  
  #index the data set, select all columns
  df_cars[my_index,]
  
  #assing to new element
  df_cars_index <- df_cars[my_index,]
  
  #create a logical vector where mpg > 20 
  mpg_gt_20 <- df_cars$mpg >= 20
  
  df_cars[mpg_gt_20,]
  
  cyl_gt_6 <- df_cars$cyl >= 6
  
  df_cars[mpg_gt_20 * cyl_gt_6,]
  

#4 Add a new column
  
  df_cars_index$mpg_gear <- df_cars_index$mpg / df_cars_index$gear

  head(df_cars_index)
  
  
#5 Start using tidyverse
  #This installs the package on your computer from CRAN
  #You only have to install packages once
  #install.packages("tidyverse", dependencies = T)

  #This activates the package in the current session
  library(tidyverse)
  
  #tidyverse uses "tibbles" instead of "data frames"
  
  df_cars_tib <- tibble(df_cars)
  
  rownames(df_cars)

  #Base R 
  df_cars_tib$car_name <- rownames(df_cars)
  
  
  #6 piping data 
  #Messy function/nested
  filter(filter(df_cars_tib, mpg >20), cyl>=6)
  
  
  #Clean piping
  df_cars_tib %>%  #I hit ctrl+shift+m to get the pipe operator 
    filter(cyl >= 6)  %>%    
    filter(mpg >= 20) 
  
  df_cars_tib %>%  #I hit ctrl+shift+m to get the pipe operator 
    filter(cyl >= 6, 
           mpg >= 20) #operates as and AND Filter
  
  df_cars_tib %>%  #I hit ctrl+shift+m to get the pipe operator 
    filter(cyl >= 6 | #use the pipe for OR
           mpg >= 20) 
  
  #if you want to make it permanent, you need to assign it
  df_cars_20mpg <- df_cars_tib %>% 
    filter(mpg >= 20)
  
#7 mutating data by rows
  
  df_cars_tib <- df_cars_tib %>% 
    mutate(gear_carb = gear+carb)
  
#8 mutating data by groups
  df_cars_tib %>% 
    group_by(cyl) %>% 
    summarize(avg_mpg = mean(mpg), #summarize collapses to the group
              count = n())
  
  #what if wanted to compare my cars mpg to avg mpg per cylinder
  df_cars_tib %>% 
    group_by(cyl) %>% 
    mutate(avg_mpg = mean(mpg), #mutate keeps structure
              count = n()) %>% 
    ungroup() %>% 
    mutate(mpg_diff = mpg - avg_mpg)
  
  
#9 Arrange and View your data
  
  #Arrange
  
  df_cars_tib %>% 
    arrange(-mpg)
  
  df_cars_tib %>% 
    arrange(desc(mpg))

  #Slice - similar to indexing
  df_cars_tib %>% 
    arrange(-mpg) %>% 
    slice(1:5)
  
  #View - to get a more complete view of the data
  df_cars_tib %>% 
    arrange(-mpg) %>% 
    View()
  
  
#10 Read / Write your data
  
  df_cars_tib %>% 
    write_csv("cars_tib.csv")

  df_cars_tib %>% 
    write_rds("cars_rds.rds")
  
  df_cars_tib %>% 
    write_rds("cars_compressed.rds", 
            compress = "gz")
  
  #bring these files back in
  df_new <- read_csv("cars_tib.csv")
  
  df_2 <- read_rds("cars_compressed.rds")

  
  
  