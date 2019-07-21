let slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  let r;
  let mySlide = document.getElementsByClassName("mySlides");
  if (n > mySlide.length) {slideIndex = 1}
  if (n < 1) {slideIndex = mySlide.length}
  for (r = 0; r < mySlide.length; r++) {
     mySlide[r].style.display = "none";  
  }
  mySlide[slideIndex-1].style.display = "block";  
}

function dcDisplay() {
  if (document.getElementById("washingtondc")) {
      document.getElementById("washingtondc").style.display="block";
  } else {
      document.getElementById("washingtondc").style.display="none";
  }
}
function phillyDisplay() {
  if (document.getElementById("philly")) {
      document.getElementById("philly").style.display="block";
  } else {
      document.getElementById("philly").style.display="none";
  }
}
function raleighDisplay() {
  if (document.getElementById("raleigh")) {
      document.getElementById("raleigh").style.display="block";
  } else {
      document.getElementById("raleigh").style.display="none";
  }
}
function columbiaDisplay() {
  if (document.getElementById("columbia")) {
      document.getElementById("columbia").style.display="block";
  } else {
      document.getElementById("columbia").style.display="none";
  }
}

