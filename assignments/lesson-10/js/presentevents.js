// ******************************
const requestTownDataURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const requestData = new XMLHttpRequest();
requestData.open('GET', requestTownDataURL);
requestData.responseType = 'json';
requestData.send();
//****************************************/

requestData.onload = function () {
    let prestonData = requestData.response;
    let towns = prestonData['towns'];

    towns.forEach(town => {
        if (town.name == 'Preston') {
            document.getElementById('prestonevents').innerHTML = town.events[0];
            document.getElementById('prestonevents1').innerHTML = town.events[1];
            document.getElementById('prestonevents2').innerHTML = town.events[2];
        }
    });
}
