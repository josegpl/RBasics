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
