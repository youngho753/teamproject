<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>말모이 스틸컷 페이지</title>
<style>
.malmoeSlide {display:none;}
</style>
</head>
<body>
	
<div class="w3-content w3-display-container">
  <img class="malmoeSlide" src="../Imgs/stillcut/malmoe_stillcut_1.jpg" style="width:100%">
  <img class="malmoeSlide" src="../Imgs/stillcut/malmoe_stillcut_2.jpg" style="width:100%">
  <img class="malmoeSlide" src="../Imgs/stillcut/malmoe_stillcut_3.jpg" style="width:100%">
  <img class="malmoeSlide" src="../Imgs/stillcut/malmoe_stillcut_4.jpg" style="width:100%">
  <img class="malmoeSlide" src="../Imgs/stillcut/malmoe_stillcut_5.jpg" style="width:100%">
  <img class="malmoeSlide" src="../Imgs/stillcut/malmoe_stillcut_6.jpg" style="width:100%">
  <img class="malmoeSlide" src="../Imgs/stillcut/malmoe_stillcut_7.jpg" style="width:100%">
  <img class="malmoeSlide" src="../Imgs/stillcut/malmoe_stillcut_8.jpg" style="width:100%">

  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("malmoeSlide");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
	

</body>
</html>