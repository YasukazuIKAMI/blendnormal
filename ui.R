shinyUI(pageWithSidebar(
headerPanel("Illustrating blend of two normal distributions"),
sidebarPanel(
 #   numericInput('seed', 'input seed', 0,min=0,max=1000000000000,step=1),
h4('Documentation'),
p("This shiny application calculates and illustrates the combined distribution of two sets of random sampling from normal distribution."),
p("Two sample sets named `input1` and `input2`, with size `nsamp` are prepared. Parameter of `input1` and `input2` are their means and standard deviations. For `input1` mean is `mu1`, standard deviation is `sd1`. Same rule for `input2`."),
p("Each elements from two sample sets are averaged. And new sample set `average` is generated.
Shiny application illustrates the relation of input and averaged distributions graphically.
User can input mean and standard deviation parameter for each of input distributions 
and number of samples."),
p("Range of parameters are as follows.
`nsamp` 2 to 1000000, default = 100.
`mu1` -10 to 10, default = 0.
`sd1` 1 to 10, default = 1.
`mu2` -10 to 10, default = 0.
`sd2` 1 to 10, default = 1."),
numericInput('nsamp', 'number of samples',100,min=2,max=1000000,step=1),
numericInput('mu1', 'mean of input1', 0,min=-10,max=10,step=1),
numericInput('sd1', 'standard deviation of input1', 1,min=1,max=10,step=1),
numericInput('mu2', 'mean of input2', 0,min=-10,max=10,step=1),
numericInput('sd2', 'standard deviation of input2', 1,min=1,max=10,step=1)
),
mainPanel(
    plotOutput('newHist'),
    p('mean of averaged set is'),
    verbatimTextOutput("mu3"),
    p('standard deviation of averaged set is'),
    verbatimTextOutput("sd3")
)
))