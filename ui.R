ui <- function(request){
  fluidPage(
    
    titlePanel("Forecasting using Solar Data"),
    
    sidebarLayout(
      
      sidebarPanel(
        selectInput("column_selected", "Select column:",
                       choices=unique(colnames(SolarEnergy)[!colnames(SolarEnergy) %in% c("UNIXTime", "Data", "Time", "TimeSunRise", "TimeSunSet")]),
                       selected = "Temperature"
        ),
        hr(),
        helpText("Select the type of data you want to forecast"),
        hr(),
        sliderInput("nbr_selected", "Select number:",
                    min = 0, max = 2000,
                    value = 1000, step = 100),
        hr(),
        helpText("Select the number of points to forecast"),
        hr(),
        actionButton(inputId = "render_plot",
                     label = "Click here to generate plot"),
      ),
      
      mainPanel(
        plotOutput("solar_plot")
      )
    )
  )
  
}