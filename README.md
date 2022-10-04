## Swagger OSS Services Docker image 


This image is a customization of Swagger UI to allow providing a map of hosts to related Specification URL. In this way a single image/container can be used as Front End for multiple backends exposing APIs and related Swagger/OpenAPI specification

### Usage

```
docker pull swaggerapi/swagger-oss-services-fe:latest
docker run -e SWAGGER_OSS_SERVICES='example.com=https://example.com/openapi.json' -p 80:8080 swaggerapi/swagger-oss-services-fe:latest
```

### Development

`docker build -t swaggerapi/swagger-oss-services-fe .`

### Swagger OSS Services configuration

```
docker run -e SWAGGER_OSS_SERVICES='petstore3.swagger.io=https://petstore3.swagger.io/api/v3/openapi.json,petstore.swagger.io=https://petstore.swagger.io/v2/swagger.json,generator.swagger.io=https://generator.swagger.io/api/swagger.json,generator3.swagger.io=https://generator3.swagger.io/openapi.json,validator.swagger.io=https://validator.swagger.io/validator/openapi.json,oai.swagger.io=https://oai.swagger.io/api/openapi.json,converter.swagger.io=https://converter.swagger.io/api/openapi.json' -p 80:8080 swaggerapi/swagger-oss-services-fe:latest
```

