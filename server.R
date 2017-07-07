
library(shiny)
library(RCurl)
library(caret)
attach(airquality)
modFit <- train(Ozone ~ Solar.R + Wind + Temp + Month + Day, method="glm", data=airquality, na.action = na.omit)
shinyServer(
        function(input, output) { 
                #pred = predict(modFit, data)
                #output$prediction <- renderPrint ({as.string(pred)})
                output$prediction <- renderPrint ({
                        Solar.R = input$Solar.R
                        Wind = input$Wind
                        Temp = input$Temp
                        Month = input$Month
                        Day = input$Day
                        predict(modFit,data.frame(Solar.R, Wind, Temp, Month, Day))})
        }
)
