const requestcolumbiaClosureDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
const requestcolumbiaClosureData = new XMLHttpRequest();
requestcolumbiaClosureData.open('GET', requestcolumbiaClosureDataURL);
requestcolumbiaClosureData.responseType = 'json';
requestcolumbiaClosureData.send();
//****************************************//

requestcolumbiaClosureData.onload = function () {
    let mycolumbiaClosureList = document.getElementById('columbiaclosureeventsul');
    let columbiaClosureData = requestcolumbiaClosureData.response;
    let columbiaclosures = columbiaClosureData['temples'];
    columbiaclosures.forEach(columbiatemple => {
        if (columbiatemple.name == 'Columbia') {
            let columbiaClosureEvents = columbiatemple.closures;
            for (let f = 0; f < columbiaClosureEvents.length; f++) {
                let listcolumbiaClosureItem = document.createElement('li');
                listcolumbiaClosureItem.textContent = columbiaClosureEvents[f];
                mycolumbiaClosureList.appendChild(listcolumbiaClosureItem);
            }
        }
    });
}