<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이프시어터, 무비박스</title>
<link rel = "icon" href = "favicon.ico" type = "image/x-icon"/>
</head>

<body>
	<div id="container" style="margin: 0 auto; width:1600px">
			<header id="header">
				  <jsp:include page="movie/header.jsp"/>
			</header>
				
			<!-- 슬라이드쇼 영역 -->
				<jsp:include page="movie/slide.jsp"/>
			
			<!-- 무비리스트 영역 사진 클릭시 동영상 modal 팝업됨 -->
				<jsp:include page="movie/movieList.jsp"/>
						
			<div style="height : 200px;"></div> <!-- 경계구분용 div -->
				
			<!-- footer 위 쪽 영화관 위치 영역 -->
				<jsp:include page="movie/footer_theater.jsp"/>
			
			<!--  footer -->
				<jsp:include page="movie/footer.jsp"/>
	</div>
</body>
</html>