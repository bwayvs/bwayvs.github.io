let fishHavenApiURLForecaststring = "https://api.openweathermap.org/data/2.5/forecast?id=5604473&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
let fishHavenForecastRequest = new XMLHttpRequest();
fishHavenForecastRequest.open('GET', fishHavenApiURLForecaststring, true);
fishHavenForecastRequest.send();

fishHavenForecastRequest.onload = function () {
    let fishHavenForecastData = JSON.parse(fishHavenForecastRequest.responseText);
    let fishHavendayarray = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    let fishHavenforecastdesc = [];
    let fishHavenforecasticon = [];
    let fishHavenforecasttemp = [];
    let fishHavenweekday = [];
    let fishHavenday = 1;

    fishHavenForecastData.list.forEach(fishHavenhour => {
        if (fishHavenhour.dt_txt.includes('18:00:00')) {
            fishHavenweekday[fishHavenday] = fishHavenhour.dt_txt;
            fishHavenforecasticon[fishHavenday] = "http://openweathermap.org/img/w/" + fishHavenhour.weather[0].icon + ".png";
            fishHavenforecasttemp[fishHavenday] = fishHavenhour.main.temp;
            fishHavenforecastdesc[fishHavenday] = fishHavenhour.weather[0].main;
            fishHavenday++;
        }

    });

    for (let i = 1; i <= 5; i++) {
        let fishHavendays = new Date(fishHavenweekday[i]);
        let fishHavendayname = fishHavendayarray[fishHavendays.getDay()];
        document.getElementById('fishhavenwday' + i).innerHTML = fishHavendayname;
        document.getElementById('fishhavendayimg' + i).setAttribute('src', fishHavenforecasticon[i]);
        document.getElementById('fishhavendayimg' + i).setAttribute('alt', fishHavenforecastdesc[i]);
        document.getElementById('fishhaventemp' + i).innerHTML = fishHavenforecasttemp[i].toFixed();
        document.getElementById('fishhavenforecast' + i).innerHTML = fishHavenforecastdesc[i];

    }
}


