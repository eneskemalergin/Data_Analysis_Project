# This script creates the plot and charts

data <- read.csv("C:/Users/Pc-41/Desktop/My_data_Analysis/Personal_Data_Donot_share/28th_Workshop_data_V03.csv")

# Installing a package called plotrix to use pie charts...
install.packages("plotrix")

# Calling plotrix package
library(plotrix)

file.create("C:/Users/Pc-41/Desktop/My_Data_Analysis/Personal_Data_Donot_share/working_data.csv")

MyData <- data.frame(data$Name, data$Surname, data$X, data$City)
write.csv(MyData, file = "C:/Users/Pc-41/Desktop/My_Data_Analysis/Personal_Data_Donot_share/working_data.csv")

levels(MyData$data.X)
levels(MyData$data.City)
# Austin Dallas Houston Richardson

summary(MyData$data.X)
# 62 Female
# 67 Male

summary(MyData$data.City)
# 4 Austin 
# 6 Dallas
# 115 Houston
# 4 Richardson

## Creating a Pie chart to show the percentages of people according to their genders
slices<- summary(MyData$data.X) 
lbls <- c("Female", "Male")

prctg <- round(slices/sum(slices)*100)
lbls2 <- paste(lbls, " ", prctg, "%", sep = " ")
pie(slices, labels = lbls2, col = rainbow(length(lbls2)),
    main = "Distribution of Genders According to Registration Data.")


# Creating a 3D pie chart to show the where people are attending the workshop
slices2 <- summary(MyData$data.City)
lbls3 <- c("Austin", "Dallas", "Houston", "Richardson")
pie3D(slices2, labels = lbls3, explode = 0.1,
      main = "From Which Cities People Coming?")
