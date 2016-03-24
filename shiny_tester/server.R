#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  
  # You can access the value of the widget with input$select, e.g.
  output$value <- renderPrint({ input$select })
  
  output$cityControls <- renderUI({
    cities <- c("Seattle", "Anaheim", "Arlington", "Houston", "Oakland")
    selectInput("city", 
                label = h3("Choose City"), 
                choices = cities, 
                selected = "Seattle"
                )
  })

  output$city <- renderPrint({
    input$city
  })
  
  
})
