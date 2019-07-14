const requestURL = "https://bwayvs.github.io/temple-inn/js/temple-info.json";
const request = new XMLHttpRequest();
request.open ('GET', requestURL);
request.responseType= 'json';
request.send();
///*****************************************///

request.onload = function() {
    let templeData = request.response
    showData(templeData);
}

function showData9jsonObt){
    let temples = jsonObj['temples'];

    for (let i = 0; i < temples.length;i++) {
        let myH3 = document.createElement('h3');
        let myH4 = document.createElement('h4');
        let myList = document.createElement('ul');
        let myPara1 = document.createElement('p');
        let myPara1 = document.createElement('p');
        let myPara2 = document.createElement('p');
        let myPara3 = document.createElement('p');
        let myPara4 = document.createElement('p');
        let myPara5 = document.createElement('p');
        let myImg = document.createElement('img');
        let myDiv = document.createElement('div');

        myH3.textContent = temples[i].name;
        myImg.setAttribute('src',temples[i].photo);
        myImg.setAttribute('alt', temples[i].desc);
        myPara1.textContent = "Address: " + temples[i].address;
        myPara2.textContent = "Phone Number : " + temples[i].phone;
        myPara3.textContent = "Email: " + temples[i].email;
        myPara4.textContent = "Schedule: " + temples[i].schedule;
        myPara5.textContent = "History: ";

        let history = temple[i].history;
        for (let j = 0; j < history.length; j++){
            let listItem = document.createElement('li');
            listItem.textContent = history[j];
            myList.appendChild(listItem);
        }
        myDiv.appendChild(myH3);
        myDiv.appendChild(myImg);
        myDiv.appendChild(myPara1);
        myDiv.appendChild(myPara2);
        myDiv.appendChild(myPara3);
        myDiv.appendChild(myPara4);
        myDiv.appendChild(myPara5);
        myDiv.appendChild(myList);
        SecurityPolicyViolationEvent.appendChild(myDiv);
    }
}