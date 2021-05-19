#For loops in R in 10 minutes


#Whats a common use of a for loop 

#List of 10 cities, 
#start at City A and drive to closest city
#then City B and drive to closest remaining city (removing City A)
#then City C and drive to closest remaining city (removing City B)
#and so on


#Any time you have iterative calculations, where the data set changes based on the previous calculation
#In this case City A is removed from the data set


#One way I use this as work
#I run a query to extract All tables in a database. 
#I dont know the data set that exists yet so a i need to create a data frame of tables
#Once i have that list of tables, I want to run a query for the top 5 rows in each tabel
#and make sure none of the columns have changed. 

