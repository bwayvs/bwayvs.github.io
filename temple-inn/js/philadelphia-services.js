const requestPhillyServiceDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
const requestPhillyServiceData = new XMLHttpRequest();
requestPhillyServiceData.open('GET', requestPhillyServiceDataURL);
requestPhillyServiceData.responseType = 'json';
requestPhillyServiceData.send();
//****************************************//

requestPhillyServiceData.onload = function () {
    let myPhillyServiceList = document.getElementById('phillyservicesul');
    let phillyServiceData = requestPhillyServiceData.response;
    let ptemples = phillyServiceData['temples'];
    ptemples.forEach(ptemple => {
        if (ptemple.name == 'Philadelphia') {
            let phillyServiceEvents = ptemple.services;
            for (let ps = 0; ps < phillyServiceEvents.length; ps++) {
                let listPhillyServiceItem = document.createElement('li');
                listPhillyServiceItem.textContent = phillyServiceEvents[ps];
                myPhillyServiceList.appendChild(listPhillyServiceItem);
            }
        }
    });
}