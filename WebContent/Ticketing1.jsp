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
		var popupX = (window.screen.width / 2) - (200 / 2);
		var popupY = (window.screen.height / 2) - (100 / 2);
		window.open('calendar.jsp','달력','width=370, height=400, scrollbars= 0, toolbar=0, menubar=no, resizable=no, left= '+ popupX + ', top= '+ popupY + ', screenX= '+ 290 + ', screenY= '+ 200);
		});
	});
</script>
<script>
$(document).ready(function(){
	
	var date = new Date();
	var d = date.getDate(); //일
	var m = date.getMonth(); //월
	var y = date.getFullYear(); //년
	var h = date.getHours(); //시
	
	
	//일 월 년 시
	var toDate = new Date(y,m,d,h);
	 
	//오늘
	var toDay = toDate.getDate();
	
	//오늘 요일
	var toWeek = toDate.getDay();
	
	//지금 시간
	var toTime = toDate.getHours();
	
	//그해 월의 마지막 날
	var last=[31,28,31,30,31,30,31,31,30,31,30,31];
	//윤년!
	if(y%4 && y%100!=0 || y%400===0){
		lastDate = last[1] = 29;
	}
	//지금 월의 마지막일 
	var lastDay = last[m];
	
	
	//요일 쓰기
	var week = ['일','월','화','수','목','금','토'];
	
	//시간 쓰기	
	var time = [24,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23];
	
	//변수
	var week_next_num = 1;
	var time_next_num = 1;
	var time_max_num = 10;
	var week_max_num = 5;
	
		
	
	//time 오른쪽 버튼 클릭
	$(document).on('click','#r_btn',function(){ 
		time_next_num++;
		time_max_num++;
		timeTable();
		return false;
	});
	//time 왼쪽 버튼 클릭
	$(document).on('click','#l_btn',function(){ 
		var i = 0;
		if(i >= eval(time_max_num)){
			alert("더이상 움직일수 없습니다.")
		}else{
			time_next_num--;
			time_max_num--;
		}
		
		timeTable();
		return false;
		
	});
	
	//week 오른쪽 버튼 클릭
	$(document).on('click','#r_btn_week',function(){ 
		week_next_num++;
		week_max_num++;
		weektable();
		return false;
	});
	
	//week 왼쪽 버튼 클릭
	$(document).on('click','#l_btn_week',function(){
		var i = 1;
		if(i >= week_next_num){
			alert("더이상 움직일수 없습니다.")
		}else{
			week_next_num--;
			week_max_num--;
			
		}
		
		
		weektable();
		return false;
		
	});
	
	//주간 테이블
	function weektable(){
		var calendarweek = "<table id='calender_ul'>";
		calendarweek +="<tr>"; 
		calendarweek +="<td>";
		calendarweek +="<img src='/teamproject/Imgs/l_btn.gif' id='l_btn_week'>"
		calendarweek +="</td>";
		
	var sNum = 1;
	//행만들기
	var tm = eval(toDate.getDate()-1); 
	
	for(var i=week_next_num; i<=week_max_num; i++){
		if(toDay==eval(tm+i)){
			calendarweek += "<td bgcolor='#198591' style='font-size: 15px;'>"+"<a href='#' id='weekSelect'>"+"오늘"+ "</a>" +"</td>";
		 }else {  
			var a = eval(toWeek+i)-1;
			if(a > 6) a = a % 7
			
			var b = eval(tm+i);
			if (b >= lastDay+1) b = eval((b % lastDay))
			
			calendarweek += "<td id='nonweekSelect'>"+"<a href='#'>"+ b +"("+week[a]+")"+ "</a>" +"</td>";
						
		}
		var div = $('#calendarweek').html( 
				calendarweek
	             +"<td>"+"<img src='/teamproject/Imgs/r_btn.gif' id='r_btn_week'>"+"</td>"+"</tr>");
				
		}
	$(document).on('click','#weekSelect , #nonweekSelect',function(){
	 		
 		var select = $('#weekSelect').text();
		var nonselect = $(this).text();
 		
 		alert(nonselect);		
 		return false;
 		
 	}); 
	
	
	
	}
	
	weektable();
	
	//시간
	function timeTable(){
		var Time = "<table id='Time_ul'>";
		Time +="<tr id='timeTable_tr'>";
		Time +="<td>";
		Time +="<img src='/teamproject/Imgs/l_btn.gif' id='l_btn'>"
		Time +="</td>";
		
		
	var tNum = 1;
	var tmp = time[toTime]-5;
	for(var t=time_next_num; t<=time_max_num; t++){
		if(toTime==eval(tmp+t)){
			 Time += "<td bgcolor='#198591' id='timeSelect'>"+ eval(tmp+t) +"</a>"+"</td>";
		}else{
			var b = eval(tmp+t);
			if (b >=24) 
				b %=24;  
			Time += "<td id='timeNonSelect'>"+"<a href='#' >"+ b +"</a>" +"</td>";
			
		}
		
	}
	            
 	 var div = $('#calendarTime').html(
                Time
    			+"<td>"+"<img src='/teamproject/Imgs/r_btn.gif' id='r_btn'>"+"</td>"+"</tr>");
 	
 	$(document).on('click','#timeSelect , #timeNonSelect',function(){
 		 		
 		var select = $('#timeSelect').text();
		var nonselect = $(this).text();
 		var grade = $("input:radio[name=TheatersType]:checked").val(); //체크된 radio의 name();
 		alert(nonselect);		
 		return false;
 		
 	}); 
 	
 	
	}
	
	
	
	timeTable();
	
	
	
	
	            
	
});
</script>
<script>
$(document).ready(function(){
	//reflash버튼을 누르면 실행
   $('#reflash1,#reflash2').click(function(){ 
	   location.reload();
	   
	});
});
</script>
<script>
$(document).ready(function(){
		//극장 선택 버튼을 누르면 실행
	   $("#TheatersSelect1").click(function(){ 
		   //calendar.jsp 팝업 실행 
		   window.open('/teamproject/movie/movieTime.jsp','지역선택','width=1100px, height=600px, scrollbars= 0, toolbar=0, menubar=no resizable=no');
		});
	});
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


a {	
	display: inline-block;
	background-color: #fff;
	width: 30px;
	padding: 0;
	margin: 0;
	text-decoration: none;
	

}

#timeSelect{
	padding: 0;
	margin: 0;
	text-decoration: none;
	width: 40px;
	background-color: #198591;
	color: #fff;

}

#weekSelect{
	padding: 0;
	margin: 0;
	text-decoration: none;
	width: 40px;
	background-color: #198591;
	color: #fff;
	
	
}

#Time_ul {

	height: 10px;
	width: 544px;
	border: hidden;
	text-align: center;
	background-color: #fff;
	
}

#calender_ul{
	height: 10px;
	width: 544px;
	border: hidden;
	text-align: center;
	background-color: #fff;
}





</style>

<body>


<form name="Ticketing" action="Ticketing.do" method="get">
<!-- 전체 테이블 -->
<table id="Ticketing1">

<!-- 날짜 -->
<tr id="TicketingDate" style="border: 1px solid gray;" >
<td colspan="4" style="border: 1px solid gray;">
<img src="/teamproject/Imgs/date_img.gif">
<img src="/teamproject/Imgs/dal_ico_img.gif" align="right" style="padding-right:  20px;" id="calendar" >
<!-- 요일 -->
<div id="calendarweek"></div>
</td><td width="534" height="90" ><img src="/teamproject/Imgs/time_img.gif">
<!--  날짜 -->
<div id="calendarTime" ></div>
</td>
</tr>



<!-- 극장 -->
<tr style="border: 1px solid gray;">
<td colspan="4" style="border: 1px solid gray;">
<img src="/teamproject/Imgs/kukjang_img.gif" >
<img src="/teamproject/Imgs/reflash_img.gif" align="right" style="padding: 10px;" id="reflash1"></td>
<td rowspan="7" align="center" bgcolor="#ffffff">
<img src="/teamproject/Imgs/johe_img.gif" ></td>
</tr>

<!-- 극장 선택 이미지 -->
<tr id="TheatersSelect">
<td colspan="2" align="center"><img src="/teamproject/Imgs/kukjang_plus.gif" id="TheatersSelect1"></td>
<td colspan="2" align="center"><Img src="/teamproject/Imgs/kukjang_plus.gif" id="TheatersSelect2"></td>
</tr>
<!-- 극장 선택 이미지 --> 
<tr id="TheatersSelect">
<td colspan="2" align="center" >
<img src="/teamproject/Imgs/kukjang_plus.gif" style="padding: 10px;" id="TheatersSelect3"></td>
<td colspan="2" align="center">
<Img src="/teamproject/Imgs/kukjang_plus.gif" id="TheatersSelect4"></td>
</tr>

<!-- 영화 -->
<tr id="MoveSelect" style="border: 1px solid gray;">
<td colspan="4"><img src="/teamproject/Imgs/movie_img.gif">
<img src="/teamproject/Imgs/reflash_img.gif" align="right" style="padding:  10px;" id="reflash2"></td>
</tr>

<!-- 영화 선택 이미지 -->
<tr id="MoveSelect" style="border: 1px solid gray;">
<td align="center" style="border: 1px solid gray;"><img src="/teamproject/Imgs/movie_plus.gif" id="MoveSelect1"></td>
<td align="center" style="border: 1px solid gray;"><img src="/teamproject/Imgs/movie_plus.gif" id="MoveSelect1"></td>
<td align="center" style="border: 1px solid gray;"><img src="/teamproject/Imgs/movie_plus.gif" id="MoveSelect1"></td>
<td align="center" style="border: 1px solid gray;"><img src="/teamproject/Imgs/movie_plus.gif" id="MoveSelect1"></td>
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
<input type="radio" value="자막" name="TheatersType" >자막</td><td colspan="2">
<input type="radio" value="ATMOS" name="TheatersType">ATMOS</td>
</tr>
</table>
</form>


</body>

</html>