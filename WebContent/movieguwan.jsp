<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관 페이지</title>
</head>
	<style>
	#container{
		margin : 0 auto;
		width : 1600px;
	}
	
	.body_border{
            background-color: rgba(217,217,217, 0.3);
            border-bottom: 3px solid purple;
            width: 1600px;
            height: 50px;
        }		
	</style>
<body>
<div id="container">

	<header id="header">
		  <jsp:include page="movie/header.jsp"/>
	</header>
		
	<div class="body_border">
				  
	</div>
	<div style="height: 50px; margin: 5px;">
			    <span style="color: purple;"><strong>영화관</strong></span>
	</div> <!--경계용 div-->
	
	<div>
		<img src="/teamproject/movie/movieguwan.jpg">
	</div>
	
	<div id="guwan">
		<jsp:include page="/movie/guwanInfo.jsp"/>
	</div>
	
	<div style="height : 200px;"></div> <!-- 경계구분용 div -->
			
			<!-- footer_theater -->
				<jsp:include page="movie/footer_theater.jsp"/>
			
			<!--  footer -->
				<jsp:include page="movie/footer.jsp"/>
</div>
</body>
</html>