<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
	<link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'/>
	<link href='https://fonts.googleapis.com/css?family=Neucha' rel='stylesheet' type='text/css'/>
	<link rel ="stylesheet" type = "text/css" href = "css/slide.css">
<title>slide</title>

</head>
<body>
	<div id="wrapper">
      <div id="slider-wrap">
          <ul id="slider">
             <li>               
<img src="Imgs/top_img1.jpg">
             </li>
             
             <li>
<img src="Imgs/top_img2.jpg">
             </li>
             
             <li>
<img src="Imgs/top_img3.jpg">
             </li>
          </ul>
          
           <!--controls-->
          <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
          <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
          <div id="counter"></div>
          
          <div id="pagination-wrap">
            <ul>
            </ul>
          </div>
          <!--controls-->  
                 
      </div>
  
   </div>
            <!-- script-->
            <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
            <script src="js/slide.js"></script>
</body>
</html>