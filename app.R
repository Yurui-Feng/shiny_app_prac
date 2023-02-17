library(shiny)

ui <- fluidPage(
  sliderInput("x", "If my age", min = 1, max = 100, value = 22),
  sliderInput("y", "and your age is", min = 1, max = 100, value = 23),
  "then, our age difference is", textOutput("difference")
)

server <- function(input, output, session) {
  output$difference <- renderText({ 
    difference <- abs(input$x - input$y)
    difference
  })
}

shinyApp(ui, server)