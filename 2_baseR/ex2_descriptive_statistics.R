### Ex2 - Descriptive Statistics ###

# 1.Use readRDS() to load to an object called /t1-data/project/obds/shared/resources/2_r/my_day2matrix.rds

my_day2matrix <- readRDS("/t1-data/project/obds/shared/resources/2_r/my_day2matrix.rds")
head(my_day2matrix)
dim(my_day2matrix)

# 2.Add row sums and means, and column sums and column means to this dataset

my_day2matrix_b <- cbind(my_day2matrix, rowSums = rowSums(my_day2matrix), rowMeans = rowMeans(my_day2matrix))
my_day2matrix_c <- rbind(my_day2matrix_b, c(colSums(my_day2matrix), NA, NA), c(colMeans(my_day2matrix), NA, NA))
dim(my_day2matrix_c)
head(my_day2matrix_c)
my_day2matrix_c
# 3.Load the ToothGrowthdatsetusing data(ToothGrowth)

data("ToothGrowth")
head(ToothGrowth)

# 4.How do find more information on this dataset?

help("ToothGrowth")

# 5.What columns of data do we have?

colnames(ToothGrowth)

# 6.What is the mean tooth length?

mean(ToothGrowth$len)

# 7.What is the maximum and minimum tooth length?

max(ToothGrowth$len)
min(ToothGrowth$len)

# 8.Can you calculate rowSumsand rowMeanson this data?

# NO - one column is a character and not numeric