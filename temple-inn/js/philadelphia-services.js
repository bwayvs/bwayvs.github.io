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
            for (let ps = 0; ps < phillyServiceEvents.length; ps++) {
                let listphillyServiceItem = document.createElement('li');
                listphillyServiceItem.textContent = phillyServiceEvents[ps];
                myphillyServiceList.appendChild(listphillyServiceItem);
            }
        }
    });
}