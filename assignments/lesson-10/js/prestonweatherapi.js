let apiURLstring = "https://api.openweathermap.org/data/2.5/weather?id=5604473&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let weatherRequest = new XMLHttpRequest();
weatherRequest.open('GET', apiURLstring, true);
weatherRequest.send();

weatherRequest.onload = function() {
    let weatherData = JSON.parse(weatherRequest.responseText);
    document.getElementById("hitemp").innerHTML = weatherData.main.temp_max;
    document.getElementById("currently").innerHTML = weatherData.weather[0].main;
    document.getElementById("windspeed").innerHTML = weatherData.wind.speed;
    document.getElementById("humidity").innerHTML = weatherData.main.humidity;

    /*Windchill*/
    let t = parseInt(document.getElementById('hitemp').innerHTML);
    let s = parseInt(document.getElementById('windspeed').innerHTML);
    let result = 35.74 + (0.6215 * t) - (35.75 * s ** 0.16) + (0.4275 * t * s ** 0.16);
    document.getElementById('windchill').innerHTML = result.toFixed(1);
}

function newFunction(weatherData) {
    console.log(weatherData);
}
