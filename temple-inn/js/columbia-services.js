const requestcolumbiaServiceDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
const requestcolumbiaServiceData = new XMLHttpRequest();
requestcolumbiaServiceData.open('GET', requestcolumbiaServiceDataURL);
requestcolumbiaServiceData.responseType = 'json';
requestcolumbiaServiceData.send();
//****************************************//

requestcolumbiaServiceData.onload = function () {
    let mycolumbiaServiceList = document.getElementById('columbiaservicesul');
    let columbiaServiceData = requestcolumbiaServiceData.response;
    let columbiaServices = columbiaServiceData['temples'];
    columbiaServices.forEach(columbiatemple => {
        if (columbiatemple.name == 'Columbia') {
            let columbiaServiceEvents = columbiatemple.services;
            for (let cs = 0; cs < columbiaServiceEvents.length; cs++) {
                let listcolumbiaServiceItem = document.createElement('li');
                listcolumbiaServiceItem.textContent = columbiaServiceEvents[cs];
                mycolumbiaServiceList.appendChild(listcolumbiaServiceItem);
            }
        }
    });
}