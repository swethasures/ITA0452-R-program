library(dplyr) 
data(mpg) # find the standard deviation of city miles per gallon 
sd_city_mpg <- sd(mpg$cty, na.rm = TRUE) 
sd_city_mpg # find the variance of highway miles per gallon 
var_highway_mpg <- var(mpg$hwy, na.rm = TRUE)
var_highway_mpg