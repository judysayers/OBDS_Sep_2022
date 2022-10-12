### Ex3 - Sorting ###

# 1.Load the AirQualitydataset.

data("airquality")

# 2.Look up more information about this dataset.

help("airquality")

# 3.Examine the dataset –how many rows and columns are there?

dim(airquality)

# 4.Display the column headers.

colnames(airquality)

# 5.Sort the dataframe by the first column (Ozone) in ascending order.

airquality_sort_ozone <- airquality[order(airquality$Ozone),]
head(airquality_sort_ozone)

# 6.Sort the dataframe by the Month and then the Temp column in descending order and save to a new variable.

airquality_sort_monthtemp <- airquality[order(airquality$Month, airquality$Temp, decreasing = TRUE),]

# 7.Save this sorted data to a file on the server.

write.table(airquality_sort_monthtemp, file = "airquality_sorted.csv", sep = ",", quote = F, row.names = F)
