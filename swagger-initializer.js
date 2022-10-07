window.onload = function() {
    const defaultDefinitionUrl = "https://petstore.swagger.io/v2/swagger.json";
    const ossServices = `${window.location.host}=${defaultDefinitionUrl}`;
    const ossServicesTuples = ossServices.split(',').map(ossService => ossService.split('='))
    const ossServiceMatch = ossServicesTuples.find(([host]) => window.location.host.includes(host))
    const definitionURL = ossServiceMatch ? ossServiceMatch[1] : defaultDefinitionUrl;

    //<editor-fold desc="Changeable Configuration Block">

    // the following lines will be replaced by docker/configurator, when it runs in a docker-container
    window.ui = SwaggerUIBundle({
        url: definitionURL,
        dom_id: '#swagger-ui',
        deepLinking: true,
        presets: [
            SwaggerUIBundle.presets.apis,
            SwaggerUIStandalonePreset
        ],
        plugins: [
            SwaggerUIBundle.plugins.DownloadUrl
        ],
        layout: "StandaloneLayout"
    });

    //</editor-fold>
};