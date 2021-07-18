call openssl genrsa 2048 > private.key
call openssl req -new -x509 -nodes -sha1 -days 1000 -key private.key > public.cer
call openssl pkcs12 -export -in public.cer -inkey private.key -out cert_key.p12