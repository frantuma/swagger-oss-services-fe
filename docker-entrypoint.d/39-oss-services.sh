#! /bin/sh

set -e

NGINX_ROOT=/usr/share/nginx/html
INITIALIZER_SCRIPT=$NGINX_ROOT/swagger-initializer.js

if [ "$SWAGGER_OSS_SERVICES" ]; then
  sed -i "s|\${window.location.host}=\${defaultDefinitionUrl}|$SWAGGER_OSS_SERVICES|g" $INITIALIZER_SCRIPT;
fi