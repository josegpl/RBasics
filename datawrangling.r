library(dslabs)

data("murders")

install.packages("dplyr")
library(dplyr)

#mutate(murders, rate=total/population*100000)
#for some reason, it didn't change murders dataframe so an auxiliary object was added so it could

new <- mutate(murders, rate=total/population*100000)
murders <- new
head(murders)

filter(murders, rate <= 1)

newtable <- select(murders, state, region, rate)
newtable
filter(newtable, rate <= 1)

#avoiding all that and doing one operation using pipe

murders %>% select(state, region, date) %>% filter(rate <=1)

###creating dataframes

grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
                     exam_1 = c(95, 80, 90, 85), 
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)
grades

##VISUALIZATION OF DATA

# a simple scatterplot of total murders versus population
x <- murders$population /10^6
y <- murders$total
plot(x, y)

# a histogram of murder rates
hist(murders$rate)

# boxplots of murder rates by region
boxplot(rate~region, data = murders)

#####Testing of some programming skills in R using another dataset

library(dslabs)
data(heights)
heights

names(heights)
heights$height[777]

heights[777, 1]
max(heights$height)
which.min(heights$height)
mean(heights$height)
median(heights$height)

nomale <- ifelse()


#proportion of males in heights dataframe
nomale <-ifelse(heights$sex == "Male", 1, 0)
nomale
sum(nomale)/1050

taller78 <- ifelse(heights$height>78, 1, 0)
sum(taller78)

#females taller than 78 indices

ind <- which(heights$sex == "Female")
ind

aux <- ifelse(heights$height[ind]>78, 1, 0)
aux
sum(aux)





