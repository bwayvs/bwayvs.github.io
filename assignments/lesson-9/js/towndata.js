
var requestURL = 'https://bwayvs.github.io/assignments/lesson-9/js/towndata.json';
var request = new XMLHttpRequest();
request.open('GET', requestURL);request.responseType = 'json';

request.send();

request.onload = function() {
    var townName = request.response;
    populateH3(townName);
    
function populateH3(jsonObj) {
    var myH3 = document.createElement('h3');
    myH3.textContent = jsonObj['town':'name'[0]];
    h3.appendChild(myH3);
}