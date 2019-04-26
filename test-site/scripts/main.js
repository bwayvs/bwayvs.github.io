var myImage = document.querySelector('img');

myImage.onclick = function() {
    var mySrc = myImage.getAttribute('src');
    if(mySrc === 'images/legal-secretary.jpg') {
      myImage.setAttribute ('src','images/firefox2.png');
    } else {
      myImage.setAttribute ('src','images/legal-secretary.jpg');
    }
}
document.querySelector('html').onclick = function() {
    alert('Ouch! Stop poking me!');

}
var myButton = document.querySelector('button');
var myHeading = document.querySelector('h1'); 

function setUserName() {
    var myName = prompt('Please enter your name.');
    localStorage.setItem('name', myName);
    myHeading.textContent = 'It is nice to meet you, ' + myName;
  }
  if(!localStorage.getItem('name')) {
    setUserName();
  } else {
    var storedName = localStorage.getItem('name');
    myHeading.textContent = 'Welcome back, ' + storedName;
  }
  myButton.onclick = function() {
    setUserName();
  }