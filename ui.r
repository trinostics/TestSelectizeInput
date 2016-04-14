shinyUI(pageWithSidebar(
  headerPanel("selectizeInput: sorts in Firefox, not in Chrome"),
  sidebarPanel(
    h3("Press button to add new columns"),
         actionButton("adday", "Add 'foo' and 'bar' columns"),
         actionButton("addcounts", "Add count columns"),
         br(),
         hr(),
         selectInput('colName', label = "Select Table column to summarize", 
                     selectize = TRUE,
                        choices = NULL),
         actionButton("summarize", "Summarize selected column (dead for the moment)")
 
  ),
  mainPanel(
    h3("Table"),
    tableOutput('table')
  )
)
)
