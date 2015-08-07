shinyServer(function(input, output, session) {
  
  rval <- reactiveValues()
  
  rval$df <- data.frame(expense = 1,
                          paid = 2,
                          lost = 3,
                          traded = 4,
                          bought = 5,
                          sold = 6)
  
  # Update the column name selection box
  observe({
    numnames <- names(rval$df)
    numnames <- c(Choose='', sort(numnames))
    updateSelectizeInput(session, 'colName', choices = numnames, 
                     server = TRUE)
  })
  
  observeEvent(input$adday, {
    rval$df$foo <- 1
    rval$df$bar <- 2
  })
  
  observeEvent(input$addcounts, {
    rval$df <- cbind(rval$df, count1 = 100, count2 = 200)
  })
  
})