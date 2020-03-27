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