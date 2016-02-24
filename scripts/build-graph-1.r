#Function to draw a 2 dimensional histogram based on data from our class survey.
#The histogram compares whether or not someone is a Seahawks fan to the kind of pet they like
graph1 <- function(data) {
  data %>% 
    #Arrange the data in order to manipulate the order the bins are displayed in
    #Makes it a bit more logical
    arrange(Do.you.consider.yourself., Are.you.a.Seahawks.fan.) %>% 
    plot_ly(type = 'histogram2d',
            x = Do.you.consider.yourself.,
            y = Are.you.a.Seahawks.fan.) %>% 
    layout(title = 'Seahawks Fans and Their Pets',
           xaxis = list(title = 'Do you consider yourself...'),
           yaxis = list(title = 'Are you a Seahawks fan?')) %>% 
    return()
}

