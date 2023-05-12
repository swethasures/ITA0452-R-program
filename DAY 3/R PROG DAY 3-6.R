library(dplyr) 
data(mpg)
disp_range <- range(mpg$displ, na.rm = TRUE)
disp_range 
disp_quartiles <- quantile(mpg$displ, probs = c(0.25, 0.5, 0.75), na.rm = TRUE) 
disp_quartiles
disp_iqr <- IQR(mpg$displ, na.rm = TRUE)
disp_iqr