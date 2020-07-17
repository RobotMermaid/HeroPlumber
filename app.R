# app.R
library(plumber)

port <- Sys.getenv('PORT')

server <- plumb("app.R")

server$run(
  host = '0.0.0.0',
  port = as.numeric(port)
)