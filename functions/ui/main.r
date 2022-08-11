#' @export
ui_main <- function(id = "main") {
  box::use(shiny[uiOutput, NS])
  ns <- NS(id)
  uiOutput(ns("screen"))
}

#' @export
server_main <- function(id = "main") {
  box::use(shiny[moduleServer, renderUI, tags])
  moduleServer(
    id,
    function(input, output, session) {
      output$screen <- renderUI({
        tags$div('Hello')
      })
    }
  )
}
