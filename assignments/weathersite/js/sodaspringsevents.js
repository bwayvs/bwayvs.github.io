//***************************************/
const requestSodaSpringsDataURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const requestSodaSpringsData = new XMLHttpRequest();
requestSodaSpringsData.open('GET', requestSodaSpringsDataURL);
requestSodaSpringsData.responseType = 'json';
requestSodaSpringsData.send();
//****************************************//

requestSodaSpringsData.onload = function () {
    let mySodaSpringsList = document.getElementById('sodaspringseventsul');
    let sodaSpringsData = requestSodaSpringsData.response;
    let sstowns = sodaSpringsData['towns'];
    sstowns.forEach(sstown => {
        if (sstown.name == 'Soda Springs') {
            let sodaSpringsEvents = sstown.events;
            for (let s = 0; s < sodaSpringsEvents.length; s++) {
                let listSodaSpringsItem = document.createElement('li');
                listSodaSpringsItem.textContent = sodaSpringsEvents[s];
                mySodaSpringsList.appendChild(listSodaSpringsItem);
            }
        }
    });
}


