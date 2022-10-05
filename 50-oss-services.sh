#! /bin/sh

set -e

NGINX_ROOT=/usr/share/nginx/html
INDEX_FILE=$NGINX_ROOT/index.html

if [ "$SWAGGER_OSS_SERVICES" ]; then
  sed -i "s|\${window.location.host}=\${defaultDefinitionUrl}|$SWAGGER_OSS_SERVICES|g" $INDEX_FILE
fi

# applies gzip to assets for faster serving; index.html.gz takes preference over index.html
find $NGINX_ROOT -type f -regex ".*\.\(html\|js\|css\)" -exec sh -c "gzip < {} > {}.gz" \;
