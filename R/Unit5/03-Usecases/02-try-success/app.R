ui <- fluidPage(
  tags$h3(
    style="font-variant: small-caps; text-decoration: underline; color: gold;", 
    "R Shiny App"
  ),
  
  
  sidebarLayout(
    
    sidebarPanel(
      style="background: gold;",      
      titlePanel(
        "Classification of Stars"
      ),
      
      selectInput(
        "modelTypeInput", 
        "Classification Model",
        choices = c(
          "Decision Tree",
          "Random Forest",
          "Support Vector Machine"
         ),
      )
    ),
    
    
    
    mainPanel(
      tags$p(
        style="font-variant: small-caps; text-decoration: underline; color: gold;", 
        "Plot"
      ),
      
      textOutput("modeltype"),
      br(),
      textOutput("plotSection"),
      br(),
      br(),
      textOutput("accuracyValueSection")
    )
    
    
  )
)




dt <- function(train) {
  model = ctree(Type~(L+R+A_M), data = train)
  return(model)
}



rf <- function(train) {
  model = randomForest(Type~(L+R+A_M), data = train)
  return(model)
}



svm <- function(train) {
  model = svm(Type~(L+R+A_M), data = train)
  return(model)
}



accuracy = function(model, test) {
  prediction = predict(model, test)
  cfm = addmargins(table(prediction, test$Type))
  accu = (cfm[1, 1] + cfm[2, 2] + cfm[3, 3] + cfm[4, 4] + cfm[5, 5] + cfm[6, 6]) / 68
  value = paste(as.integer(accu * 100), "%")
  return(value)
}




server <- function(input, output) {
  data = read.csv("Stars.csv")
  
  set.seed(120)
  
  #library(caTools)
  split = sample.split(data, SplitRatio = 0.8)
  train = subset(data, split = TRUE)
  test = subset(data, split = FALSE)
  
  output$modeltype <- renderText({
    if(input$modelTypeInput == "Decision Tree") {
      output$plotSection <- renderPlot(
        plot(dt(train))
      )
      output$accuracyValueSection <- renderText({
        paste("Accuracy: ", accuracy(dt(train), test))
      })
      input$modelTypeInput
    } else if(input$modelTypeInput == "Random Forest") {
      output$plotSection <- renderText({
        summary(rf(train))
      })
      output$accuracyValueSection <- renderText("Accuracy in progress...")
      input$modelTypeInput
    } else {
      output$plotSection <- renderPlot("")
      output$accuracyValueSection <- renderText("")
      svm()
    }
  })
}




shinyApp(ui = ui, server = server)