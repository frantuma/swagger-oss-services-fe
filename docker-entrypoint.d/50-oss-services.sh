#! /bin/sh

set -e

NGINX_ROOT=/usr/share/nginx/html
INITIALIZER_SCRIPT=$NGINX_ROOT/swagger-initializer.js

sed -i "s|url: \"https://petstore.swagger.io/v2/swagger.json\"|url: definitionURL|g" $INITIALIZER_SCRIPT

gzip < $INITIALIZER_SCRIPT > $INITIALIZER_SCRIPT.gz
