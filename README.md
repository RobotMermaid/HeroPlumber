# Basic Plumber Runner

This example runs the [plumber.io](https://www.rplumber.io/) package for this [example]( https://www.rplumber.io/docs/quickstart.html#quickstart).

## Steps
in the terminal:
1. open `R` and run `install.packages("plumber")` and `install.packages("rscript")`
2. wait... the install took about 10 minutes
3. exit `R`
4. `cd` to root of your PlumberAPI repo 
5. run `Rscript run.R` it will return a message with a port number
`Starting server to listen on port 3229`.  
The port number will change every time you restart server   
unless you add a port number such as `port=8008` to `pr$run()`
6. Open `http://localhost:8008/echo?msg=ohai` in your browser
7. It will return a response `{"msg": [ "The message is: 'ohai'"]}`
8. To stop your server `^C`

You must restart your server every time you make a change.

Your plumber.R file needs to end with a new line ( a return) or you will get this error:  
`Warning message:  `  
`In readLines(file) : incomplete final line found on 'plumber.R'`

You can use cat() to print out R info in a function

curl -X POST http://localhost:8000/postit  -H 'cache-control: no-cache' -H 'content-type: application/json' -d "id=123&name=Jennifer"
It seems the post body must be in one line??
https://github.com/rstudio/plumber/issues/270