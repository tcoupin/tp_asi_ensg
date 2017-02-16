var http = require("http");
var os = require("os");

var timePerRequest = 0

setInterval(function(){
	timePerRequest-=100;
	if (timePerRequest<0){
		timePerRequest=0;
	}
},
100);

http.createServer(function(request, response) {
	timePerRequest+=100;
	setTimeout(function(){
		response.end(os.hostname());
		inprogress=false;
	},timePerRequest)
}).listen(80);