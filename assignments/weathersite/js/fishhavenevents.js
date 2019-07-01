//***************************************/
const requestFishHavenDataURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const requestFishHavenData = new XMLHttpRequest();
requestFishHavenData.open('GET', requestFishHavenDataURL);
requestFishHavenData.responseType = 'json';
requestFishHavenData.send();
//****************************************//

requestFishHavenData.onload = function () {
    let myFishHavenList = document.getElementById('fishhaveneventsul');
    let fishHavenData = requestFishHavenData.response;
    let fhtowns = fishHavenData['towns'];
    fhtowns.forEach(fhtown => {
        if (fhtown.name == 'Fish Haven') {
            let fishHavenEvents = fhtown.events;
            for (let f = 0; f < fishHavenEvents.length; f++) {
                let listFishHavenItem = document.createElement('li');
                listFishHavenItem.textContent = fishHavenEvents[f];
                myFishHavenList.appendChild(listFishHavenItem);
            }
        }
    });
}