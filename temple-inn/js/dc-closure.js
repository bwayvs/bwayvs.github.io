const requestDcClosureDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
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
            for (let dc = 0; dc < dcClosureEvents.length; dc++) {
                let listDcClosureItem = document.createElement('li');
                listDcClosureItem.textContent = dcClosureEvents[dc];
                myDcClosureList.appendChild(listDcClosureItem);
            }
        }
    });
}