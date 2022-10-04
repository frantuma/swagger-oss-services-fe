FROM swaggerapi/swagger-ui:latest

ENV SWAGGER_OSS_SERVICES ""
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./oss-services.sh /docker-entrypoint.d/oss-services.sh
RUN chmod +x /docker-entrypoint.d/oss-services.sh
RUN chmod 777 /usr/share/nginx/html/index.html

