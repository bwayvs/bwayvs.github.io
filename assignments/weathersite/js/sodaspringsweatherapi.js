let sodaSpringsApiURLstring = "https://api.openweathermap.org/data/2.5/weather?id=5607916&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let sodaSpringsWeatherRequest = new XMLHttpRequest();
sodaSpringsWeatherRequest.open('GET', sodaSpringsApiURLstring, true);
sodaSpringsWeatherRequest.send();

sodaSpringsWeatherRequest.onload = function() {
    let sodaSpringsWeatherData = JSON.parse(sodaSpringsWeatherRequest.responseText);
    document.getElementById("sodaspringshitemp").innerHTML = sodaSpringsWeatherData.main.temp_max.toFixed();
    document.getElementById("sodaspringscurrently").innerHTML = sodaSpringsWeatherData.weather[0].main;
    document.getElementById("sodaspringswindspeed").innerHTML = sodaSpringsWeatherData.wind.speed.toFixed();
    document.getElementById("sodaspringshumidity").innerHTML = sodaSpringsWeatherData.main.humidity.toFixed();

    /*Windchill*/
    let t = parseInt(document.getElementById('sodaspringshitemp').innerHTML);
    let s = parseInt(document.getElementById('sodaspringswindspeed').innerHTML);
    let result = 35.74 + (0.6215 * t) - (35.75 * s ** 0.16) + (0.4275 * t * s ** 0.16);
    document.getElementById('sodaspringswindchill').innerHTML = result.toFixed();
}

function newFunction(sodaSpringsWeatherData) {
    console.log(sodaSpringsWeatherData);
}
