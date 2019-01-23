<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){

	
	var date = new Date();
	var d = date.getDate(); //일
	var m = date.getMonth(); //월
	var y = date.getFullYear(); //년
	
	//오늘
	var toDate = new Date(y,m,1);
	//그날의 요일
	
	var toDay = toDate.getDay();
	
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
	
	//달력의 연도/월 표기
	$('body').append("<h1>"+y+"년"+(m+1)+"월"+"</h1>")
	
	//요일의 행
	function calender(){
	var calender = "<table id='calender_table'>";
	calender += "<tr style='background : #a8a8a8'>";
	calender += "<td>일</td>";
	calender += "<td>월</td>";
	calender += "<td>화</td>";
	calender += "<td>수</td>";
	calender += "<td>목</td>";
	calender += "<td>금</td>";
	calender += "<td>토</td>";
	calender += "</tr>";
	
	//달력의 초기값
	var sNum = 1;
	//선택 가능 요일 변수
	var nextNum = 1;
	
	
	//행만들기
	for(var i=1; i<=row; i++){
		calender += "<tr>";
		//열만들기
		for(var k = 1; k<=7; k++){
			//월 1 이전 + 월마지막 이후는 &nbsp;
			if(i===1 && k<=toDay || sNum>lastDate){
				calender += "<td> &nbsp; </td>";
			}else{ 
				if(sNum === d)
					calender += "<td id ='to'>"+ sNum+ "</td>";
				else if(sNum === eval(d+nextNum))
					calender += "<td id ='next'>"+ sNum+ "</td>";
				else
					calender += "<td>"+ sNum + "</td>";
				sNum++;
				
			}
		
		}
		//행닫기
		calender +="</tr>";
	}
	
	
	$('body').append(calender);
	
	$('#to, #next').click(function(){
 		var select = $(this).text();
 		$.ajax({
	         type:"POST",
	         url:"Ticket.do",
	         data:postString, //post에 줄값
	         success:function(data){
	            $("#Result").html(data)
	         },
	         beforeSend:showRequest // showRequest 함수를 불러와라
	      });
	     
	  
	   getData();// getData 함수를 호출 ready가 항상 부르고 있다.
	 
	   function getData() {
			$("#Result").load("list",function(data){
				$("#calender").html(data);
			});
			
		}
	
	   $('body').append(select);
 		
 		
 	}); 
	
	};
	calender();
	
	
	

});
</script>
<style>

table {
	
	height: 300px;
	width: 350px;
	border-collapse: collapse;
}
tr,td{

	text-align: center;
	
}

h1{

	text-align: center;
}

#to{
	

	border-radius: 50%;
	background-color: #503396;
}

#next{

	border-radius: 50%;
	background-color: #d5cddc;
}

</style>
</head>

<body>
<div id="calender"></div>
</body>
</html>