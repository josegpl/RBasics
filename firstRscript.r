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