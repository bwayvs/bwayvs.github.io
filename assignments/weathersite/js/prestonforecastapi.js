let prestonApiURLForecaststring = "https://api.openweathermap.org/data/2.5/forecast?id=5604473&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let prestonForecastRequest = new XMLHttpRequest();
prestonForecastRequest.open('GET', prestonApiURLForecaststring, true);
prestonForecastRequest.send();

prestonForecastRequest.onload = function () {
    let prestonForecastData = JSON.parse(prestonForecastRequest.responseText);
    let prestondayarray = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    let prestonforecastdesc = [];
    let prestonforecasticon = [];
    let prestonweekday = [];
    let prestonday = 1;

    prestonForecastData.list.forEach(prestonhour => {
        if (prestonhour.dt_txt.includes('18:00:00')) {
            prestonweekday[prestonday] = prestonhour.dt_txt;
            prestonforecasticon[prestonday] = "http://openweathermap.org/img/w/" + prestonhour.weather[0].icon + ".png";
            prestonforecastdesc[prestonday] = prestonhour.weather[0].main;
            prestonday++;
        }

    });

    for (let i = 1; i <= 5; i++) {
        let prestondays = new Date(prestonweekday[i]);
        let prestondayname = prestondayarray[prestondays.getDay()];
        document.getElementById('prestonwday' + i).innerHTML = prestondayname;
        document.getElementById('prestondayimg' + i).setAttribute('src', prestonforecasticon[i]);
        document.getElementById('prestondayimg' + i).setAttribute('alt', prestonforecastdesc[i]);
        document.getElementById('prestonforecast' + i).innerHTML = prestonforecastdesc[i];

    }
}


