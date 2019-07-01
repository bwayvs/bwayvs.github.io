//***************************************/
const requestPrestonDataURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const requestPrestonData = new XMLHttpRequest();
requestPrestonData.open('GET', requestPrestonDataURL);
requestPrestonData.responseType = 'json';
requestPrestonData.send();
//****************************************//

requestPrestonData.onload = function () {
    let myPrestonList = document.getElementById('prestoneventsul');
    let prestonData = requestPrestonData.response;
    let ptowns = prestonData['towns'];
    ptowns.forEach(ptown => {
        if (ptown.name == 'Preston') {
            let prestonEvents = ptown.events;
            for (let p = 0; p < prestonEvents.length; p++) {
                let listPrestonItem = document.createElement('li');
                listPrestonItem.textContent = prestonEvents[p];
                myPrestonList.appendChild(listPrestonItem);
            }
        }
    });
}


