const requestDcServiceDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
const requestDcServiceData = new XMLHttpRequest();
requestDcServiceData.open('GET', requestDcServiceDataURL);
requestDcServiceData.responseType = 'json';
requestDcServiceData.send();
//****************************************//

requestDcServiceData.onload = function () {
    let myDcServiceList = document.getElementById('dcservicesul');
    let dcServiceData = requestDcServiceData.response;
    let dcServices = dcServiceData['temples'];
    dcServices.forEach(dctemple => {
        if (dctemple.name == 'DC') {
            let dcServiceEvents = dctemple.services;
            for (let ds = 0; ds < dcServiceEvents.length; ds++) {
                let listDcServiceItem = document.createElement('li');
                listDcServiceItem.textContent = dcServiceEvents[ds];
                myDcServiceList.appendChild(listDcServiceItem);
            }
        }
    });
}