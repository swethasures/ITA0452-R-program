data(women)
print(women)
height_factor <- cut(women$height, breaks = c(50, 55, 60, 65, 70, 75),
                     labels = c("Short", "Medium Short", "Medium", "Medium Tall", "Tall"))
print(height_factor)
