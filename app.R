#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    tags$head(
        tags$link(rel = "stylesheet",
                  type = "text/css",
                  href = "styles.css")
    ),
    # Application title
    titlePanel("Tooltip Demo on Shiny"),
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            tags$span(class = "mytooltip",
                      "Hover to me, and I will show you a tooltip",
                      tags$span(class = "mytooltiptext",
                                "Tooltip text"))
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            "You can also place a tooltip to a single",
            tags$span(class = "mytooltip",
                      "word.",
                      tags$span(class = "mytooltiptext",
                                "Like this")),
            tags$div("Or to an icon like this:",
                     tags$span(class = "mytooltip",
                               icon("github"),
                               tags$span(class = "mytooltiptext",
                                         tags$a("Check out the repo!",
                                                href="https://github.com/nsunami/shiny-tooltip-demo",
                                                target="_blank")
                               )))
        )
    )
)

# Nothing to render
server <- function(input, output) {
    NULL
}

# Run the application 
shinyApp(ui = ui, server = server)
