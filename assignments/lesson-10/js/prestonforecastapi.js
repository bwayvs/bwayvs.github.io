let apiURLForecaststring = "https://api.openweathermap.org/data/2.5/forecast?id=5604473&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let forecastRequest = new XMLHttpRequest();
forecastRequest.open('GET', apiURLForecaststring, true);
forecastRequest.send();

forecastRequest.onload = function () {
    let forecastData = JSON.parse(forecastRequest.responseText);

    /*Weekdays*/
    let today = new Date();
    let DD = today.getDay();
    let dayarray = new Array("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat");


    /*Day 1 Forecast Info*/

    let desc = forecastData.list[5].weather[0].description;
    document.getElementById("day1img").setAttribute("alt", desc);

    let icon = "http://openweathermap.org/img/w/" + forecastData.list[5].weather[0].icon + ".png";
    document.getElementById("day1img").setAttribute("src", icon);

    document.getElementById("day1desc").innerHTML = forecastData.list[5].weather[0].main;

    let day1 = document.getElementById("day1");
    day1.innerText = dayarray[DD];

    /*Day 2 Forecast Info*/

    let day2 = document.getElementById("day2");
    day2.innerText = dayarray[DD + 1];

    let desc1 = forecastData.list[13].weather[0].description;
    document.getElementById("day2img").setAttribute("alt", desc1);

    let icon1 = "http://openweathermap.org/img/w/" + forecastData.list[13].weather[0].icon + ".png";
    document.getElementById("day2img").setAttribute("src", icon1);

    document.getElementById("day2desc").innerHTML = forecastData.list[13].weather[0].main;

    /*Day 3 Forecast Info*/

    let desc2 = forecastData.list[21].weather[0].description;
    document.getElementById("day3img").setAttribute("alt", desc2);

    let icon2 = "http://openweathermap.org/img/w/" + forecastData.list[21].weather[0].icon + ".png";
    document.getElementById("day3img").setAttribute("src", icon2);

    document.getElementById("day3desc").innerHTML = forecastData.list[21].weather[0].main;

    let day3 = document.getElementById("day3");
    day3.innerText = dayarray[DD + 2];

    /*Day 4 Forecast Info*/

    let desc3 = forecastData.list[29].weather[0].description;
    document.getElementById("day4img").setAttribute("alt", desc3);

    let icon3 = "http://openweathermap.org/img/w/" + forecastData.list[29].weather[0].icon + ".png";
    document.getElementById("day4img").setAttribute("src", icon3);

    document.getElementById("day4desc").innerHTML = forecastData.list[29].weather[0].main;

    let day4 = document.getElementById("day4");
    day4.innerText = dayarray[DD + 3];

    /*Day 5 Forecast Info*/

    let desc4 = forecastData.list[37].weather[0].description;
    document.getElementById("day5img").setAttribute("alt", desc4);

    let icon4 = "http://openweathermap.org/img/w/" + forecastData.list[37].weather[0].icon + ".png";
    document.getElementById("day5img").setAttribute("src", icon4);

    document.getElementById("day5desc").innerHTML = forecastData.list[37].weather[0].main;

    let day5 = document.getElementById("day5");
    day5.innerText = dayarray[DD + 4];
}