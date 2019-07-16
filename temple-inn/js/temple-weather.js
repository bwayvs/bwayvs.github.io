let dcApiURLstring = "https://api.openweathermap.org/data/2.5/weather?id=5585010&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let dcWeatherRequest = new XMLHttpRequest();
dcWeatherRequest.open('GET', dcApiURLstring, true);
dcWeatherRequest.send();

dcWeatherRequest.onload = function() {
    let dcWeatherData = JSON.parse(dcWeatherRequest.responseText);
    document.getElementById("washingtondc").innerHTML = dcWeatherData.main.temp_max.toFixed();
    
}

