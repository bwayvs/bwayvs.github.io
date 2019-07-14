const requestDcClosureDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-closure.json';
const requestDcClosureData = new XMLHttpRequest();
requestDcClosureData.open('GET', requestDcClosureDataURL);
requestDcClosureData.responseType = 'json';
requestDcClosureData.send();
//****************************************//

requestDcClosureData.onload = function () {
    let myDcClosureList = document.getElementById('dcclosureeventsul');
    let dcClosureData = requestDcClosureData.response;
    let dcclosures = dcClosureData['temples'];
    dcclosures.forEach(dctemple => {
        if (dctemple.name == 'DC') {
            let dcClosureEvents = dctemple.closures;
            for (let f = 0; f < dcClosureEvents.length; f++) {
                let listDcClosureItem = document.createElement('li');
                listDcClosureItem.textContent = dcClosureEvents[f];
                myDcClosureList.appendChild(listDcClosureItem);
            }
        }
    });
}