ui = fluidPage(
  titlePanel("BC Liquor Store Prices"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "PriceInput", # An identifier name
        "price",
        min = 0,
        max = 100,
        value = c(25, 40),
        pre = "$"
      ),
      radioButtons(
        "TypeInput",  # An identifier name
        "Product Type",
        choices = c("Beer", "Refreshment", "Sprites", "Wine"),
        selected = "Wine"
      ),
      selectInput(
        "CountryInput",
        "Country",
        choices = c("Select Your country", "CANADA", "FRANCE", "ITALY")
      )
    ),
    
    mainPanel(
      h1("An rnorm() plot."),
      plotOutput("coolplot"), # coolplot is identity
      # br(),
      # br(),
      # tableOutput("results")
    )
  )
)

server = function(input, output) {
  output$coolplot <- renderPlot({
    #plot(rnorm(100))
    plot(rnorm(input$PriceInput[1]), type = "o")
  })
}

shinyApp(ui = ui, server = server)