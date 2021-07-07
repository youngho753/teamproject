<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/movieEvent.css"/>
	
<title>이벤트페이지</title>
</head>

<body>
			<!-- 로고 메뉴부분-->
    <header id="header">
			<table class="headertable">
			<tr>
				<td colspan="8" width="492px" id="1">
					<img src="../Imgs/topbg.gif"> <!-- 공백 -->
				</td>
				
				<td id="2">
					<a href="../index.jsp"><img src="../Imgs/logo.gif"></a> <!-- 로고 -->
				</td>
				
				<td id="3" width="401px">
					<img src="../Imgs/topbg.gif"> <!-- 공백 -->
				</td>
				
				<td id="4">
					<a href="#"><img src="../Imgs/menu1.gif"></a> <!-- 영화 -->
				</td>
				<td id="5">
					<a href="#"><img src="../Imgs/menu2.gif"></a>	<!-- 영화관 -->
				</td>
				
				<td id="6">
					<a href="movieEvent.jsp"><img src="../Imgs/menu3.gif"></a> <!-- 이벤트 -->
				</td>
				
				<td id="7">
					<a href="#"><img src="../Imgs/menu4.gif"></a>	<!-- 로그인 -->
				</td>
				
				<td id="8" width="466px">
					<img src="../Imgs/topbg.gif"> <!-- 공백 -->
				</td>
			</tr>
		</table>
	</header>
	
	
	<!-- 로고와 이벤트사진 경계-->
			<div class="body_border">
			
			</div>
			
			<div style="height: 50px; margin: 5px;">
			    <span style="color: purple;"><strong>진행중인 이벤트</strong></span>
			</div> <!--경계용 div-->
			
			<!-- 이벤트 사진 부분-->
			<div class="event_body">
			    <div id="event_wrapper">
		            <div class="event_floor">
		                <ul>
		                       <!-- 이벤트1-->
		                    <li>
		                           <!-- 이미지1 -->
		                        <div class="event_img">
		                            <img src="../Imgs/event_img/event1_img.jpg">
		                        </div>
		                            <!-- 내용&날짜 -->
		                        <div id="event_content">
		                            <div>
		                                &lt;메이트&gt;필름 <br>소사이어티 굿즈
		                            </div>
		                            <div>
		                                2019.01.11~2019.01.22
		                            </div>
		                        </div>
		                    </li>
		                        <!-- 이벤트2-->
		                     <li>
		                         <div class="event_img">
		                             <img src="../Imgs/event_img/event2_img.jpg">
		                         </div>
		                        <div id="event_content">
		                            <div>
		                               [무비박스] 새해 무비박스 회원이면 누구나 다~ 돼지
		                            </div>
		                            <div>
		                                2019.01.11~2019.01.22
		                            </div>
		                        </div>
		                     </li>
		                         <!-- 이벤트3-->
		                      <li>
		                        <div class="event_img">
		                            <img src="../Imgs/event_img/event3_img.jpg">
		                        </div>
		                        <div id="event_content">
		                            <div>
		                                &lt;우행록&gt;굿즈패키지 <br>
		                                상영회
		                            </div>
		                            <div>
		                                2019.01.11~2019.01.22
		                            </div>
		                        </div>
		                      </li>
		                          <!-- 이벤트4-->
		                       <li>
		                        <div class="event_img">
		                            <img src="../Imgs/event_img/event4_img.jpg">
		                        </div>
		                        <div id="event_content">
		                            <div>
		                               1월 16일 단 하루, T Week T콤보 무료!
		                            </div>
		                            <div>
		                                2019.01.11~2019.01.22
		                            </div>
		                        </div>
		                       </li>
		                </ul>
		            </div>
		            
		            <div class="event_floor">
		               <ul>
		                           <!-- 이벤트5-->
		                    <li>
		                        <div class="event_img">
		                            <img src="../Imgs/event_img/event5_img.jpg">
		                        </div>
		                        <div id="event_content">
		                            <div>
		                                &lt;일일시호일&gt;필름 <br>소사이어티 토크
		                            </div>
		                            <div>
		                                2019.01.11~2019.01.22
		                            </div>
		                        </div>
		                    </li>
		                            <!-- 이벤트6-->
		                     <li>
		                        <div class="event_img">
		                            <img src="../Imgs/event_img/event6_img.jpg">
		                        </div>
		                        <div id="event_content">
		                            <div>
		                                &lt;더 서치&gt; 필름<br> 소사이어티 토크
		                            </div>
		                            <div>
		                                2019.01.11~2019.01.22
		                            </div>
		                        </div>
		                     </li>
		                             <!-- 이벤트7-->
		                      <li>
		                        <div class="event_img">
		                            <img src="../Imgs/event_img/event7_img.jpg">
		                        </div>
		                        <div id="event_content">
		                            <div>
		                                다이어리 콤보 출시 <br><br>
		                            </div>
		                            <div>
		                                2019.01.11~2019.01.22
		                            </div>
		                        </div>
		                      </li>
		                              <!-- 이벤트8-->
		                       <li>
		                        <div class="event_img">
		                            <img src="../Imgs/event_img/event8_img.jpg">
		                        </div>
		                       <div id="event_content">
		                            <div>
		                                1월 무비박스픽 <br>(Movie Pick)
		                            </div>
		                            <div>
		                                2019.01.11~2019.01.22
		                            </div>
		                        </div>
		                       </li>
		               </ul>
		            </div>
			    </div>
			</div>
		                   
		    <div style="height: 50px">
		        
		    </div>
		                    
		    <div class="body_border">
			
			</div>
     
            <!-- 카피라이트 및 사업자등록 영역-->
        <footer>
            
            
        </footer>
					
					
					<!-- script -->
					<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</body>
</html>