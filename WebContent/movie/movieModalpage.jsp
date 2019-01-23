<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="../css/movieModal.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<title>영화관 페이지</title>
</head>
<body>
	<section class="moive_wrapper">
            <!-- 포스터 1행 li는 각각의 포스터-->
         <div class="movie_inner">
              <ul id="movielist">
                     <!-- 아쿠아맨 -->
                  <li id="movie_border">
                     <div class="poster">
	                         <img src="../Imgs/aquaman.jpg" data-toggle="modal" data-target="#auqamanModal">
	                      <div class="movie_name">
	                        <ul>
	                            <li><img src="../Imgs/12_img.gif" ></li> 
	                            <li><span>아쿠아맨</span></li>
	                        </ul>
	                     </div>
	                     <div class="movie_button">
	                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
	                     </div>
                    </div>
                  </li>
                  
                      <!-- 범블비 -->
                  <li id="movie_border">
                      <div class="poster">
                         <img src="../Imgs/bumblebee.jpg" data-toggle="modal" data-target="#bumblebeeModal">  
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/12_img.gif"></li> 
                            <li><span>범블비</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                      <!-- 구스베이비 -->
                  <li id="movie_border">
                      <div class="poster">
                      <!-- 이미지 밑 별점 들어가는곳 -->
                         <img src="../Imgs/goosebaby.jpg" data-toggle="modal" data-target="#goosebabyModal">
                     	
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/all_img.gif"></li>
                            <li><span>구스베이비</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                      <!-- 그린북 -->
                  <li id="movie_border">
                      <div class="poster">
                         <img src="../Imgs/greenbook.jpg" data-toggle="modal" data-target="#greenbookModal">             
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/12_img.gif"></li>
                            <li><span>그린북</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                      <!-- 내안의 그놈 -->
                  <li id="movie_border">
                      <div class="poster">
                        <!-- 이미지 밑 별점 들어가는곳 -->
                        <img src="../Imgs/insideman.jpg" data-toggle="modal" data-target="#insidemanModal">
                     	
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/15_img.gif"></li>
                            <li><span>내안의 그놈</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
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
                         <img src="../Imgs/mate.jpg" data-toggle="modal" data-target="#mateModal">
                     	
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/15_img.gif"></li>
                            <li><span>메이트</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                   <!-- 보헤미안 랩소디-->
                 <li id="movie_border">
                      <div class="poster">
                     
                        <img src="../Imgs/rhapsody.jpg" data-toggle="modal" data-target="#rhapsodyModal">    
                       
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/12_img.gif"></li>
                            <li><span>보헤미안랩소디</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                   <!-- 말모이 -->
                <li id="movie_border">
                      <div class="poster">
                     
                         <img src="../Imgs/secretword.jpg" data-toggle="modal" data-target="#malmoeModal">
                        
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/12_img.gif"></li>
                            <li><span>말모이</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  
                   <!-- 스파이더맨 뉴 유니버스-->
                 <li id="movie_border">
                      <div class="poster">
                        <img src="../Imgs/spiderman.jpg" data-toggle="modal" data-target="#spiderModal">
                      
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/12_img.gif"></li> 
                            <li><span>스파이더맨 뉴 유니버스</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
                  <!-- 왕이될 아이-->
                 <li id="movie_border">
                      <div class="poster">
                
                         <img src="../Imgs/thekidking.jpg" data-toggle="modal" data-target="#thekidkingModal">
                       
                     </div>
                      <div class="movie_name">
                        <ul>
                            <li><img src="../Imgs/all_img.gif"></li>
                            <li><span>왕이될아이</span></li>
                        </ul>
                     </div>
                     <div class="movie_button">
                         <input class="btn btn-outline-dark" type="button" value="상세정보"><input class="btn btn-outline-dark" type="button" value="예매하기">
                     </div>
                  </li>
             </ul>
          </div>
      </section>
      
      <!-- 모달영역 -->
      
      <!-- 아쿠아맨 모달 -->
      <div class="modal fade" id="auqamanModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" style="color: white"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel" style="color: white">상세정보</h4>
	      </div>
	      <div class="modal-body">
		        <div class="youtubeWrap">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/ZmqJJqFX_CU" frameborder="0" allowfullscreen></iframe>
            </div>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- 범블비 -->
	<div class="modal fade" id="bumblebeeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" style="color: white"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel" style="color: white">상세정보</h4>
	      </div>
	      <div class="modal-body">
		        <div class="youtubeWrap">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/9MNHV5A7YLA" frameborder="0" allowfullscreen></iframe>
            </div>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- 구스베이비 -->
	<div class="modal fade" id="goosebabyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" style="color: white"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel" style="color: white">상세정보</h4>
	      </div>
	      <div class="modal-body">
		        <div class="youtubeWrap">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/Cc5EGoEpanU" frameborder="0" allowfullscreen></iframe>
            </div>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- 그린북 -->
	<div class="modal fade" id="goosebabyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" style="color: white"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel" style="color: white">상세정보</h4>
	      </div>
	      <div class="modal-body">
		        <div class="youtubeWrap">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/hK_DHPxE2Xg" frameborder="0" allowfullscreen></iframe>
            </div>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- 내안의 그놈 -->
	<div class="modal fade" id="goosebabyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" style="color: white"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel" style="color: white">상세정보</h4>
	      </div>
	      <div class="modal-body">
		        <div class="youtubeWrap">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/Zy2Ht5gehsQ" frameborder="0" allowfullscreen></iframe>
            </div>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- 메이트 -->
	<div class="modal fade" id="goosebabyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" style="color: white"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel" style="color: white">상세정보</h4>
	      </div>
	      <div class="modal-body">
		        <div class="youtubeWrap">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/gI8FXsLnKwI" frameborder="0" allowfullscreen></iframe>
            </div>
	      </div>
	    </div>
	  </div>
	</div>
	
	
	
	
	<!--  scripts -->
 <script data-brackets-id='82' src="js/jquery.min.js"></script>
            <script data-brackets-id='83' src="js/jquery.scrolly.min.js"></script>
			<script data-brackets-id='84' src="js/jquery.poptrox.min.js"></script>
			<script data-brackets-id='85' src="js/skel.min.js"></script>
			<script data-brackets-id='86' src="js/util.js"></script>
			<script src="http://code.jquery.com/jquery-latest.min.js"></script>
            <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
            <script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
           <script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->
		

</body>
</html>