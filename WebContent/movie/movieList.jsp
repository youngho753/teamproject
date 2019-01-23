<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="/teamproject/css/movieArray.css">
    <script src="/teamproject/js/starhover.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<title>무비리스트</title>
</head>

<script>
	/* malmoe_sangsaePage.jsp로 영화제목 보내기(댓글쓸 때 DB에 영화이름 넣기 위함) */
	function sendMovieTitleSangsae(movieTitle){
		window.open("/teamproject/sangsae/malmoe_sangsaePage.jsp?movieTitle="+movieTitle,"", "width=1800 height=800");
	}
	
	/* 예매하기 이미지 눌러서 Ticketing1.jsp로 영화제목 보내기 */
	function sendMovieTitleTicket(movieTitle){
		window.open("/teamproject/Ticketing1.jsp?movieTitle="+movieTitle,"", "width=1120 height=580");
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
	                            <li><span id="mo">아쿠아맨</span></li>
	                        </ul>
	                     </div>
	                     <div class="movie_button">
	                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('아쿠아맨');">
	                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('아쿠아맨');">
	                     </div>
                    </div>
                  </li>
                  
                      <!-- 범블비 -->
                  <li id="movie_border">
                      <div class="poster">         
                         <img src="/teamproject/Imgs/bumblebee.jpg">
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li> 
                            <li><span>범블비</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('범블비');">
                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('범블비');">
                     </div>
                  </li>
                  
                      <!-- 구스베이비 -->
                  <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/goosebaby.jpg">	
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/all_img.gif"></li>
                            <li><span>구스베이비</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('구스베이비');">
                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('구스베이비');">
                     </div>
                  </li>
                  
                      <!-- 그린북 -->
                  <li id="movie_border">
                      <div class="poster">
                         <img src="/teamproject/Imgs/greenbook.jpg">
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li>
                            <li><span>그린북</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('그린북');">
                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('그린북');">
                     </div>
                  </li>
                  
                      <!-- 내안의 그놈 -->
                  <li id="movie_border">
                      <div class="poster">
                        <img src="/teamproject/Imgs/insideman.jpg">
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/15_img.gif"></li>
                            <li><span>내안의 그놈</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('내안의 그놈');">
                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('내안의 그놈');">
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
                         <img src="/teamproject/Imgs/mate.jpg">
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/15_img.gif"></li>
                            <li><span>메이트</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('메이트');">
                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('메이트');">
                     </div>
                  </li>
                  
                   <!-- 보헤미안 랩소디-->
                 <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                        <img src="/teamproject/Imgs/rhapsody.jpg">
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li>
                            <li><span>보헤미안랩소디</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('보헤미안랩소디');">
                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('보헤미안랩소디');">
                     </div>
                  </li>
                  
                   <!-- 말모이 -->
                <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/secretword.jpg">
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li>
                            <li><span>말모이</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark"  type="button" value="상세정보" onclick="sendMovieTitleSangsae('말모이');">
                         <input class="btn btn-outline-dark"  type="button" value="예매하기" onclick="sendMovieTitleTicket('말모이');">
                     </div>
                  </li>
                  
                   <!-- 스파이더맨 뉴 유니버스-->
                 <li id="movie_border">
                      <div class="poster">
                        <img src="/teamproject/Imgs/spiderman.jpg">
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/12_img.gif"></li> 
                            <li><span>스파이더맨 뉴유니버스</span></li>

                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('스파이더맨');">
                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('스파이더맨');">
                     </div>
                  </li>
                  <!-- 왕이될 아이-->
                 <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="/teamproject/Imgs/thekidking.jpg">
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="/teamproject/Imgs/all_img.gif"></li>
                            <li><span>왕이될아이</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보" onclick="sendMovieTitleSangsae('왕이될아이');">
                         <input class="btn btn-outline-dark" type="button" value="예매하기" onclick="sendMovieTitleTicket('왕이될아이');">
                     </div>
                  </li>
             </ul>
          </div>
      </section>

</body>
</html>