FROM swaggerapi/swagger-ui:latest

ENV SWAGGER_OSS_SERVICES ""

COPY ./swagger-initializer.js /tmp/
COPY ./docker-entrypoint.d/39-oss-services.sh /docker-entrypoint.d/
COPY ./docker-entrypoint.d/50-oss-services.sh /docker-entrypoint.d/

RUN chmod +x /docker-entrypoint.d/39-oss-services.sh
RUN chmod +x /docker-entrypoint.d/50-oss-services.sh
RUN cat /tmp/swagger-initializer.js > /usr/share/nginx/html/swagger-initializer.js