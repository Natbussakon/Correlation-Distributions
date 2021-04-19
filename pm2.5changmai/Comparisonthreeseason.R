# Load data #
my_data <- read.csv(file.choose('pm25threeseason.csv'))

## comparison ##

t <- my_data$PM2.5_Winter
v <- my_data$PM2.5_Rainy
g <- my_data$PM2.5_Summer
plot(t,type = "o", col = "red", xlab = "Time(Day)", ylab = "Concentrations",main = "PM2.5 in Three season")
lines(v, type = "o", col = "blue")
lines(g, type = "o", col = "green")