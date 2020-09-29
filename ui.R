#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

ui <- fluidPage(
    
   
    titlePanel("Worker Info"),
    
    # Sidebar layout with input and output definitions ----
   
        
        # Sidebar to demonstrate various slider options ----
        sidebarPanel(
            textInput("name","Enter your name"),
            textInput("country","Enter your Country name"),
            numericInput("height","Enter your height in inches",value = 1),
            sliderInput("dob","Choose year of birth",value = 1965,min=1965,max = 1995,step=1),
            radioButtons("healthy","Are you a Healthy",choices = c("Yes","NO"),selected = "Yes",inline = T)
            ),
            
            
        
        
        # Main panel for displaying outputs ----
        mainPanel(
            
            htmlOutput("name_of_person"),
            htmlOutput("Country_of"),
            htmlOutput("healthy_or_not"),
            htmlOutput("age"),
            htmlOutput("ht_in")
        )
    )

