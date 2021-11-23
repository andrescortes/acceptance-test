function fn() {
    var baseUrl = karate.properties['baseUrl'] || 'http://localhost:8080/data';

    karate.log('baseUrl is: ', baseUrl);

    var config = {
        baseUrl: baseUrl
    };

    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    karate.configure('ssl', true);

    return config;
}