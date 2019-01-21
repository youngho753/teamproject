<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이프시어터, 무비박스</title>
<link rel = "icon" href = "favicon.ico" type = "image/x-icon"/>
<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon"/>

<style>
	#container{
		margin: 0 auto;
		width: 1600px;
	}
</style>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

</head>

<body>
	<div id="container">
			<!-- header영역 -->
			<header>
				<jsp:include page="movie/header.jsp"/>
			</header>
	
			<!-- 슬라이드쇼 영역 -->
				<jsp:include page="movie/slide.jsp"/>
	
			<!-- 바디 영화리스트 영역 -->
				<jsp:include page="movie/movieList.jsp"/>
	
				<div style="height : 200px;"></div> <!-- 경계구분용 div -->
	
			<!-- footer 위쪽 영화관위치 영역 -->
				<jsp:include page="movie/footer_theater.jsp"/>
	
			<!-- footer 영역 -->
				<jsp:include page="movie/footer.jsp"/>
		
	</div>
</body>
</html>