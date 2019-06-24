let apiURLstring = "https://api.openweathermap.org/data/2.5/forecast?id=5604473&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let weatherRequest = new XMLHttpRequest();
weatherRequest.open('GET', apiURLstring, true);
weatherRequest.send();

weatherRequest.onload = function() {
    let weatherData = JSON.parse(weatherRequest.responseText);
    console.log(weatherData);
    document.getElementById("cc-temp").innerHTML = weatherData.main.temp;

    let desc = weatherData.weather[0].description;
    document.getElementById("cc-img").setAttribute("alt", desc);

    let icon = "http://openweathermap.org/img/w/" +weatherData.weather[0].icon+ ".png";
    document.getElementById("cc-img").setAttribute("src", icon);
}
