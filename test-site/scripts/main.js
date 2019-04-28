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

