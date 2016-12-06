// Add HTTP interface for Node
var http = require('http')

// Create the HTTP server for requests & response
http.createServer(function (req, res){

	// 200 OK
	res.writeHead(200, {'Content-Type': 'text/plain'});

	//Print Hello World!!!
	res.end('Hello World!!!');
}).listen(8000);

console.log('Server is running on port 8000');