<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
		//calendar버튼을 누르면 실행
	   $("#calendar").click(function(){ 
		   //calendar.jsp 팝업 실행 
		   window.open('calendar.jsp','달력',
				   'width=600, height=900, scrollbars= 0, toolbar=0, menubar=no');	   
		});
	});
			 

</script>
<script>
	
	var date = new Date();
	var d = date.getDate(); //일
	var m = date.getMonth(); //월
	var y = date.getFullYear(); //년
	var h = date.getHours(); //시
	
	
	//오늘
	var toDate = new Date(y,m,d,h);
	 
	//그날의 요일
	var toDay = toDate.getDate();
	
	//지금 시간
	var toTime = toDate.getHours();
	
	
	//그해 월의 마지막 날
	var last=[31,28,31,30,31,30,31,31,30,31,30,31];
	//윤년!
	if(y%4 && y%100!=0 || y%400===0){
		lastDate = last[1] = 29;
	}
	//지금 월의 마지막일 
	var lastDate = last[m];
	
	//달력에 필요한 행의 갯수
	//theDate(빈칸수),lastDate(월의 전체수)
	var row = Math.ceil((toDay+lastDate)/7);
	
	//요일 쓰기
	var week = ['일','월','화','수','목','금','토'];
	//시간 쓰기	
	var time = [24,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23];
	//요일의 행
	
	var calender = "<ul>";
	calender +="<li>";
	calender +="<img src='Imgs/l_btn.gif' id='l_btn'>"
	calender +="</li>"
		
	
	//달력의 초기값
	var sNum = 1;
		
	//행만들기
	for(var i=1; i<=5; i++){
				calender += "<li>"+ (sNum+toDay) +"("+week[i]+")"+"</li>";
				sNum++;
		};
	
				
		
		
	//시간	
	var Time = "<ul id='Time_ul'>";
	Time +="<li>";
	Time +="<img src='Imgs/l_btn.gif' id='l_btn'>"
	Time +="</li>"
	
	var tNum = 1;
	for(var t=1; t<=10; t++){
			Time += "<li>"+"<a href='#'>"+ ((tNum+time[toTime])-5)+"</a>" +"</li>";
			tNum++;
		
	}	
	
	//calender 출력
	function load() {
                     var div = document.getElementById('calendarweek');
                        div.innerHTML = div.innerHTML 
                        +calender
                        +"<li>"+"<img src='Imgs/r_btn.gif' id='r_btn'>"+"</li>";
                     
                     var div = document.getElementById('calendarTime');
                        div.innerHTML = div.innerHTML
                        +Time
        				+"<li>"+"<img src='Imgs/r_btn.gif' id='r_btn'>"+"</li>"+"</ul>"
                      };
	
	
</script>



<title>영화 예매1</title> <!-- 타이틀은 일괄로 변경 바람  -->
</head>
<style>

body{

	background-color: #f9f9f9;

}
table{
	width: 966px;
	height: 544px;
	border-collapse: collapse;
	border: 1px solid gray;
	
	}

 
.calendarDateWeek{

	margin-left: 20px;
	
	}

ul{
	margin: 0;
	padding: 0;
	text-align:center;
	
	
}	
li{
	margin:0 ;
 	display: inline;
 	padding:0 5px;
 	text-align: center;
 	
 	  	
 	}
 #Time_ul a{
 	text-align:center;
 	
 }
 
 
#r_btn{

	margin-top: 10px;
	padding-top: 10px; 
	
}


a {	
	
	display: inline-block;
	background-color: #fff;
	width: 30px;
	padding: 0;
	margin: 0;
	text-decoration: none;

}

</style>



<body onload="load()">
<!-- 전체 테이블 -->
<table id="Ticketing1"> 
<!-- 날짜 -->
<tr id="TicketingDate" style="border: 1px solid gray;" >
<td colspan="4" style="border: 1px solid gray;">
<img src="Imgs/date_img.gif">
<img src="Imgs/dal_ico_img.gif" align="right" style="padding-right:  20px;" id="calendar" onclick="calendar();">
<!-- 요일 -->
<div id="calendarweek"></div>
</td><td width="534" height="90" ><img src="Imgs/time_img.gif">
<!--  날짜 -->
<div id="calendarTime"></div>
</td>
</tr>


<!-- 극장 -->
<tr style="border: 1px solid gray;">
<td colspan="4" style="border: 1px solid gray;">
<img src="Imgs/kukjang_img.gif" >
<img src="Imgs/reflash_img.gif" align="right" style="padding: 10px;"></td>
<td rowspan="7" align="center" bgcolor="#ffffff">
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