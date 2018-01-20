
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
    observeEvent(input$saveNormale, {
      write.csv2(x = values, file = file.path("data", "saveNormale.csv"), row.names = FALSE, quote = TRUE)
    })
    
  })

  output$poissonPlot <- renderPlot({
    loi <- rpois(input$n, input$lambda)
    hist(loi, border = "red",
         main = "Histogramme de la loi de Poisson", 
         xlab = "")
    observeEvent(input$savePoisson, {
      write.csv2(x = loi, file = file.path("data", "savePoisson.csv"), row.names = FALSE, quote = TRUE)
    })
  })
})
