
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  output$normalePlot <- renderPlot ({
    values <- rnorm(input$numberValues,
                    input$meanNorm,
                    input$sdNorm);
    hist( values,
          main = "Histogramme de la loi normale",
          xlab = "")
  })

  output$poissonPlot <- renderPlot({
    x <- rpois(input$n, input$lambda)
    hist(x, border = "red",
         main = "Histogramme de la loi de Poisson", 
         xlab = "")
  })
})
