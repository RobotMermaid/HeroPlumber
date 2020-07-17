library(plumber)
pr <- plumber::plumb("plumber.R")  # Where 'plumber.R' is the location of the file shown above
pr$run(port = 8008)