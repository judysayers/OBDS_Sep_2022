### Workspace management ###

# 1.Open a new Rstudioscript and create 3 new objects

a <- "a"
b <- "b"
c <- "c"

# 2.Save your code as .R file and then save the workspace to a .Rdatafile.

save.image(file = "day3ex1.RData")

# 3.Save one object using saveRDS()

saveRDS(a, file = "testobject_a.rds")

# 4.Remove one of the objects –how can you check it is gone?

rm(c)
ls()

#   5.Clear your workspace completely (remove all objects)

rm(list = ls())

# 6.Display your current working directory.

getwd()

# 7.Make a new directory in your linuxterminal and then set the R working directory to be that new directory.

setwd(dir = "/t1-data/project/obds/jsayers/2_baseR/projects/R_day3")

# 8.Load the objects you saved in the .Rdatafile

load(file = "/t1-data/project/obds/jsayers/2_baseR/projects/week2_day3/day3ex1.RData")
a <- readRDS(file = "testobject_a.rds") # must assign rds to name when reading it in 
