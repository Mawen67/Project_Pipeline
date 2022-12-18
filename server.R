server <- function(session, input, output) {
  
  variable_selected <- eventReactive(input$render_plot, {
    input$column_selected
  })
  
  nbr_forecast_selected <- eventReactive(input$render_plot, {
    input$nbr_selected
  })
  
  plot_title <- eventReactive(input$render_plot, {
    paste("Forecasting", nbr_forecast_selected(), "points for variable", variable_selected())
  })

  
  output$solar_plot <- renderPlot({
    mySolarPackage::predict_solar(SolarEnergy, variable_selected()) + labs(title = plot_title())
  })
}