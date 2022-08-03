

ui <- function() {
 ui_main()
}

server <- function(input, output, session) {
server_main()
}

box::use(shiny[shinyApp])
shinyApp(ui, server)
