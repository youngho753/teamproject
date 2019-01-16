<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

table {
	height: 400px;
	width: 500px;
	border-collapse: collapse;
}
tr,td{
	border: 1px solid gray;
	

}
h1{
	text-align: center;
}

</style>
</head>
<script>
	
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
	document.write("<h1>"+y+"년"+(m+1)+"월"+"</h1>")
	
	//요일의 행
	var calender = "<table class='calender_table'>";
	calender += "<tr>";
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
		
	//행만들기
	for(var i=1; i<=row; i++){
		calender += "<tr>";
		//열만들기
		for(var k = 1; k<=7; k++){
			//월 1 이전 + 월마지막 이후는 &nbsp;
			if(i===1 && k<=toDay || sNum>lastDate){
				calender += "<td> &nbsp; </td>";
				
			}else{
				calender += "<td>"+ sNum+ "</td>";
				sNum++;
			}
		
		}
		//행닫기
		calender +="</tr>";
	}
	//calender 출력
	document.write(calender);
	
</script>
<body>
<div id="calender"></div>
</body>
</html>