openssl x509 -req -in server-csr.pem \
-extfile <(printf "\n[SAN]\nsubjectAltName=IP:114.132.48.245") \
-CA cacert.pem -CAkey key.pem -CAcreateserial \
-out server-crt.pem \
-extensions SAN 	
