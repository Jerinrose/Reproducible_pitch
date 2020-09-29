#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)

server <- function(input, output) {
    
    X<-reactive({
        if(input$healthy=="Yes")
            paste(em(strong("Healthy")))
        
   else
       paste(em(strong("Not healthy")))
    })
    output$name_of_person<-renderText({
        paste(strong("Name:"),input$name)
    })
    
    output$Country_of<-renderText({
        paste(strong("Country:"),input$country)
    })
    
       
    #})
    output$healthy_or_not<-renderText({
       X()
           
    })
    
      output$age<-renderText({
          paste(strong("Age:"),2020-input$dob)
      })
      
      output$ht_in<-renderText({
          paste(strong("Height:"),input$height,"in")
      })
    
    
}
