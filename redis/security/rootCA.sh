openssl genrsa -out key.pem 2048 &&
openssl req -new -key key.pem -out req.pem
