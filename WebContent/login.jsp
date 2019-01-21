<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon"/>
<title>Insert title here</title>
<style>
  table {
    width: 50%;
    border: 1px solid #444444;
  }
  tr, td {
    border: 1px solid #444444;
  }
    
    #member_btn{
        padding-left: 35%;
    }
</style>

</head>
<form action="login.do" method="post">
	
	<img src="Imgs/member_btn.gif" id="member_btn">
	<img src="Imgs/nomember_btn.gif" id="nomember_btn">
	<table align="center">
	<tr>
		<td align="center">아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td align="center">비밀번호</td>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr align="center">
		<td colspan="2">
			<img src="Imgs/login_btn.gif" input type="submit" value="로그인">
			<input type="reset" value="취소">
			<input type="text" value="회원가입">
		</td>
	</tr>
	</table>
	<div style="color:red;text-align:center;">${message}</div>
</form>
<body>
</body>
</html>