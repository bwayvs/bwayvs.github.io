let sodaSpringsApiURLForecaststring = "https://api.openweathermap.org/data/2.5/forecast?id=5604473&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let sodaSpringsForecastRequest = new XMLHttpRequest();
sodaSpringsForecastRequest.open('GET', sodaSpringsApiURLForecaststring, true);
sodaSpringsForecastRequest.send();

sodaSpringsForecastRequest.onload = function () {
    let sodaSpringsForecastData = JSON.parse(sodaSpringsForecastRequest.responseText);
    let sodaSpringsdayarray = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    let sodaSpringsforecastdesc = [];
    let sodaSpringsforecasticon = [];
    let sodaSpringsforecasttemp = [];
    let sodaSpringsweekday = [];
    let sodaSpringsday = 1;

    sodaSpringsForecastData.list.forEach(sodaSpringshour => {
        if (sodaSpringshour.dt_txt.includes('18:00:00')) {
            sodaSpringsweekday[sodaSpringsday] = sodaSpringshour.dt_txt;
            sodaSpringsforecasticon[sodaSpringsday] = "http://openweathermap.org/img/w/" + sodaSpringshour.weather[0].icon + ".png";
            sodaSpringsforecasttemp[sodaSpringsday] = sodaSpringshour.main.temp;
            sodaSpringsforecastdesc[sodaSpringsday] = sodaSpringshour.weather[0].main;
            sodaSpringsday++;
        }

    });

    for (let i = 1; i <= 5; i++) {
        let sodaSpringsdays = new Date(sodaSpringsweekday[i]);
        let sodaSpringsdayname = sodaSpringsdayarray[sodaSpringsdays.getDay()];
        document.getElementById('sodaspringswday' + i).innerHTML = sodaSpringsdayname;
        document.getElementById('sodaspringsdayimg' + i).setAttribute('src', sodaSpringsforecasticon[i]);
        document.getElementById('sodaspringsdayimg' + i).setAttribute('alt', sodaSpringsforecastdesc[i]);
        document.getElementById('sodaspringstemp' + i).innerHTML = sodaSpringsforecasttemp[i].toFixed();
        document.getElementById('sodaspringsforecast' + i).innerHTML = sodaSpringsforecastdesc[i];

    }
}


