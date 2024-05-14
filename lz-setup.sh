#!/bin/bash

git submodule update --init --recursive
docker compose pull

pushd .
cd web/cert
openssl genrsa -out privkey.pem 2048
openssl req -new -x509 -key privkey.pem -out fullchain.pem -days 365
popd

