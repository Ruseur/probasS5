
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
                 sliderInput(inputId = "n", label = 'Nombre de valeurs : ', min = 100,  max = 10000, value = 25),
                 sliderInput(inputId = "lambda", label = 'lambda : ', min = 1,  max = 10, value = 2),
                 plotOutput(outputId = 'poissonPlot'),
                 actionButton("savePoisson", "Sauvegarder les données")),
        tabPanel("Loi Normale",
                 sliderInput(inputId = "numberValues",
                             label = 'Nombre de valeurs : ',
                             min = 1,  max = 1000,
                             value = 100),
                 sliderInput(inputId = "meanNorm",
                             label = 'Moyenne : ', 
                             min = -100,
                             max = 100,
                             value = 0),
                 sliderInput(inputId = "sdNorm",
                             label = 'Ecart type : ',
                             min = 0, 
                             max = 10,
                             value = 1),
                 plotOutput(outputId = 'normalePlot'),
                 actionButton("saveNormale", "Sauvegarder les données"))
      )
    )
))
