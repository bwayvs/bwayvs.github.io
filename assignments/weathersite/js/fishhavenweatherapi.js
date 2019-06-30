let fishHavenApiURLstring = "https://api.openweathermap.org/data/2.5/weather?id=5585010&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let fishHavenWeatherRequest = new XMLHttpRequest();
fishHavenWeatherRequest.open('GET', fishHavenApiURLstring, true);
fishHavenWeatherRequest.send();

fishHavenWeatherRequest.onload = function() {
    let fishHavenWeatherData = JSON.parse(fishHavenWeatherRequest.responseText);
    document.getElementById("fishhavenhitemp").innerHTML = fishHavenWeatherData.main.temp_max.toFixed();
    document.getElementById("fishhavencurrently").innerHTML = fishHavenWeatherData.weather[0].main;
    document.getElementById("fishhavenwindspeed").innerHTML = fishHavenWeatherData.wind.speed.toFixed();
    document.getElementById("fishhavenhumidity").innerHTML = fishHavenWeatherData.main.humidity.toFixed();

    /*Windchill*/
    let t = parseInt(document.getElementById('fishhavenhitemp').innerHTML);
    let s = parseInt(document.getElementById('fishhavenwindspeed').innerHTML);
    let result = 35.74 + (0.6215 * t) - (35.75 * s ** 0.16) + (0.4275 * t * s ** 0.16);
    document.getElementById('fishhavenwindchill').innerHTML = result.toFixed();
}

function newFunction(ishHavenWeatherData) {
    console.log(ishHavenWeatherData);
}

