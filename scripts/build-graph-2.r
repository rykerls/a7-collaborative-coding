###########################
# Ryker Schwartzenberger
# Luke Baker
# Patrick Smith
# Laura Rickey
# INFO-498FE
# a7-collaborative-coding
###########################

# This function takes in a data frame and creates a chart about the 
# passed in data set
graph2 <- function(data_set) {
    
    #Creating data frame with counts of each year of students and their interest in informatics  
    info_by_year <- filter(data_set, Are.you.interested.in.applying.to.the.Informatics.major. == "Yes") %>% count(What.is.your.current.class.standing.) %>% inner_join(count(data_set, What.is.your.current.class.standing.), by = "What.is.your.current.class.standing.")
    
    #Renaming columns
    colnames(info_by_year)[2-3] <-
      c("Students Interested in Informatics", "Total # of Students")
    
    #Plotly bar plot settings
    p <- plot_ly(
      x = info_by_year$What.is.your.current.class.standing.,
      y = info_by_year$`Students Interested in Informatics`,
      name = 'Students interested in Info',
      type = "bar"
    ) %>% add_trace( #Adding the stacked bar
      x = info_by_year$What.is.your.current.class.standing.,
      y = info_by_year$`Total # of Students`,
      name = 'Total # of Students'
    ) %>% layout( #Axes names
      barmode = "stack", 
      xaxis = list(title = "Class Standing"),
      yaxis = list(title = "# of Students")
    )
    
    return(p)
}
