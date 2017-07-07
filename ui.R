library(shiny)
library(caret)
shinyUI (
        pageWithSidebar (
                # Application title
                headerPanel ("Predict air quality based on Ozone pollution"),
                
                sidebarPanel (
                        numericInput('Solar.R', 'Solar Radiation', 185, min = 7, max= 334, step = 10),
                        numericInput('Wind', 'Wind Speed', 10, min = 1.7, max= 20.7, step = 2),
                        numericInput('Temp', 'Temperature', 78, min = 56, max= 97, step = 5),
                        numericInput('Month', 'Month of Year', 7, min = 5, max= 9, step = 1),
                        numericInput('Day', 'Day of Month', 15, min = 1, max= 31, step = 1),
                        submitButton('Submit')
                ),
                mainPanel (
                        h3 ('Results of prediction'),
                        h4 ('Predicted Pollution:'),
                        textOutput("prediction")
                )
        )
        
)