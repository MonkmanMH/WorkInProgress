#
# shiny app from 
# https://stackoverflow.com/questions/27353786/r-shiny-application-for-ci



library(shiny)

# Define UI for slider demo application
shinyUI(fluidPage(
  
  #  Application title
  titlePanel("Confidence Interval for the mean when sigma is known"),
  
  # Sidebar with sliders that demonstrate various available
  # options
  sidebarLayout(
    sidebarPanel(
      # Simple integer interval
      sliderInput("mean", "Mean:", 
                  min=0, max=500, value=250),
      
      # Decimal interval with step value
      sliderInput("confidence", "Confidence level:", 
                  min = 0, max = 1, value = 0.95, step= 0.01),
      
      # Specification of range within an interval
      sliderInput("sigma", "Standard deviation:",
                  min = 0, max = 300, value = 10),
      
      # Provide a custom currency format for value display, 
      # with basic animation
      sliderInput("Samplesize", "Sample size:", 
                  min = 0, max = 1000, value = 30, step = 1),
      
    ),
    
    # Show a table summarizing the values entered
    mainPanel(
      tableOutput("values")
    )
  )
))

# -30-