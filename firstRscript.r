#install.package("dslabs")

library(dslabs)

#load dataset and store it into murders object
data("murders")
class(murders)
str(murders)
head(murders)

#access and read variables inside the dataset

murders$population

names(murders) #list columns (variables)

length(murders$state)

#using another dataset

data("movielens")
class(movielens)
str(movielens)
head(movielens)

#analyze how many movies got each rating
table(movielens$rating)

names(movielens)

#how many levels are in factors in movielens dataset

levels(movielens$genres)
nlevels(movielens$genres)

#more manipulation: attach only the number of mrders to the state
#and sort by less murders to most murders

sort(murders$total)

a <- murders$total
a
b<-murders$state
b

  #visualize and sort 
names(a) <- b
a

sort(a)

#doing the same above using only order fuction and index variable
#except showing the total numbers

index <- order(murders$total)
murders$state[index]

#we can also do that by retrieving the maximum or mininum numbers
  #using max function or by using which.max function which
    #returns THE INDEX of where that max or min is
