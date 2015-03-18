library(shiny)
shinyUI(pageWithSidebar(
	headerPanel("Example 2: 2D Kernel Density Estimation"),
	sidebarPanel(
		# Input UI elements go here.
		checkboxGroupInput("type","Type",
			choices=c("Heat Map"="heat","Contour Plot"="contour")),
		numericInput("smooth","Bandwidth",1,min=0.01,step=0.05),
		helpText("Smoothing parameter (for both directions).")
	),
	mainPanel(
		# Output UI elements go here.
		plotOutput("plot",width=800,height=800)
	)
))