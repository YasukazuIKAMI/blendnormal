library(ggplot2)
library(reshape)
set.seed(132)

shinyServer(
    
    function(input, output) {
        output$newHist <- renderPlot({
            nsamp <- input$nsamp
            mu1   <- input$mu1
            mu2   <- input$mu2
            sd1   <- input$sd1
            sd2   <- input$sd2

            input1 <- rnorm(nsamp,mean=mu1,sd=sd1)
            input2 <- rnorm(nsamp,mean=mu2,sd=sd2)
            average <- (input1+input2)/2
            
            df <- melt(data.frame(input1,input2,average))

            g <- ggplot(df,aes(x=value,fill=variable))
            g <- g + geom_histogram(alpha=0.5,position="identity")
            plot(g)
            
            output$mu3 <- renderPrint({round(mean(average),2)})
            output$sd3 <- renderPrint({round(sd(average),2)})
            

        })
    }
)