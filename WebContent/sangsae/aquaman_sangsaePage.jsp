<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아쿠아맨 상세페이지</title>
	<style>
		#full-body{
			margin:0 auto;
			width:1600px;
		}
		
		.commentResult_area{
			margin:0 auto;
			margin-left : 15%;
			width:1600px;
		}
	</style>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
	
	//window.onload 하면 페이지 로딩이 끝나마자 실행 한다는 뜻 이다.
	window.onload = function(){
		getData();
	};
	
	//시작하자마자 테이블 뿌리기위해 load를 이용.	
	function getData(pageNum){
		var movieTitle = $("#movieTitle").val();
		$("#comment_result").load("/teamproject/list.do?movieTitle="+movieTitle,{"pageNum":pageNum},function(data){
			$("#comment_result").html(data);
		});
	}
	
		function sendComment(){
			$.ajax({
				type : "POST",
				url : "/teamproject/comment.do",
				data : {"comment_content": $("#comment_content").val(),
						"star_grade" : $('input[name=star-input]:checked').val(),
						"movieTitle" : $("#movieTitle").val(),
						"userID" : $("#userID").val()
				},
				success : function(gift){
					$("#comment_result").html(gift);
				},
				beforeSend : showRequest
			});
		}

		function showRequest(){
			
			if($('input[name=star-input]:checked').val() == null){
				$("#comment_content").focus();
				return false;
			}
			
			if(!$("#comment_content").val()){
				$("#comment_content").focus(); //평점 안 넣었을 때 여기로 깜빡이게 하기
				return false;
			}
		}
		
		//글자수 체크하는 함수
		function textCount(obj, target){
		
			var len = obj.value.length; //입력한 글자 수 
			if(obj.size < len){ //comment 최대 글자수 100자
				$("#comment_content").focus();
				return;
			}
			$("#"+target).text(len); //target 영역에 글자 수 출력
		}
		
		//스틸컷 또는 동영상 누를떄마다 cutORvideo 영역이 바뀌게 하기
		
		function showStillcut(){
			$("#cutORvideo").load("/teamproject/sangsae/aquamanStillCut.jsp");
		}
		
		function showVideo(){
			$("#cutORvideo").load("/teamproject/sangsae/aquamanVideo.jsp");
		}
		
		//Ticketing1.jsp로 영화이름 보내기
		function sendMovieTitleTicket(){
			var movieTitle = $("#movieName").text();
			window.open("/teamproject/movie/Ticketing1.jsp?movieTitle="+movieTitle,"", "width=1120 height=580");
			
		}
	
	</script>

</head>
<body>
		<div id="full-body" style="">
			<table width="968" border="0" align="center" cellpadding="0" cellspacing="0">
		  <tr>
		    <td width="14"><img src="/teamproject/Imgs/blank.gif" width="14" height="3"></td>
		    <td colspan="3"><table width="908" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="230"><img src="/teamproject/Imgs/aquaman.jpg" width="230" height="336"></td>
		        <td><table border="0" cellspacing="0" cellpadding="0">
		          <tr>
		            <td width="20">&nbsp;</td>
		            <td colspan="4"><img src="/teamproject/Imgs/12.gif" width="30" height="31"> <span class="style4" id="movieName">아쿠아맨 </span></td>
		            </tr>
		          <tr>
		            <td rowspan="3">&nbsp;</td>
		            <td height="5" colspan="4" background="/teamproject/Imgs/blank.gif"><img src="/teamproject/Imgs/blank.gif" width="3" height="15"></td>
		            </tr>
		          <tr>
		            <td height="1" colspan="4" background="/teamproject/Imgs/line.gif"><img src="/teamproject/Imgs/line.gif" width="8" height="1"></td>
		          </tr>
		          <tr>
		            <td height="5" colspan="4" background="/teamproject/Imgs/blank.gif"><img src="/teamproject/Imgs/blank.gif" width="3" height="15"></td>
		          </tr>
		          <tr>
		            <td rowspan="2">&nbsp;</td>
		            <td width="213">4087명 참여 8.0 </td>
		            <td colspan="2">예매율 <span class="style3">19</span>위 0.5% </td>
		            <td width="122">
		            	<div align="right">
		            		<img src="/teamproject/Imgs/eyme.gif" width="121" height="43" onclick="sendMovieTitleTicket();">
		            	</div>
		            </td>
		          </tr>
		          <tr>
		            <td height="5" colspan="4"><img src="/teamproject/Imgs/blank.gif" width="3" height="20"></td>
		            </tr>
		          <tr>
		            <td>&nbsp;</td>
		            <td>타입 : 디지털 </td>
		            <td colspan="3">&nbsp;</td>
		          </tr>
		          <tr>
		            <td>&nbsp;</td>
		            <td>개봉일 : 2018.12.19</td>
		            <td colspan="3">&nbsp;</td>
		          </tr>
		          <tr>
		            <td>&nbsp;</td>
		            <td>감독 : 제임스 완 </td>
		            <td colspan="3">&nbsp;</td>
		          </tr>
		          <tr>
		            <td>&nbsp;</td>
		            <td>출연진 : 이슨 모모아, 앰버 허드, 니콜 키드먼, 패트릭 윌슨, 윌렘 데포, 돌프 룬드그렌 </td>
		            <td colspan="3">&nbsp;</td>
		          </tr>
		          <tr>
		            <td>&nbsp;</td>
		            <td>장르 : SF, 액션, 어드벤처 /143분 </td>
		            <td colspan="3">&nbsp;</td>
		          </tr>
		          <tr>
		            <td>&nbsp;</td>
		            <td>누적관객 : 5,028,502명 </td>
		            <td colspan="3">전일관객 :  4,572명 </td>
		          </tr>
		          <tr>
		            <td rowspan="2">&nbsp;</td>
		            <td height="10" colspan="4" background="/teamproject/Imgs/blank.gif"><img src="/teamproject/Imgs/blank.gif" width="3" height="20"></td>
		            </tr>
		          <tr>
		            <td colspan="4" background="/teamproject/Imgs/line.gif"><img src="/teamproject/Imgs/line.gif" width="8" height="1"></td>
		            </tr>
		          <tr>
		            <td>&nbsp;</td>
		            <td colspan="4" background="/teamproject/Imgs/blank.gif"><img src="/teamproject/Imgs/blank.gif" width="3" height="15"></td>
		            </tr>
		          <tr>
		            <td></td>
		            <td></td>
		            <td width="322"></td>
		            <td colspan="2"><div align="right"><img src="/teamproject/Imgs/movie_time.gif" width="100" height="39"></div></td>
		            </tr>
		        </table></td>
		      </tr>
		    </table></td>
		    <td width="14"><img src="/teamproject/Imgs/blank.gif" width="14" height="3"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td colspan="3">&nbsp;</td>
		    <td>&nbsp;</td>
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td colspan="3"><table width="763" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="763"><p class="style3 style5">줄거리</p>
		        	<div id="movie_story">
		        		땅의 아들이자 바다의 왕, 심해의 수호자인 슈퍼히어로 아쿠아맨의 탄생을 그린 액션 블록버스터
		        	</div>
		         </td>
		      </tr>
		    </table></td>
		    <td>&nbsp;</td>
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td colspan="3">&nbsp;</td>
		    <td>&nbsp;</td>
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td>
		    	<span class="style6" id="stillcut-button" onclick="showStillcut();">스틸컷</span>
		    </td>
		    <td><span class="style8" id="video-button" onclick="showVideo();">동영상</span></td>
		    <td width="76">&nbsp;</td>
		    <td>&nbsp;</td>
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td colspan="3">&nbsp;</td>
		    <td>&nbsp;</td>
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td width="76" bgcolor="#000000"></td>
		    <td width="798" bgcolor="#000000">
		    		<div id="cutORvideo"><jsp:include page="/sangsae/aquamanStillCut.jsp"/> <!-- 스틸컷 or 동영상이 나오도록 구분해야함 -->
		    		</div>
		    </td>
		    <td width="76" bgcolor="#000000"></td>
		    <td>&nbsp;</td>
		  </tr>
		  <tr>
		    <td width="14">&nbsp;</td>
		    <td colspan="3">&nbsp;</td>
		    <td>&nbsp;</td>
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td colspan="3"><table width="940" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="84">&nbsp;</td>
		        <td width="175">&nbsp;</td>
		        <td width="604">&nbsp;</td>
		        <td width="77">&nbsp;</td>
		      </tr>
		      <tr>
		        <td>&nbsp;</td>
		        <td>&nbsp;</td>
		        <td>&nbsp;</td>
		        <td>
		        	<div align="right"> <!-- 글자수 체크 -->
	 						<span id="commentCount">0</span>/100
		       	 	</div>
		        </td>
		      </tr>
		      <tr>
		        <td><div align="center"><img src="/teamproject/Imgs/stillcut/man_img.gif" width="62" height="62"></div></td>
		        <!--평점입력 -->
				<td><div align="center">				
				  <table width="175" border="0" cellspacing="0" cellpadding="0">
		            <tr>
					<!-- 별표 평점 입력부분 -->
		              <td>&nbsp;</td>
		            </tr>
		            <tr>
		              <td>
		              		<div align="center">     
		              			<jsp:include page="/sangsae/star.jsp"/>  <!-- 나중에는 영화이름까지 넣으면 해당 상세페이지에만 그 평점이 보이도록 해야함 -->     		
		              		</div> 
		              </td>
		            </tr>
		          </table>
				</div>
				</td>
		        <td>
		        <table style="width: 604px; border : 0px; cellspacing: 0px; cellpadding:0px;">
		          <tr>
		            <td>
		            	<c:if test="${sessionScope.mem_id != null}">
		              	<textarea name="comment_content" id="comment_content" cols="100%" rows="5" placeholder="100자까지 적을 수 있습니다." maxlength="100" onkeyup="textCount(this,'commentCount')"></textarea>
		              	</c:if>
		              	<input type="hidden" id="userID" value="${sessionScope.mem_id}"/>
		              	<input type="hidden" id="movieTitle" value="${param.movieTitle}"/>
		              	
		              	<c:if test="${sessionScope.mem_id == null}">
		              	<textarea name="comment_content" id="comment_content" cols="100%" rows="5" placeholder="로그인이 필요합니다." disabled="disabled" maxlength="100" onkeyup="textCount(this,'commentCount')"></textarea>
		              	</c:if>
		            </td>
		          </tr>
		        </table>
		     
		        </td>
		        <td>
		        	<img src="/teamproject/Imgs/submit_btn.gif" width="86" height="86" onclick="sendComment();">
		        </td>
		      </tr>
		      <tr>
		        <td colspan="4">&nbsp;</td>
		        </tr>
		    </table>
		      
		    </td>
		    <td>&nbsp;</td>
		  </tr>
		</table>
		
		 <!-- 입력한 코멘트가 Ajax방식으로 comment_result div영역에 뿌려짐 -->
		<div id="comment_result" style="width : 1084px; align: center;">
		
		</div>
		 <!-- 코멘트 끝 -->
	</div>
</body>
</html>