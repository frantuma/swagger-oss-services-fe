#! /bin/sh

set -e

NGINX_ROOT=/usr/share/nginx/html
INDEX_FILE=$NGINX_ROOT/index.html

if [ "$SWAGGER_OSS_SERVICES" ]; then
  sed -i "s|SWAGGER_OSS_SERVICES|$SWAGGER_OSS_SERVICES|g" $INDEX_FILE
fi

# what is line below doing? should we zip the modified index?
# find $NGINX_ROOT -type f -regex ".*\.\(html\|js\|css\)" -exec sh -c "gzip < {} > {}.gz" \;
