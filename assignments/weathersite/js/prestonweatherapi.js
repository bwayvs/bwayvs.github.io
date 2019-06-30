let prestonApiURLstring = "https://api.openweathermap.org/data/2.5/weather?id=5604473&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let prestonWeatherRequest = new XMLHttpRequest();
prestonWeatherRequest.open('GET', prestonApiURLstring, true);
prestonWeatherRequest.send();

prestonWeatherRequest.onload = function() {
    let prestonWeatherData = JSON.parse(prestonWeatherRequest.responseText);
    document.getElementById("prestonhitemp").innerHTML = prestonWeatherData.main.temp_max.toFixed();
    document.getElementById("prestoncurrently").innerHTML = prestonWeatherData.weather[0].main;
    document.getElementById("prestonwindspeed").innerHTML = prestonWeatherData.wind.speed.toFixed();
    document.getElementById("prestonhumidity").innerHTML = prestonWeatherData.main.humidity.toFixed();

    /*Windchill*/
    let t = parseInt(document.getElementById('prestonhitemp').innerHTML);
    let s = parseInt(document.getElementById('prestonwindspeed').innerHTML);
    let result = 35.74 + (0.6215 * t) - (35.75 * s ** 0.16) + (0.4275 * t * s ** 0.16);
    document.getElementById('prestonwindchill').innerHTML = result.toFixed();
}

function newFunction(prestonWeatherData) {
    console.log(prestonWeatherData);
}
