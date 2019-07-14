const requestphillyClosureDataURL = 'https://bwayvs.github.io/temple-inn/js/temple-info.json';
const requestphillyClosureData = new XMLHttpRequest();
requestphillyClosureData.open('GET', requestphillyClosureDataURL);
requestphillyClosureData.responseType = 'json';
requestphillyClosureData.send();
//****************************************//

requestphillyClosureData.onload = function () {
    let myphillyClosureList = document.getElementById('phillyclosureeventsul');
    let phillyClosureData = requestphillyClosureData.response;
    let phillyclosures = phillyClosureData['temples'];
    phillyclosures.forEach(phillytemple => {
        if (phillytemple.name == 'Philadelphia') {
            let phillyClosureEvents = phillytemple.closures;
            for (let pc = 0; pc < phillyClosureEvents.length; pc++) {
                let listphillyClosureItem = document.createElement('li');
                listphillyClosureItem.textContent = phillyClosureEvents[pc];
                myphillyClosureList.appendChild(listphillyClosureItem);
            }
        }
    });
}