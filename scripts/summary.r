#Laura Rickey 
#Summary info

#Loading packages
library(dplyr)


# Student survey data from INFO-498F repository.
data <- read.csv('https://raw.githubusercontent.com/INFO-498F/a7-survey-data/master/intro_survey_data.csv')

#G-options
options(stringsAsFactors = FALSE)

#How many students are in the this class
#Of those students how many prefer dogs and how many prefer cats 
students <- function(x) {
  rt <- list()
  rt$students<- nrow(x)
  rt$dog<- sum(x == "A dog person...")
  rt$cat<- cat<- sum(x == "A cat person....") 
  return (rt)
}



#What is the mean and max number of countries visited by the students in this class
#How many students visited over 10 countries
countries <- function(x) {
  rt <- list()
  rt$mean<- mean(x$How.many.countries.have.you.visited.in.your.life.)
  rt$max<- max(x$How.many.countries.have.you.visited.in.your.life.)
  rt$over<- sum(x$How.many.countries.have.you.visited.in.your.life. >= 10) 
  return (rt)
}
