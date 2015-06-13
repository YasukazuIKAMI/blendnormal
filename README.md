#Summary
This repository contains 'ui.R' and 'server.R' of shiny application 
"https://yasukazuikami.shinyapps.io/blendnormal". Description of the application is as follows.

#Description
This shiny application calculates and illustrates the combined distribution of two sets of random sampling from normal distribution.

Two sample sets named `input1` and `input2`, with size `nsamp` are prepared. Parameter of `input1` and `input2` are their means and standard deviations. For `input1` mean is `mu1`, standard deviation is `sd1`. Same rule for `input2`.

Each elements from two sample sets are averaged. And new sample set `average` is generated.
Shiny application illustrates the relation of input and averaged distributions graphically.
User can input mean and standard deviation parameter for each of input distributions 
and number of samples.

Range of parameters are as follows.
`nsamp` 2 to 1000000, default = 100.
`mu1` -10 to 10, default = 0.
`sd1` 1 to 10, default = 1.
`mu2` -10 to 10, default = 0.
`sd2` 1 to 10, default = 1.