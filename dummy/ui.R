#

library(shiny)
library(ggplot2)
library(scales)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("EPI-MOUTH v1.0"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Sample Size:", min = 1, max = 1000, value = 1),
      selectInput('x', 'Use the drop down menu to select the model to simulate', c("Simple model" = "simple", "Complex model" = "complex", "High risk model" = "risk")),
      selectInput('color', 'Specify the file type to be exported', c('Comma Separated Values' = 'csv', 'SAS Dataset'='sas', 'Stata .dta file'='dta')),
      checkboxInput('jitter', 'Deciduous Teeth'),
      checkboxInput('smooth', 'Permanent Teeth')
      ),  
  mainPanel(
      plotOutput("distPlot")
    )
  )
))

  
