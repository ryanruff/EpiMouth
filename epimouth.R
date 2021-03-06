#epimouth

#Shiny
install.packages("rsconnect")
rsconnect::setAccountInfo(name='ryanruff', token='97AC7FD7FB751190A310CB3C6F15AE7E', secret='/BbcFijOER55xn4hU5W4my6Wc1u6o2wFbSBoA0zI')
library(rsconnect)
install.packages(c('ggplot2', 'shiny'))
rsconnect::deployApp("~/OneDrive/R work/epimouth")
#=========================================

#Demo, uses server.R and ui.R to build shinyApp, must be in the working directory
#setwd("~/Dropbox/NYU/NYUCD/epimouth")
#runapp to have new window, deploy for web
library(shiny)
library(rsconnect)
runApp()
deployApp()
