<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
	   $("#calendar").click(function(){ //send버튼을 누르면 실행
		   window.open('fullcalendar.jsp');	   
		});
	});
			 

</script>








<title>영화 예매1</title> <!-- 타이틀은 일괄로 변경 바람  -->
</head>
<style>

table{
	width: 966px;
	height: 544px;
	border-collapse: collapse;
	border: 1px solid gray;
	
}
tr,td{
 border: 1px solid;
}

 




</style>
<body>
<!-- 전체 테이블 -->
<table id="Ticketing1"> 
<!-- 날짜 -->
<tr id="TicketingDate" style="border: 1px solid gray;" >
<td colspan="4" style="border: 1px solid gray;">
<img src="Imgs/date_img.gif">
<img src="Imgs/dal_ico_img.gif" align="right" style="padding-right:  20px;" id="calendar" onclick="calendar();">
</td><td width="534" height="90" ><img src="Imgs/time_img.gif"></td>
</tr>

<!-- 날짜 선택-->
<tr>
<td colspan="4"><div id="calendar">
<ol>
<li>1</li>
<li>2</li>



</ol>




</div></td>
<td><div id="calendar">2</div></td>
</tr>

<!-- 극장 -->
<tr style="border: 1px solid gray;">
<td colspan="4" style="border: 1px solid gray;">
<img src="Imgs/kukjang_img.gif" >
<img src="Imgs/reflash_img.gif" align="right" style="padding: 10px;"></td>
<td rowspan="7" align="center" >
<img src="Imgs/johe_img.gif"></td>
</tr>

<!-- 극장 선택 이미지 -->
<tr id="TheatersSelect">
<td colspan="2" align="center"><img src="Imgs/kukjang_plus.gif" id="TheatersSelect1"></td><td colspan="2" align="center"><Img src="Imgs/kukjang_plus.gif" id="TheatersSelect2"></td>
</tr>

<!-- 극장 선택 이미지 -->
<tr id="TheatersSelect">
<td colspan="2" align="center" >
<img src="Imgs/kukjang_plus.gif" style="padding: 10px;" id="TheatersSelect3"></td>
<td colspan="2" align="center">
<Img src="Imgs/kukjang_plus.gif" id="TheatersSelect4"></td>
</tr>

<!-- 영화 -->
<tr id="MoveSelect" style="border: 1px solid gray;">
<td colspan="4"><img src="Imgs/movie_img.gif">
<img src="Imgs/reflash_img.gif" align="right" style="padding:  10px;"></td>
</tr>

<!-- 영화 선택 이미지 -->
<tr id="MoveSelect" style="border: 1px solid gray;">
<td align="center" style="border: 1px solid gray;"><img src="Imgs/movie_plus.gif" id="MoveSelect1"></td>
<td align="center" style="border: 1px solid gray;"><img src="Imgs/movie_plus.gif" id="MoveSelect1"></td>
<td align="center" style="border: 1px solid gray;"><img src="Imgs/movie_plus.gif" id="MoveSelect1"></td>
<td align="center" style="border: 1px solid gray;"><img src="Imgs/movie_plus.gif" id="MoveSelect1"></td>
</tr>

<!-- 영화관 선택 라디오 -->
<tr id="TheatersType">
<!-- 영화관 선택 라디오  name = TheatersType-->
<td>&nbsp;&nbsp;<input type="radio" value="전체" checked="checked" name="TheatersType">전체</td>
<td><input type="radio" value="2D" name="TheatersType">2D</td>
<td colspan="2"><input type="radio" value="3D" name="TheatersType">3D</td>
</tr>
<tr id="TheatersType"><!-- 영화관 선택 라디오 -->
<td>&nbsp;&nbsp;<input type="radio" value="더빙" name="TheatersType">더빙<td>
<input type="radio" value="자막" name="TheatersType">자막</td><td colspan="2">
<input type="radio" value="ATMOS" name="TheatersType">ATMOS</td>
</tr>
</table>

</body>
</html>