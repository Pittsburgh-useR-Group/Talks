library(shiny)
library(MASS) # for mvrnorm()

set.seed(200)
Sigma <- matrix(c(2,1,1,2),2,2,byrow=T)
x <- mvrnorm(200,c(0,0),Sigma)
old <- par(mar=rep(0,4)) # 5.1 4.1 4.1 2.1

shinyServer(function(input,output){
	# Server logic goes here.
	output$plot <- renderPlot({
		type <- input$type
		y <- kde2d(x[,1],x[,2],h=input$smooth)
		plot(x[,1],x[,2],pch=16,col=gray(0,0.5),
			 xlab="",ylab="",bty="n",yaxt="n",xaxt="n")
		if ("heat" %in% type) image(y,add=T)
		if ("contour" %in% type) contour(y,add=T,lwd=2)
		points(x[,1],x[,2],pch=16,col=gray(0,0.75))
	})
})