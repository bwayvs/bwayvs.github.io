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