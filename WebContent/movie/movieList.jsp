<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="/teamproject/css/movieArray.css">
    <link rel="stylesheet" type="text/css" href="/teamproject/css/starhover.css">
    <link rel="stylesheet" type="text/css" href="/teamproject/css/imghover.css">
    <script src="/teamproject/js/starhover.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<title>무비리스트2 수정중</title>
</head>

<style>
html, body {
  height: 100%;
  overflow-y: auto;
  overflow-x : hidden;
}
 
#myMalmoeModal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
 
.modal-content {
  height: 100%;
  overflow: scroll;
}
</style>

<script>
	function sendMovieTitle(){
		var movieTitle = $("#movieTitle8").text();
		alert(movieTitle);
		location.href = "/teamproject/sangsae/malmoe_sangsaePage.jsp?="+movieTitle;
	}
</script>
	
<body>
	<section class="moive_wrapper">
            <!-- 포스터 1행 li는 각각의 포스터-->
         <div class="movie_inner">
              <ul id="movielist">
                     <!-- 아쿠아맨 -->
                  <li id="movie_border">
                     <div class="poster">
	                     <!-- 이미지 및 별점 들어가는곳 -->
	                         <img src="/teamproject/Imgs/aquaman.jpg">
	                    		
	                      <div class="movie_name">
	                        <ul>
	                            <li><img src="/teamproject/Imgs/12_img.gif"></li> 
	                            <li><span>아쿠아맨</span></li>
	                        </ul>
	                     </div>
	                     <div class="movie_button">
	                         <input class="btn btn-outline-dark" data-toggle="modal" data-target="#aquamanModal" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
	                     </div>
                    </div>
                  </li>
                  
                      <!-- 범블비 -->
                  <li id="movie_border">
                      <div class="poster">
                      	<!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/bumblebee.jpg" data-toggle="modal" data-target="#bumblebeeModal">
                     	<%-- <jsp:include page="/movie/star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li> 
                            <li><span>범블비</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                      <!-- 구스베이비 -->
                  <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/goosebaby.jpg" data-toggle="modal" data-target="#goosebabyModal">
                     	<%-- <jsp:include page="star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/all_img.gif"></li>
                            <li><span>구스베이비</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                      <!-- 그린북 -->
                  <li id="movie_border">
                      <div class="poster">
                       <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/greenbook.jpg" data-toggle="modal" data-target="#greenbookModal">
                     	<%-- <jsp:include page="star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li>
                            <li><span>그린북</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                      <!-- 내안의 그놈 -->
                  <li id="movie_border">
                      <div class="poster">
                        <!-- 이미지 밑 별점 들어가는곳 -->
                        <img src="/teamproject/Imgs/insideman.jpg" data-toggle="modal" data-target="#insidemanModal">
                     	<%-- <jsp:include page="star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/15_img.gif"></li>
                            <li><span>내안의 그놈</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
             </ul>
          </div>
          
          <!-- 포스터 2행-->
          <div class="movie_inner">
             <ul id="movielist">
                        <!-- 메이트-->
                 <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/mate.jpg" data-toggle="modal" data-target="#mateModal">
                     	<%-- <jsp:include page="star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/15_img.gif"></li>
                            <li><span>메이트</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                   <!-- 보헤미안 랩소디-->
                 <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                        <img src="/teamproject/Imgs/rhapsody.jpg" data-toggle="modal" data-target="#rhapsodyModal">    
                       <%--  <jsp:include page="star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li>
                            <li><span>보헤미안랩소디</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                   <!-- 말모이 -->
                <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/secretword.jpg" data-toggle="modal" data-target="#malmoeModal">
                          <%-- <jsp:include page="star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li>
                            <li><span id="movieTitle8">말모이</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark"  type="button" value="상세정보" onclick="sendMovieTitle();">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                   <!-- 스파이더맨 뉴 유니버스-->
                 <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                        <img src="/teamproject/Imgs/spiderman.jpg" data-toggle="modal" data-target="#spiderModal">
                       <%--  <jsp:include page="star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li> 
                            <li><span>스파이더맨 뉴유니버스</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  <!-- 왕이될 아이-->
                 <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/thekidking.jpg" data-toggle="modal" data-target="#thekidkingModal">
                         <%-- <jsp:include page="star_ratingtag.jsp"/> --%>
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/all_img.gif"></li>
                            <li><span>왕이될아이</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보">
                         <input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
             </ul>
          </div>
      </section>
      
      <jsp:include page="/sangsae/modalpopPage.jsp"/>
      
</body>
</html>