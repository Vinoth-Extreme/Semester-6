# library(shiny)

#ui = fluidPage(
#    "Hello world", 
#    "Here, i am.",
#    br(),
#    h1("Hello world from R shiny"),
#    )

#ui = fluidPage(
#  titlePanel("Vinoth"),
#  h1("Hello world")
#)

#ui = fluidPage(
#  titlePanel("Vinoth from R!"),
#  sidebarLayout(
#    sidebarPanel("Our inputs will go here!"),
#    mainPanel("The results will go here")
#  ),
#)

ui = fluidPage(
  titlePanel("Vinoth from R!"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "priceInput",
        "price",
        min = 0,
        max = 40,
        value = c(25, 40),
        pre = "$"
      )
    ),
    mainPanel("The results will go here")
  ),
)

server = function(input, output) {}

shinyApp(ui = ui, server = server)