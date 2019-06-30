let apiURLForecaststring = "https://api.openweathermap.org/data/2.5/forecast?id=5604473&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let forecastRequest = new XMLHttpRequest();
forecastRequest.open('GET', apiURLForecaststring, true);
forecastRequest.send();

forecastRequest.onload = function () {
    let forecastData = JSON.parse(forecastRequest.responseText);
    let dayarray = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    let forecastdesc = [];
    let forecasticon = [];
    let weekday = [];
    let day = 1;

    forecastData.list.forEach(hour => {
        if (hour.dt_txt.includes('18:00:00')) {
            weekday[day] = hour.dt_txt;
            forecasticon[day] = "http://openweathermap.org/img/w/" + hour.weather[0].icon + ".png";
            forecastdesc[day] = hour.weather[0].main;
            day++;
        }

    });

    for (let i = 1; i <= 5; i++) {
        let days = new Date(weekday[i]);
        let dayname = dayarray[days.getDay()];
        document.getElementById('wday' + i).innerHTML = dayname;
        document.getElementById('dayimg' + i).setAttribute('src', forecasticon[i]);
        document.getElementById('dayimg' + i).setAttribute('alt', forecastdesc[i]);
        document.getElementById('forecast' + i).innerHTML = forecastdesc[i];

    }
}


