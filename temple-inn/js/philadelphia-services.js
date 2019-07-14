const requestphillyServiceDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
const requestphillyServiceData = new XMLHttpRequest();
requestphillyServiceData.open('GET', requestphillyServiceDataURL);
requestphillyServiceData.responseType = 'json';
requestphillyServiceData.send();
//****************************************//

requestphillyServiceData.onload = function () {
    let myphillyServiceList = document.getElementById('phillyservicesul');
    let phillyServiceData = requestphillyServiceData.response;
    let phillyServices = phillyServiceData['temples'];
    phillyServices.forEach(phillytemple => {
        if (phillytemple.name == 'Philadelphia') {
            let phillyServiceEvents = phillytemple.services;
            for (let f = 0; f < phillyServiceEvents.length; f++) {
                let listphillyServiceItem = document.createElement('li');
                listphillyServiceItem.textContent = phillyServiceEvents[f];
                myphillyServiceList.appendChild(listphillyServiceItem);
            }
        }
    });
}