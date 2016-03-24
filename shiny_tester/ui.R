#
# This is a test to
# - create a list in the server file and 
# - use that list to populate a select interface on the UI

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Copy the line below to make a select box 
  selectInput("select", label = h3("Select box"), 
              choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
              selected = 1),
  
  hr(),
  
  fluidRow(column(3, verbatimTextOutput("value"))),
  
  hr(),
  
  fluidRow(column(3, 
                  uiOutput("cityControls")
                  )),


  fluidRow(column(3,
                  verbatimTextOutput("city")))
    
))
