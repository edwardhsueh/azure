#!/bin/bash
openssl genrsa 2048 > private.key
openssl req -new -x509 -nodes -sha1 -days 1000 -key private.key > public.cer
openssl pkcs12 -export -in public.cer -inkey private.key -out cert_key.p12
