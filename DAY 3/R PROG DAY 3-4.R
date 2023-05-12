install.packages("ggplot2") # for the mpg dataset 
library(ggplot2)
mpg <- ggplot2::mpg 
mpg[mpg$cty == max(mpg$cty), ] 
mpg[mpg$class %in% c("compact", "subcompact") & mpg$displ == 
min(mpg[mpg$class %in% c("compact", "subcompact"), "displ"]), ]