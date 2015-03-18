library(shiny)
# old <- par(mar=c(0,0,0,0)) # 5.1 4.1 4.1 2.1
# par(old)

foo = function(input,output){
	# Server logic goes here.
	output$plot <- renderPlot({
		x <- cumsum(rnorm(100,input$mean,input$sd))
		plot(1:100,x,type="l",ylim=c(-15,15),xaxt="n",xlab="",bty="n",ylab="")
		abline(h=0,lty="dotted")
	})
}

shinyServer(foo)