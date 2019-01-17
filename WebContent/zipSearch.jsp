<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .addr:hover{ 
 	cursor:pointer;
 	background-color : #ccc;
 } /* 검색 된 주소창에 마우스 hover css */
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script>
$(document).ready(function(){//클릭시 해당 주소 가입창으로 바로 보내버림
	$("#result").on("click","tr",function(){ //result영역(검색 결과) 모든 tr에 이벤트
		var address = $("td:eq(1)",this).text()+" " +
					  $("td:eq(2)",this).text()+" " +
					  $("td:eq(3)",this).text()+" " +
					  $("td:eq(4)",this).text()+" " 
		$(opener.document).find("#mem_zip").val($("td:eq(0)",this).text());
		$(opener.document).find("#mem_addr1").val(address);
		self.close();
	})
})



function zipSearch(){ //우편번호 검색
	$.ajax({
		type :"get",
		url:"zipSearch.do",
		data:{"dong" : $("#dong").val()},
		success:function(data){
			data = $.parseJSON(data);
			var htmlStr = "";
			htmlStr += "<table border=1>";
			htmlStr += "<tr>";
			htmlStr += "<td width='100'>우편번호</td>";
			htmlStr += "<td width='50'>시/도</td>";
			htmlStr += "<td width='50'>구/군</td>";
			htmlStr += "<td width='50'>동</td>";
			htmlStr += "<td width='50'>번지</td>";
			htmlStr += "</tr>";
			for(var i=0;i<data.length;i++){
				htmlStr += "<tr class='addr'>"
				htmlStr += "<td>" + data[i].zipCode+"</td>";
				htmlStr += "<td>" + data[i].sido+"</td>";
				htmlStr += "<td>" + data[i].gugun+"</td>";
				htmlStr += "<td>" + data[i].dong+"</td>";
				htmlStr += "<td>" + data[i].bunji+"</td>";
				htmlStr += "</tr>"
			}
			htmlStr += "</table>";
			$("#result").html(htmlStr);
		},
		error:function(e){
			alert("error:" +e);
		},
		beforeSend : check // send를 실행하기전에 check라는 함수를 실행해라
	})
}

function check(){ //동이름 공백 검색 방지
	if($("#dong").val()==""){
		alert("동이름 입력하세요");
		return false;
	}
	return true; 
}



</script>
</head>
<body>
<form>
<table>
	<tr>
		<td>동 이름 입력 <input type="text" placeholder="동이름 입력" name="dong" id="dong">
			<input type="button" value="search" onclick="zipSearch()">
		</td>
	</tr>
</table>
<div id = "result"></div>
</form>
</body>
</html>