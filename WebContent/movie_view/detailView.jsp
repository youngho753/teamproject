<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie detail</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
		function sendComment(){
			$.ajax({
				type : "POST",
				url : "comment.do",
				data : {"comment_content": $("#comment_content").val()},
				success : function(gift){
					$("#comment_result").html(gift);
				},
				beforeSend : showRequest
			});
		}
		
		function showRequest(){
			if(!$("#comment_content").val()){
				alert("평점을 입력해주세요!");
				$("#comment_content").focus(); //평점 안 넣었을 때 여기로 깜빡이게 하기
				return false;
			}
		}
	
	</script>

</head>
<body>
	<table width="968" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="14"><img src="../Imgs/blank.gif" width="14" height="3"></td>
    <td colspan="3"><table width="908" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="230"><img src="../Imgs/mal.jpg" width="230" height="336"></td>
        <td><table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20">&nbsp;</td>
            <td colspan="4"><img src="../Imgs/12.gif" width="30" height="31"> <span class="style4">말모이 </span></td>
            </tr>
          <tr>
            <td rowspan="3">&nbsp;</td>
            <td height="5" colspan="4" background="../Imgs/blank.gif"><img src="../Imgs/blank.gif" width="3" height="15"></td>
            </tr>
          <tr>
            <td height="1" colspan="4" background="../Imgs/line.gif"><img src="../Imgs/line.gif" width="8" height="1"></td>
          </tr>
          <tr>
            <td height="5" colspan="4" background="../Imgs/blank.gif"><img src="../Imgs/blank.gif" width="3" height="15"></td>
          </tr>
          <tr>
            <td rowspan="2">&nbsp;</td>
            <td width="213">946명 참여 8.8 </td>
            <td colspan="2">예매율 <span class="style3">1</span>위 29.6% </td>
            <td width="122">
            	<div align="right">
            		<img src="../Imgs/eyme.gif" width="121" height="43"> <!-- onclick줘서 동작시키기 -->
            	</div>
            </td>
          </tr>
          <tr>
            <td height="5" colspan="4"><img src="../Imgs/blank.gif" width="3" height="20"></td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td>타입 : 디지털 </td>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>개봉일 : 2019.01.09</td>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>감독 : 엄유나 </td>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>출연진 : 유해진, 윤계상 </td>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>장르 : 드라마/135분 </td>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>누적관객 : 1,185,837명 </td>
            <td colspan="3">전일관객 : 324,341명 </td>
          </tr>
          <tr>
            <td rowspan="2">&nbsp;</td>
            <td height="10" colspan="4" background="../Imgs/blank.gif"><img src="../Imgs/blank.gif" width="3" height="20"></td>
            </tr>
          <tr>
            <td colspan="4" background="../Imgs/line.gif"><img src="../Imgs/line.gif" width="8" height="1"></td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="4" background="../Imgs/blank.gif"><img src="../Imgs/blank.gif" width="3" height="15"></td>
            </tr>
          <tr>
            <td></td>
            <td></td>
            <td width="322"></td>
            <td colspan="2"><div align="right"><img src="../Imgs/movie_time.gif" width="100" height="39"></div></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="14"><img src="../Imgs/blank.gif" width="14" height="3"></td>
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
        		까막눈 판수, 우리말에 눈뜨다! vs 조선어학회 대표 정환, ‘우리'의 소중함에 눈뜨다! <br>
        		1940년대 우리말이 점점 사라져가고 있는 경성.
        		극장에서 해고된 후 아들 학비 때문에 가방을 훔치다 실패한 판수.
        		하필 면접 보러 간 조선어학회 대표가 가방 주인 정환이다.
        		사전 만드는데 전과자에다 까막눈이라니!
        		그러나 판수를 반기는 회원들에 밀려 정환은 읽고 쓰기를 떼는 조건으로 그를 받아들인다.
        		돈도 아닌 말을 대체 왜 모으나 싶었던 판수는 난생처음 글을 읽으며 우리말의 소중함에 눈뜨고,
        		정환 또한 전국의 말을 모으는 ‘말모이'에 힘을 보태는 판수를 통해 ‘우리'의 소중함에 눈뜬다.
        		얼마 남지 않은 시간, 바짝 조여오는 일제의 감시를 피해 ‘말모이'를 끝내야 하는데…
        		우리말이 금지된 시대, 말과 마음이 모여 사전이 된다.
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
    <td><span class="style6">스틸컷</span></td>
    <td><span class="style8">동영상</span></td>
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
    <td width="76" bgcolor="#000000"><img src="../Imgs/black_left.gif" width="74" height="500"></td>
    <td width="798" bgcolor="#000000"><div align="center"><img src="../Imgs/big.gif" width="351" height="500"></div></td>
    <td width="76" bgcolor="#000000"><img src="../Imgs/black_rignht.gif" width="74" height="500"></td>
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
        <td width="84">한줄평(887)</td>
        <td width="175">&nbsp;</td>
        <td width="604">&nbsp;</td>
        <td width="77">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><div align="right">0/100</div></td>
      </tr>
      <tr>
        <td><div align="center"><img src="../Imgs/man_img.gif" width="62" height="62"></div></td>
        <!--평점입력 -->
		<td><div align="center">
		  <table width="175" border="0" cellspacing="0" cellpadding="0">
            <tr>
			<!-- 별표 평점 입력부분 -->
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="center">평점을 입력하세요. </div></td>
            </tr>
          </table>
		</div>
		</td>
        <td>
        <table width="604" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
            	<form name="frm">
              	<textarea name="comment_content" id="comment_content" cols="100%" rows="5"></textarea>
              	<input type="hidden" id="userID" value="여기는아이디세션값"/>
              	<input type="hidden" id="movieName" value="상세보기버튼 눌렀을 때, 해당영화의 이름을 가져오기"/>
              	<input type="hidden" id="starRating" value="별점 인덱스로 구별하기"/>
            	</form>
            </td>
          </tr>
        </table>
        </td>
        <td>
        	<img src="../Imgs/submit_btn.gif" width="86" height="86" onclick="sendComment();">
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
<div id="comment_result">

</div>
 <!-- 코멘트 끝 -->

</body>
</html>