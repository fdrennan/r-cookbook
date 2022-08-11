box::use(./functions/ui/main)

ui <- function() {
  main$ui_main()
}

server <- function(input, output, session) {
  main$server_main()
}

box::use(shiny[shinyApp])
shinyApp(ui, server)
