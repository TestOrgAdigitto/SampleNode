
//load the http module
var http = require('http');

//configure our http server
var server = http.createServer(function (request, response){
	response.writeHead(200, {"Content-Type" : "text/plain"});
	response.end("This is my first Node app");
}
)

//listen on localhost 8000
server.listen(8000);
console.log("Server listening at http://127.0.0.1:8000/");

