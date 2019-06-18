
const requestURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const request = new XMLHttpRequest();
request.open('GET', requestURL);request.responseType = 'json';

request.send();

request.onload = function() {
    let townData = request.response;
    let towns = townData['towns'];
    
    towns.forEach(town => {
        if (town.name == 'Preston') {
            document.getElementById('prestonname').innerHTML = town.name;
        }
    });
}