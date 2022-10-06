FROM swaggerapi/swagger-ui:latest

ENV SWAGGER_OSS_SERVICES ""

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./30-oss-services.sh /docker-entrypoint.d/

RUN chmod +x /docker-entrypoint.d/30-oss-services.sh
RUN chmod 777 /usr/share/nginx/html/index.html

