library(shiny)
library(ggplot2)

dataset <- diamonds

fluidPage(
  
  titlePanel("Epi-Mouth"),
  
  sidebarPanel(
    
    sliderInput('sampleSize', 'Indicate the number of observations (sample size) to simulate', min=1, max=10000,
                value=min(1000, nrow(dataset)), step=500, round=0),
    
    selectInput('x', 'Using the drop down box, select the population of interest', names(dataset)),
    selectInput('y', 'If applicable, specify the age range of simulated observations', names(dataset), names(dataset)[[2]]),
    selectInput('color', 'Specify the file type to be exported', c('None', names(dataset))),
    
    checkboxInput('jitter', 'Check this box if you want simulated probabilities to be rounded to 0 or 1'),
    checkboxInput('jitter', 'Deciduous Teeth'),
    checkboxInput('smooth', 'Permanent Teeth'),
    
    selectInput('facet_row', 'User Input 1', c(None='.', names(dataset))),
    selectInput('facet_col', 'User Input 2', c(None='.', names(dataset)))
  ),
  
  mainPanel(
    plotOutput('plot')
  )
)