#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Simple Calculator Using R"),

    sidebarLayout(
        sidebarPanel(
            numericInput("a","Enter numberA:",0),
            numericInput("b","Enter numberB:",0),
            submitButton("Submit!")
        ),

        mainPanel(
            h3("NumberA + NumberB ="),
            textOutput("resultsAdd"),
            h3("NumberA - NumberB ="),
            textOutput("resultsSub"),
            h3("NumberA * NumberB ="),
            textOutput("resultsMult"),
            h3("NumberA / NumberB ="),
            textOutput("resultsDiv")
        )
    )
))
