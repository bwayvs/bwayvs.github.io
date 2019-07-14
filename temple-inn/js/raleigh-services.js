const requestraleighServiceDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
const requestraleighServiceData = new XMLHttpRequest();
requestraleighServiceData.open('GET', requestraleighServiceDataURL);
requestraleighServiceData.responseType = 'json';
requestraleighServiceData.send();
//****************************************//

requestraleighServiceData.onload = function () {
    let myraleighServiceList = document.getElementById('raleighservicesul');
    let raleighServiceData = requestraleighServiceData.response;
    let raleighServices = raleighServiceData['temples'];
    raleighServices.forEach(raleightemple => {
        if (raleightemple.name == 'Raleigh') {
            let raleighServiceEvents = raleightemple.services;
            for (let rs = 0; rs < raleighServiceEvents.length; rs++) {
                let listraleighServiceItem = document.createElement('li');
                listraleighServiceItem.textContent = raleighServiceEvents[rs];
                myraleighServiceList.appendChild(listraleighServiceItem);
            }
        }
    });
}