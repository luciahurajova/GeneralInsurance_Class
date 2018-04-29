library(shiny)
library(ggplot2)

dt_KPI<-read.csv("C:/Users/PC/Documents/GeneralInsurance_Class/data/lesson2_KPI.csv")

# Define a server for the Shiny app
server<-function(input, output) {
  output$picture<-renderPlot( 
  ggplot(data = dt_KPI,
         mapping = aes_string(x = "Premium", y = "Expenses", 
         colour = input$selected_variable)) +
  geom_point() +
  geom_smooth()
                            ) 

                        }