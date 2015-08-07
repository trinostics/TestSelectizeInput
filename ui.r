shinyUI(pageWithSidebar(
  headerPanel("selectizeInput: sorts in Firefox, not in Chrome"),
  sidebarPanel(
         actionButton("adday", "Add 'foo' and 'bar'"),
         actionButton("addcounts", "Add count columns"),
         br(),
         hr(),
         selectInput('colName', label = "Select column in data.frame", 
                     selectize = TRUE,
                        choices = NULL)
 
  ),
  mainPanel(
    h3("Blank")
  )
)
)
