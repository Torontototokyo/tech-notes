openssl req -newkey rsa:2048 -keyout server-key.pem  -out server-csr.pem -subj \
 "/O=MyO/C=CN/CN=Redis/OU=MyUnit" -days 365 -reqexts SAN \
-config /etc/pki/tls/openssl.cnf
