ui <- fluidPage(
  tags$h1(
    "Shiny App"
  ),
  
  sidebarLayout(
    
    sidebarPanel(
      titlePanel("Inputs..."),
      
      inputPanel(
        textInput("num1", "Enter a number: "),
        textInput("num2", "Enter a number: "),
        selectInput(
          "op", 
          "Operation",
          c("Select", "Addition", "Subraction", "Multiplication", "Division")
        )
      ),
    ),
    
    mainPanel(
      tags$h3("Output: "),
      br(),
      br(),
      textOutput("Sum")
    )
    
    
  )
)

sum = function(x, y) {
  return(x+y)
}

sub = function(x, y) {
  return(x-y)
}

mul = function(x, y) {
  return(x**y)
}

div = function(x, y) {
  return(x/y)
}

server <- function(input, output) {
  output$Sum = renderText({
    if(input$op == "Addition") {
      sum(as.integer(input$num1), as.integer(input$num2))
    } else if (input$op == "Subraction") {
      sub(as.integer(input$num1), as.integer(input$num2))
    } else if(input$op == "Multiplication") {
      mul(as.integer(input$num1), as.integer(input$num2))
    } else if (input$op == "Division") {
      div(as.integer(input$num1), as.integer(input$num2))
    } else {
      "Give all three inputs"
    }
  })
}

shinyApp(ui = ui, server = server)