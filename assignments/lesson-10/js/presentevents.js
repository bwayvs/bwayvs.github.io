/*

const requestTownDataURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const requestData = new XMLHttpRequest();
requestData.open('GET', requestTownDataURL);
requestData.responseType = 'json';
requestData.send();


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
}*/
//***************************************/
const requestTownDataURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const requestData = new XMLHttpRequest();
requestData.open('GET', requestTownDataURL);
requestData.responseType = 'json';
requestData.send();
//****************************************//

requestData.onload = function () {
    let myList = document.getElementById('eventsul');
    let prestonData = requestData.response;
    let towns = prestonData['towns'];
    towns.forEach(town => {
        if (town.name == 'Preston') {
            let prestonEvents = town.events;
            for (let i = 0; i < prestonEvents.length; i++) {
                let listItem = document.createElement('li');
                listItem.textContent = prestonEvents[i];
                myList.appendChild(listItem);
            }
        }
    });
}


