library(shiny)
join = as.Date('2016-09-16')
join = format(join,'%b %Y')
today = as.Date('2017-04-16')
today = format(today, '%b %Y')

join2 = as.Date('2017-04-16')
join2=format(join2,'%b %Y')
today2=format(Sys.time(), '%b %Y')
# Define UI ----
ui <- fluidPage(
  
  titlePanel("Mehul Katara"),
  sidebarPanel(width = 3,
    img(src = "mehul.jpg"),
    h3("About Me"),
    p("Born in 16 April 1991. I live in Ahmedabad. Actually I am from another city Vijaynagar(S.K)"),
    p("I’m interested in computer science. Computers first appeared in my life when I was ten. Then I had got my first computer. It was HCL Pentium 4 Processor. At first, I was just playing computer games, but some time later, I noticed that I could do a lot more things with the computer, for example programming in Java,R, C++ and HTML."),
    p("I have my own site on the internet and I have done many programmes. I hope that in the future I will get a job as a computer scientist."),
    br(),
    h3("Contact Me"),
    a("MehulKatara@Hotmail.com"),
    p("Feel free to email me to provide some feedback.","Give me suggestions or ask me for programming related query or to just say hello!")
  ),align="justify",
  mainPanel(
    h3("Experience"),hr(),
   
    column(5, 
    h4("Data Scientist"),
    h6(paste(join2," to ",today2),strong("Working")),
    p("TM Systems Pvt. Ltd."),
    code("R,Tableau,Jaspersoft-Studio,PowerBI ")
    ),
    
    column(5, 
    h4("Data Analyst"),
    h6(paste(join," to ",today),strong("(8 months)")),
    p("Inclusive Co-Operative Bank Ltd."),
    code("R,Networking,Analytics,PowerBI,MS-Office")
    )),
  
  mainPanel(
    
    h3("Certifications"),hr(),
    img(src = "tableau-icon.png"),
    h4(tags$a(href="https://www.edureka.co/my-certificate/2ba3ae584ec66972495f3a823531bb05", "Tableau Training & Certification")),
    p("Jun 2017 (1 month)")
    )
  
  )

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
