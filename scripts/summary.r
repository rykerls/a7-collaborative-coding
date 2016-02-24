###########################
# Ryker Schwartzenberger
# Luke Baker
# Patrick Smith
# Laura Rickey
# INFO-498FE
# a7-collaborative-coding
###########################

# How many students are in the this class
# Of those students how many prefer dogs and how many prefer cats 
students <- function(x) {
  rt <- list()
  rt$students<- nrow(x)
  rt$dog <- sum(x == "A dog person...")
  rt$cat <- sum(x == "A cat person....") 
  rt$both <- sum(x == "Both!")
  rt$neither <- rt$students - (rt$dog + rt$cat + rt$both)
  return (rt)
}

# What is the mean and max number of countries visited by the students in this class
# How many students visited over 10 countries
countries <- function(x) {
  rt <- list()
  rt$mean<- round(mean(x$How.many.countries.have.you.visited.in.your.life.), 2)
  rt$max<- max(x$How.many.countries.have.you.visited.in.your.life.)
  rt$over<- sum(x$How.many.countries.have.you.visited.in.your.life. >= 10) 
  return (rt)
}
