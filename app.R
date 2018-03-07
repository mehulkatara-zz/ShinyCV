library(shiny)
joind = as.Date('2016-09-16')
joinc = format(joind,'%b %Y')
todayd = as.Date('2017-04-16')
todayc = format(todayd, '%b %Y')
work=todayd-joind

join2d = as.Date('2017/04/16')
join2c=format(join2d,'%b %Y')
today2d=as.Date(format(Sys.time(), '%Y/%m/%d'))
today2c=format(today2d, '%b %Y')
work2=as.character(today2d-join2d)
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
    h6(paste(join2c," to ",today2c),strong(paste("(",work2," Days ) + Working"))),
    p("TM Systems Pvt. Ltd."),
    code("R,Tableau(Desktop,Server),Jaspersoft(Studio,Server),PowerBI ")
    ),
    
    column(5, 
    h4("Data Analyst"),
    h6(paste(joinc," to ",todayc),strong(paste("(",work," Days )"))),
    p("Inclusive Co-Operative Bank Ltd."),
    code("R,Networking,Analytics,PowerBI")
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
