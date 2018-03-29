#
# This is the server logic of a Shiny web application. You can run the 
library(shiny)

# Define server logic for slider examples
shinyServer(function(input, output) {
  
  # Reactive expression to compose a data frame containing all of
  # the values
  sliderValues <- reactive({
    
    # Compose data frame
    data.frame(
      Name = c("Mean", 
               "Confidence Interval",
               "Standard Deviation",
               "Sample size"),
      Value = as.character(c(input$mean, 
                             input$confidence,
                             input$sigma,
                             input$samplesize), 
                           stringsAsFactors=FALSE)
  )}) 
    
    # Show the values using an HTML table
    output$values <- renderTable({
      sliderValues()
    })
})
  
  
# -30 -  