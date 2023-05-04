data(airquality)
if(is.data.frame(airquality)) {
  print("airquality is a data frame")
}
airquality_ordered <- airquality[order(airquality$Month, airquality$Day), ]
airquality_filtered <- airquality_ordered[, !(names(airquality_ordered) %in% c("Solar.R", "Wind"))]
print(airquality_filtered)
