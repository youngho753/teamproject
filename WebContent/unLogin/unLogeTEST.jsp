<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function del(){
	window.open("unLogin.jsp","","width=968,height=600");
}

function con(){
	window.open("../member/memLogin.jsp","","width=968,height=600");
}
</script>
<body>
<input type="button" value="test" onclick="del()">
<a href="unLogin.jsp">  개꿀딱쓰</a>
로그인<hr>
<p align="center">
<input type="button" value="회원로그인"/><input type="button" value="비회원로그인" onclick="con()"/><br>

</body>
</html>