const requestraleighClosureDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
const requestraleighClosureData = new XMLHttpRequest();
requestraleighClosureData.open('GET', requestraleighClosureDataURL);
requestraleighClosureData.responseType = 'json';
requestraleighClosureData.send();
//****************************************//

requestraleighClosureData.onload = function () {
    let myraleighClosureList = document.getElementById('raleighclosureeventsul');
    let raleighClosureData = requestraleighClosureData.response;
    let raleighclosures = raleighClosureData['temples'];
    raleighclosures.forEach(raleightemple => {
        if (raleightemple.name == 'Raleigh') {
            let raleighClosureEvents = raleightemple.closures;
            for (let f = 0; f < raleighClosureEvents.length; f++) {
                let listraleighClosureItem = document.createElement('li');
                listraleighClosureItem.textContent = raleighClosureEvents[f];
                myraleighClosureList.appendChild(listraleighClosureItem);
            }
        }
    });
}