<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-Type" content= "text/html; charset='UTF-8'">
<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon"/>
<title>Insert title here</title>
<script>
function zip(){ //동이름 검색하는 창으로 이동
	window.open("zipSearch.jsp","","width=700 height=300");
}
</script>
</head>
<body>
<form action="join.do" method="post">
	<table align="center" width="550">
		<tr>
			<td colspan="2" align="center">회원가입</td>
		</tr>
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="mem_id" id="mem_id">
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td><input type="password" name="mem_pw" id="mem_pw"></td>
		</tr>
		<tr>
			<td align="center">비밀번호확인</td>
			<td><input type="password" name="mem_pwCheck" id="mem_pwCheck"></td>
		</tr>
		<tr>
			<td align="center">이메일 </td>
			<td><input type="text" name="mem_mail" id="mem_mail"></td>
		</tr>
		<tr>
			<td align="center">이름</td>
			<td><input type="text" name="mem_name" id="mem_name"></td>
		</tr>
		<tr>
            <td align="center">주민번호</td>
            <td><input type="text" name="mem_jumin1" id="mem_jumin1"> - <input type="password" name="mem_jumin2" id="mem_jumin2"></td>

			<td align="center">성별</td>
			<td><select name="gender">
				<option value="A">남자</option>
				<option value="B">여자</option>
			</select></td>
		</tr>
		<tr>
			<td align="center">전화번호</td>
			<td colspan="3">
			<input type="text" name="phone"></td>
		</tr>
		<tr>
			<td align="center">우편번호</td>
		<td><input type="text" name="mem_zip" id="mem_zip" disabled="disabled">
			<input type="button" name="btnZip" id="btnZip" value="검색" onclick="zip()"></td>
	</tr>
	<tr>
			<td align="center">주소</td>
			<td><input size="35" type="text" name="mem_addr1" id="mem_addr1" disabled="disabled">
			<input size="20" type="text" name="mem_addr2" id="mem_addr2" placeholder="상세 주소 입력하세요"></td>
	</tr>
			<tr align="center">
				<td colspan="2">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
				<input type="button" value="메인 페이지로 이동" onclick="location.href='main.jsp'">
			</td>
		</tr>											
	</table>
</form>
</body>
</html>