// ******************************
const requestURL = 'https://byui-cit230.github.io/weather/data/towndata.json';
const request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();
//****************************************/

request.onload = function () {
    let townData = request.response;
    let towns = townData['towns'];

    towns.forEach(town => {
        if (town.name == 'Preston') {
            document.getElementById('prestonname').innerHTML = town.name;
            document.getElementById('prestonmotto').innerHTML = town.motto;
            document.getElementById('prestonyr').innerHTML = town.yearFounded;
            document.getElementById('prestonpop').innerHTML = town.currentPopulation;
            document.getElementById('prestonrain').innerHTML = town.averageRainfall;
        }
        if (town.name == 'Soda Springs') {
            document.getElementById('sodaspringsname').innerHTML = town.name;
            document.getElementById('sodaspringsmotto').innerHTML = town.motto;
            document.getElementById('sodaspringsyr').innerHTML = town.yearFounded;
            document.getElementById('sodaspringspop').innerHTML = town.currentPopulation;
            document.getElementById('sodaspringsrain').innerHTML = town.averageRainfall;
        }
        if (town.name == 'Fish Haven') {
            document.getElementById('fishhavenname').innerHTML = town.name;
            document.getElementById('fishhavenmotto').innerHTML = town.motto;
            document.getElementById('fishhavenyr').innerHTML = town.yearFounded;
            document.getElementById('fishhavenpop').innerHTML = town.currentPopulation;
            document.getElementById('fishhavenrain').innerHTML = town.averageRainfall;
        }
    });
}