let section = document.querySelector('section');

const requestURL = "https://bwayvs.github.io/temple-inn/js/temple-info.json";
const request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();
///*****************************************///

request.onload = function () {
    let templeData = request.response;
    showData(templeData);
}



function showData(jsonObj) {
    let temples = jsonObj['temples'];

    for (let i = 0; i < temples.length; i++) {
        let myH3 = document.createElement('h3');
        let myList1 = document.createElement('ul');
        let myList2 = document.createElement('ul');
        let myList3 = document.createElement('ul');
        let myList4 = document.createElement('ul');
        let myList5 = document.createElement('ul');
        let myList6 = document.createElement('ul');
        let myList7 = document.createElement('ul');
        let myPara0 = document.createElement('p');
        let myPara1 = document.createElement('p');
        let myPara2 = document.createElement('p');
        let myPara3 = document.createElement('p');
        let myPara4 = document.createElement('p');
        let myPara5 = document.createElement('p');
        let myPara6 = document.createElement('p');
        let myPara7 = document.createElement('p');
        let myImg = document.createElement('img');
        let myDiv = document.createElement('div');
        //let myButton1 = document.createElement('button')
        //let myButton2 = document.createElement('button')



        myH3.textContent = temples[i].name;
        myImg.setAttribute('src', temples[i].photo);
        myImg.setAttribute('alt', temples[i].desc);

        
        myPara0.setAttribute('id', 't' + temples[i].cityid);

        myPara1.textContent = "Address: ";

        let address = temples[i].address;
        for (let m = 0; m < address.length; m++) {
            let listItem = document.createElement('li');
            listItem.textContent = address[m];
            myList1.appendChild(listItem);
        }

        myPara2.textContent = "Phone Number : ";

        let phone = temples[i].phone;
        for (let n = 0; n < phone.length; n++) {
            let listItem = document.createElement('li');
            listItem.textContent = phone[n];
            myList2.appendChild(listItem);
        }

        myPara3.textContent = "Email: ";

        let email = temples[i].email;
        for (let p = 0; p < email.length; p++) {
            let listItem = document.createElement('li');
            listItem.textContent = email[p];
            myList3.appendChild(listItem);
        }

        myPara4.textContent = "Schedule: ";

        let schedule = temples[i].schedule;
        for (let q = 0; q < schedule.length; q++) {
            let listItem = document.createElement('li');
            listItem.textContent = schedule[q];
            myList4.appendChild(listItem);
        }

        myPara5.textContent = "Temple History: ";

        let history = temples[i].history;
        for (let j = 0; j < history.length; j++) {
            let listItem = document.createElement('li');
            listItem.textContent = history[j];
            myList5.appendChild(listItem);
        }

        myPara6.textContent = "Services: ";

        let services = temples[i].services;
        for (let k = 0; k < services.length; k++) {
            let listItem = document.createElement('li');
            listItem.textContent = services[k];
            myList6.appendChild(listItem);
        }

        myPara7.textContent = "Temple Events: ";

        let closures = temples[i].closures;
        for (let l = 0; l < closures.length; l++) {
            let listItem = document.createElement('li');
            listItem.textContent = closures[l];
            myList7.appendChild(listItem);
        }

        /*Create Slide
        let slideIndex = 1;
        showDivs(slideIndex);

        /*Slide Buttons
        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function showDivs(n) {
            let r;
            let x = document.getElementsByClassName("mySlides");
            if (n > x.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = x.length
            }
            for (r = 0; r < x.length; r++) {
                x[r].style.display = "none";
            }
           x[slideIndex - 1].style.display = "block";***Why does this show error each time?
            myButton1.setAttribute('class', 'slidebtn prevbtn');
            myButton1.setAttribute('onclick', "plusDivs(-1)");

            myButton2.setAttribute('class', 'slidebtn nextbtn');
            myButton2.setAttribute('onclick', "plusDivs(+1)");
         /*End Slide Function*/


        /*myDiv.appendChild(myButton1);
        myDiv.appendChild(myButton2);*/

        myDiv.appendChild(myImg);
        myDiv.appendChild(myH3);
        myDiv.appendChild(myPara0);
        myDiv.appendChild(myPara1);
        myDiv.appendChild(myList1);
        myDiv.appendChild(myPara2);
        myDiv.appendChild(myList2);
        myDiv.appendChild(myPara3);
        myDiv.appendChild(myList3);
        myDiv.appendChild(myPara4);
        myDiv.appendChild(myList4);
        myDiv.appendChild(myPara5);
        myDiv.appendChild(myList5);
        myDiv.appendChild(myPara6);
        myDiv.appendChild(myList6);
        myDiv.appendChild(myPara7);
        myDiv.appendChild(myList7);

        section.appendChild(myDiv);


    }
}