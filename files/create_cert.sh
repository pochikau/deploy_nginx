#!/bin/bash
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -key rootCA.key -days 10000 -out rootCA.crt -subj "/C=RU/O=Unknown, OOO/OU=Certification Services Division/OU=(c) 2018 Unknown Org. -For authorized use only/CN=geekbrains"
chmod 0600 rootCA.key
