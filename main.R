

box::use(. / functions / ui)

ui <- function() {
  ui$ui_main()
}

server <- function(input, output, session) {
  ui$server_main()
}

box::use(shiny[shinyApp])
shinyApp(ui, server)
