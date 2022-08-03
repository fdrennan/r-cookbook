 

ui <- function() {
  box::use(shiny[uiOutput])
  uiOutput("screen")
}

server <- function(input, output, session) {
  box::use(shiny[renderUI])

  output$screen <- renderUI({
    box::use(
      shiny[tags, withTags, div], bs4Dash[
        dashboardPage,
        dashboardHeader,
        dashboardSidebar,
        dashboardBody,
        dashboardControlbar,
        dashboardFooter
      ],
      waiter[spin_1]
    )

    dashboardPage(
      dashboardHeader(disable = FALSE),
      dashboardSidebar(disable = FALSE),
      dashboardBody(
        withTags(
          div(
            class = "p-5",
            h1("Hello")
          )
        )
      ),
      dashboardControlbar(disable = TRUE),
      footer = dashboardFooter(),
      title = "R Cookbook",
      freshTheme = NULL,
      # preloader = list(
      #   html = spin_1(),
      #   color = "#333e48"
      # ),
      options = NULL,
      fullscreen = TRUE,
      help = TRUE,
      dark = TRUE,
      scrollToTop = TRUE
    )
  })
}

box::use(shiny[shinyApp])
shinyApp(ui, server)
