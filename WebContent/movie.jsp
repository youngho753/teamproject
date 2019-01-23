<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon"/>
<title>영화 페이지</title>
	
	<style>
		.full-body{
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
</head>
<body>
		<div class="full-body">
				<header id="header">
				  <jsp:include page="movie/header.jsp"/>
				</header>
				
				<!-- 로고와 이벤트사진 경계-->
					<div class="body_border">
					
					</div>
					<div style="height: 50px; margin: 5px;">
			    <span style="color: purple;"><strong>현재 상영작</strong></span>
			</div> <!--경계용 div-->
			
			<!-- 무비리스트 영역 사진 클릭시 동영상 modal 팝업됨 -->
				<jsp:include page="movie/movieListModal.jsp"/>
						
			<div style="height : 200px;"></div> <!-- 경계구분용 div -->
			<!--  footer -->
				<jsp:include page="movie/footer.jsp"/>
		</div>
</body>
</html>