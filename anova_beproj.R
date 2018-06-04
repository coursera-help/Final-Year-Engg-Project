# Reading the data
data<- read.csv('beproject.csv')

# Cleaning
data<- data[,-1]
dim(data)


# Anova
b<- aov(data$Wear~data$Cutting_Speed+data$Feed_Rate+data$Depth_of_cut)
b
summary(b)
plot(b)

