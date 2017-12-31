library(shiny)

# Define UI ----
ui <- fluidPage(
  
  titlePanel(h1("Mehul Katara",align = "center")),
  sidebarPanel(
    img(src = "mehul.jpg"),
    h3("About Me"),
    p("Born in 16 April 1991. I live in Ahmedabad. Actually I am from another city Vijaynagar(S.K)"),
    p("I’m interested in computer science. Computers first appeared in my life when I was ten. Then I had got my first computer. It was HCL Pentium 4 Processor. At first, I was just playing computer games, but some time later, I noticed that I could do a lot more things with the computer, for example programming in Java,R, C++ and HTML."),
    p("I have my own site on the internet and I have done many programmes. I hope that in the future I will get a job as a computer scientist."),
    br(),
    h3("Contact Me"),
    a("MehulKatara@Hotmail.com"),
    p("Feel free to email me to provide some feedback.","Give me suggestions or ask me for programming related query or to just say hello!")
  ),
  mainPanel(
    h3("Experience"),
    column(5, 
    h4("Data Scientist"),
    h6("Apr 2017 → Current (10 months)"),
    p("TM Systems Pvt. Ltd."),
    p("Technology"),
    code("R,Tableau,Jaspersoft-Studio,PowerBI ")
    ),
    column(5, 
    h4("Data Analyst"),
    h6("Sep 2016 → Apr 2017 (8 months)"),
    p("Inclusive Co-Operative Bank Ltd."),
    p("Technology"),
    code("R,Networking,Analytics,PowerBI,MS-Office")
    )
    
    )
  )

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)