##### Rainy #####
# Load data #
my_data <- read.csv(file.choose('Rainy.csv'))

### Average,Max,Min,S.D. ###

## x = PM2.5 ##
x <- my_data$PM_2.5    
mean_pm25 <- mean(x);
summary(x);
sd_pm25 <- sd(x);

## y = PM10 ##
y <- my_data$PM_10    
mean_pm10 <- mean(y);
summary(y);
sd_pm10 <- sd(y);

## s = SO2 ##
s <- my_data$SO_2      
mean_so2 <- mean(s);
summary(s);
sd_so2 <- sd(s);

## n = NO2 ##
n <- my_data$NO_2      
mean_no2 <- mean(n);
summary(n);
sd_no2 <- sd(n);

## o = O3 ##
o <- my_data$O_3      
mean_O3 <- mean(o);
summary(o);
sd_O3 <- sd(o);

## t = Temperature ##
t <- my_data$Temperature      
mean_tem <- mean(t);
summary(t);
sd_tem <- sd(t);

## r = Relative humidity  ##
r <- my_data$Relative_humidity      
mean_RH <- mean(r);
summary(r);
sd_RH <- sd(r);

## w =  Wind speed ##
w <- my_data$Wind_speed    
mean_wind <- mean(w);
summary(w);
sd_wind <- sd(w);

# line plot
data(economics)
ggplot(data = economics, mapping = aes(x = date, y = pop)) +
  geom_line()

## graph ##
v <- my_data$PM_2.5
plot(v,type = "o", col = "blue", xlab = "Time(Day)", ylab = "Concentrations",main = "PM2.5 in Rainy season")

## correlation between two variiable
cor(my_data$PM_2.5,my_data$PM_10)


### Correlation co-efficient of PM2.5 and PM 10 in Rainny season###
#install.packages("ggpubr")
library("ggpubr")
ggscatter(my_data, x = "PM_2.5", y = "PM_10", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "PM2.5 concentration(g/m^-3)", ylab = "PM10 concentration(g/m^-3)")
