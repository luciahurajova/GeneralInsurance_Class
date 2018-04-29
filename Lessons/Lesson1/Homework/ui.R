
dt_KPI<-read.csv("C:/Users/PC/Documents/GeneralInsurance_Class/data/lesson2_KPI.csv")
variable<-c("Region", "Unit","Segment","Business","Year")
# Use a fluid Bootstrap layout
ui<-fluidPage(    
  
  # Give the page a title
  titlePanel("Lesson 1 - Homework"),
  sidebarLayout(      
    
    sidebarPanel(
      selectInput(inputId = "selected_variable",
                  label ="Colouring Var:",
                  choices=variable
                  )
    ),
    
    mainPanel(
      plotOutput("picture")
       
    )
    
  )
)