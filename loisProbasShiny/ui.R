
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Probabilités Antoine - Alexis"),

  # Sidebar with a slider input for number of bins
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        tabPanel("Loi de Poisson", 
                 sliderInput(inputId = "lambda", label = 'lambda : ', min = 0,  max = 10, value = 2),
                 plotOutput(outputId = 'poissonPlot')),
        tabPanel("Loi Normale", plotOutput('normalePlot'))
      )
    )
))
