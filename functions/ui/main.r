#' @export
ui_main <- function(id = "main") {
  box::use(shiny[uiOutput, NS])
  ns <- NS(id)
  uiOutput(ns("screen"))
}

#' @export
server_main <- function(id = "main") {
  box::use(shiny[moduleServer, renderUI])
  moduleServer(
    id,
    function(input, output, session) {
      output$screen <- renderUI({
        box::use(
          shiny[tags, withTags, div], bs4Dash[
            dashboardPage,
            dashboardHeader,
            dashboardSidebar,
            dashboardBody,
            dashboardControlbar,
            dashboardFooter
          ]
        )

        dashboardPage(
          dashboardHeader(compact = TRUE, disable = TRUE),
          dashboardSidebar(disable = TRUE),
          dashboardBody(
            withTags(
              div(
                class = "p-5",
              )
            )
          ),
          # dashboardControlbar(disable = TRUE),
          footer = dashboardFooter(),
          title = "R Cookbook",
        )
      })
    }
  )
}
