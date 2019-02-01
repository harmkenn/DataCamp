---
title: "Central Limit Theorem on NBA Stats"
author: "Ken Harmon"
date: "2019 January 31"
output:
  html_document:  
    keep_md: true
    code_folding: hide
    fig_height: 6
    fig_width: 12
    fig_align: 'center'
---

# {.tabset .tabset-fade}





## Background

## Select Data


```r
library(shiny)
library(dplyr)
library(readr)
NBAplayers <- read_csv("../datasets/NBAplayers.csv")

# UI
ui <- fluidPage(
  sidebarLayout(
    
    # Input(s)
    sidebarPanel(
      
      # Select variables to study
      checkboxGroupInput(inputId = "selected_var",
                         label = "Select variables:",
                         choices = names(NBAplayers),
                         selected = c("height"))
      
    ),

        
    # Output(s)
    mainPanel(
      HTML("Select a variables, then download and/or view the data."),
      br(), br(),
      downloadButton(outputId = "download_data", label = "Download data"),
      br(), br(),
      DT::dataTableOutput(outputId = "NBAstats")
    )
  )
)

# Server
server <- function(input, output) {
  
  # Create reactive data frame
  stats_selected <- reactive({
    req(input$selected_var)               # ensure input$selected_var is available
    NBAplayers %>% select(input$selected_var) # select columns of NBAstats
  })
  
  # Create data table
  output$NBAstats <- DT::renderDataTable({
    DT::datatable(data = stats_selected(), 
                  options = list(pageLength = 10), 
                  rownames = FALSE)
  })
  
  # Download file
  output$download_data <- downloadHandler(
    filename = function() {
      "nbastats.csv"
    },
    content = function(file) { 
        write_csv(stats_selected(), path = file) 
      })
}
# Create a Shiny app object
shinyApp(ui = ui, server = server)
```

<!--html_preserve--><div style="width: 100% ; height: 400px ; text-align: center; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box;" class="muted well">Shiny applications not supported in static R Markdown documents</div><!--/html_preserve-->

## CLT


```r
# Load packages -----------------------------------------------------
library(shiny)
library(openintro)
library(gridExtra)
library(BHH2)
NBAplayers <- read.csv("../datasets/NBAplayers.csv")


# Define UI ---------------------------------------------------------
ui <- pageWithSidebar(
  headerPanel("Central Limit Theorem for NBAstats"),
  sidebarPanel(
    radioButtons(inputId = "stat", label = "NBA Stat:", choices = names(NBAplayers))
              ),
  mainPanel(
    sliderInput(inputId = "bins", label = "Number of bins:", min = 1, max = 50, value = 30),
    plotOutput(outputId = "distPlot"),
    verbatimTextOutput("summary"),
    sliderInput("n", "Sample size:", value = 30, min = 2, max = 500)
  )
)

# Define server function required to create the scatterplot-
server <- function(input, output) {

 output$distPlot <- renderPlot({

    x <- NBAplayers %>% select(input$stat) %>% filter_all(any_vars(. != 0)) %>% pull() %>% na.omit() %>% as.numeric() # select columns of NBA

    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    hist(x, breaks = bins, col = "#75AADB", border = "white", xlab = input$stat,  main = "")

    })
   output$summary <- renderPrint({
    x <- NBAplayers %>% select(input$stat) %>% filter_all(any_vars(. != 0)) %>% pull() %>% na.omit() %>% as.numeric()

    summary(x)
  })

}


# Create a Shiny app object
shinyApp(ui = ui, server = server)
```

<!--html_preserve--><div style="width: 100% ; height: 400px ; text-align: center; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box;" class="muted well">Shiny applications not supported in static R Markdown documents</div><!--/html_preserve-->
