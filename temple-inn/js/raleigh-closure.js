const requestraleighClosureDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-closure.json';
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
        if (raleightemple.name == 'raleigh') {
            let raleighClosureEvents = raleightemple.closures;
            for (let f = 0; f < raleighClosureEvents.length; f++) {
                let listraleighClosureItem = document.createElement('li');
                listraleighClosureItem.textContent = raleighClosureEvents[f];
                myraleighClosureList.appenraleighhild(listraleighClosureItem);
            }
        }
    });
}