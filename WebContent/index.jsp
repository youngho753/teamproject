<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이프시어터, 무비박스</title>
<link rel = "icon" href = "favicon.ico" type = "image/x-icon"/>
<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon"/>



<link rel="stylesheet" type="text/css" href="../css/all.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
/* 이 페이지는 처음 시작할때 나오는 페이지 입니다. */
$(document).ready(function(){
	//페이지가 load되면 다른파일의 페이지를 가져온다.
    $("#header").load("movie/header.jsp");
	$("#slide").load("movie/slide.jsp");
    $("#Article").load("movie/movieList.jsp");
    $("#footer").load("movie/footer.jsp");
});
</script>
</head>

<body>
<div id = "container">
<!-- header -->
<div id = "header" style = "width : 1600px;"></div>
<!--  slideshow -->
<div id = "slide" style = "width : 1600px;"></div>
<!-- 본문 -->
<div id = "Article" style = "width : 1600px;"></div>
<!-- footer -->
<div id = "footer" style = "width : 1600px; height : 200px;"></div>
</div>
</body>
</html>


