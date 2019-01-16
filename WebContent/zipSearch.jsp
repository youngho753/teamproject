<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script>
function zipSearch(){
	$.ajax({
		type :"get",
		url:"zipSearch.do",
		data:{"dong" : $("#dong").val()},
		success:function(data){
			data = $.parseJSON(data);
			var htmlStr = "";
			htmlStr += "<table>";
			htmlStr += "<tr>";
			htmlStr += "<td width='100'>우편번호</td>";
			htmlStr += "<td width='50'>시/도</td>";
			htmlStr += "<td width='50'>구/군</td>";
			htmlStr += "<td width='50'>동</td>";
			htmlStr += "<td width='50'>번지</td>";
			htmlStr += "</tr>";
			for(var i=0;i<data.length;i++){
				htmlStr += "<tr>"
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
		}
	})
}
</script>
</head>
<body>
<form>
<table>
	<tr>
		<td>동 이름 입력 <input type="text" placeholder="동이름 입력" name="dong" id="dong" onclick="zipSearch()">
			<input type="button" value="search" name="dong" id="dong">
		</td>
	</tr>
</table>
<div id = "result"></div>
</form>
</body>
</html>