### Ex4 - Merging ###

# •Create the dataframes called buildings and data to merge:
#   buildings <-data.frame(location=c(1, 2, 3), name=c("b1", "b2", "b3"))
#   data <-data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1),efficiency=c(51,64,70,71,80,58))

buildings <-data.frame(location=c(1, 2, 3), name=c("b1", "b2", "b3"))
data <-data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1),efficiency=c(51,64,70,71,80,58))


# •What is the common key variable in these dataframes?

# location

# •Use the merge() function to merge the two dataframesby the common key variable 
#   into a new dataframe called buildingStats.

buildingStats <- merge(buildings, data, by="location", all=TRUE)
buildingStats
