### Ex5 - Aggregate ###
 
# 1.Aggregate (or group) the airquality data by Month and return means on each of the numeric variables. 
# Also, remove “NA” values.
 
data("airquality")
airquality_agg_month <- aggregate(airquality, by = list(Months = airquality$Month), FUN = mean, na.rm= T)
airquality_agg_month

# 2.Aggregate the Solar.R column by Month, returning means of Solar.R. 
#The header of column 1 should be Month. Remove “not available” values.
 
airquality_agg_Solar.R <- aggregate(airquality$Solar.R, by = list(Months = airquality$Month), FUN = mean, na.rm= T)
airquality_agg_Solar.R
aggregate(Solar.R~Month, airquality, FUN=mean, na.rm=T) # allows you to keep the column name rather than it being renamed to x

# 3.Apply the standard deviation function to the data aggregation you have just done.
aggregate(Solar.R~Month, airquality, FUN=sd, na.rm=T)
sd(airquality_agg_Solar.R$Months, na.rm=T)
