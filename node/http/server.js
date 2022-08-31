var http = require('http');
function fib(n) {
    if (n <= 1) {
        return n;
    }
    return fib(n-1) + fib(n-2);
}

http.createServer(function (req, res) {
    if(req.url == '/123'){
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end(fib(40).toString());
    }else{
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end('bye bye'+ req.url);
    }
    
}).listen(8080, "127.0.0.1");