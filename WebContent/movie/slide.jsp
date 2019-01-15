<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel = "stylesheet" type = "text/css" href = "../css/slide.css">
<title>slide</title>


<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 5000); // Change image every 5 seconds
}
</script>

</head>
<body>
	<section class="movie_slide">
        <div class="slide_view">
          <img class="mySlides" src="Imgs/top_img1.jpg">
          <img class="mySlides" src="Imgs/top_img2.jpg">
          <img class="mySlides" src="Imgs/top_img3.jpg">    
        </div>
    </section>
		<!-- script -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="js/slide.js"></script>
</body>
</html>