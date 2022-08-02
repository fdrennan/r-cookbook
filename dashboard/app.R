library(shiny)
ui <- function() {
  div('Hello')
} 
server <- function(input, output) {

}
shinyApp(ui = ui, server = server)
