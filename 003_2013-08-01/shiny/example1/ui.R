library(shiny)
shinyUI(pageWithSidebar(
	headerPanel("Example 1: Random Walk"),
	sidebarPanel(
		# Input UI elements go here.
		numericInput("mean","Mean",0,step=0.05),
		numericInput("sd","Standard Deviation",1,min=0.01,step=0.1)
	),
	mainPanel(
		# Output UI elements go here.
		plotOutput("plot") # the element to which we will render a reactive plot
	)
))