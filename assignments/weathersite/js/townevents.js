//***************************************/
const requestTownDataURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const requestTownData = new XMLHttpRequest();
requestTownData.open('GET', requestTownDataURL);
requestTownData.responseType = 'json';
requestTownData.send();
//****************************************//

requestTownData.onload = function () {
    let myPrestonList = document.getElementById('prestoneventsul');
    let mySodaSpringsList = document.getElementById('sodaspringseventsul');
    let myFishHavenList = document.getElementById('fishhaveneventsul');
    let townData = requestTownData.response;
    let towns = townData['towns'];
    towns.forEach(town => {
        if (town.name == 'Preston') {
            let prestonEvents = town.events;
            for (let i = 0; i < prestonEvents.length; i++) {
                let listPrestonItem = document.createElement('li');
                listPrestonItem.textContent = prestonEvents[i];
                myPrestonList.appendChild(listPrestonItem);
            }
        } else if (town.name == 'Soda Springs') {
            let sodaSpringsEvents = town.events;
            for (let i = 0; i < sodaSpringsEvents.length; i++) {
                let listSodaSpringsItem = document.createElement('li');
                listSodaSpringsItem.textContent = sodaSpringsEvents[i];
                mySodaSpringsList.appendChild(listSodaSpringsItem);
            }
        } else if (town.name == 'Fish Haven') {
            let fishHavenEvents = town.events;
            for (let i = 0; i < fishHavenEvents.length; i++) {
                let listFishHavenItem = document.createElement('li');
                listFishHavenItem.textContent = fishHavenEvents[i];
                myFishHavenList.appendChild(listFishHavenItem);
            }
        }
    });
}