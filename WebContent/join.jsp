<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD:WebContent/member/join.jsp
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="https://fonts.googleapis.com/css?family=Coiny"
	rel="stylesheet">
<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon"/>
=======
<meta  http-equiv="Content-Type" content= "text/html; charset="UTF-8">
>>>>>>> admin:WebContent/join.jsp
<title>Insert title here</title>
	
<style>

#container{
	width:1600px;
	margin: 0 auto;
}

#check {
	font-size: 10px;
}

.body_border {
	background-color: rgba(217, 217, 217, 0.3);
	border-bottom: 3px solid purple;
	height: 50px;
	font-family: 'Coiny', cursive;
	color: #681e7e;
	font-size: 30px;
}

table{
	padding : 20px;	
}

</style>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<!--제이 쿼리 -->
<script>
//아이디 확인
$(document).ready(function(){
	$("#mem_id").focus(function(){
		
	})
	$("#mem_id").blur(function(){
		if(!$("#mem_id").val() == ""){ //아이디가 입력되어 있다면
			$.ajax({
				type : "post",
				url : "idCheck.do",
				data : {
					"mem_id" : $("#mem_id").val()
				},
				success : function(data){
					if(data.trim() == "1"){
						$("#idCheck").css("color", "blue");
						$("#idCheck").text("사용 가능한 아이디 입니다");
					}else if(data.trim() == "-1"){
						$("#idCheck").css("color", "red");
						$("#idCheck").text("*중복 된 아이디 입니다.");
					}
				}
			})
		}
	})
})


//비밀번호 확인
$(document).ready(function() { //문서가 다 실행되고
	$("#mem_pwCheck").focus(function() {

	})
	$("#mem_pwCheck").blur(function() {

		if (!$("#mem_pw").val() == "") { //비번확인 포커스 벗어날 때, 비번1이 공백이 아니면
			$.ajax({
				type : "post",
				url : "pwCheck.do",
				data : {
					"mem_pw" : $("#mem_pw").val(),
					"mem_pwCheck" : $("#mem_pwCheck").val()
				},
				success : function(data) {
					if (data.trim() == "1") {
						$("#pwCheck").css("color", "blue");
						$("#pwCheck").text("비밀번호가 일치합니다");
					} else if (data.trim() == "-1") { //비밀번호 불 일치
						$("#pwCheck").css("color", "red");
						$("#pwCheck").text("*비밀번호를 다시 확인해주세요");

					}
				}

			})//ajax끝
		}

	})
})//문서가 다 실행되고
	
	
function zip() { //우편번호검색
	window.open("zipSearch.jsp", "", "width=700 height=300");
}

function regi(){ //회원가입 신청시, *항목중 빈칸 있으면 alert 없으면 회원가입 완료
	if($("#mem_id").val() == "" || $("#mem_pw").val() == "" || $("#mem_pwCheck").val() == "" || $("#mem_name").val() == "" || $("#mem_jumin1").val() == ""  || $("#mem_jumin2").val() == "" ){
		alert("*항목은 필수 입력 사항입니다");
	}else{
		$("#frm").submit();
	} 	
	
}
</script>
</head>
<body>
<<<<<<< HEAD:WebContent/member/join.jsp
	<div id="container">
		
		<div class="body_border">MOVIEBOX</div>
		<div style="height: 50px; margin: 5px;">
			<span style="color: purple;"><strong>회원가입</strong></span>
		</div>
		<form action="join.do" method="post" id="frm" name="frm">
			<table align="center" width="600" border="1">
				<tr>
					<td align="center">*아이디</td>
					<td>
						<input type="text" name="mem_id" id="mem_id"> <span id ="idCheck"></span>
					</td>
				</tr>
				<tr>
					<td align="center">*비밀번호</td>
					<td><input type="password" name="mem_pw" id="mem_pw"></td>
				</tr>
				<tr>
					<td align="center">*비밀번호확인</td>
					<td><input type="password" name="mem_pwCheck" id="mem_pwCheck"> <span id="pwCheck"></span></td>
				</tr>
				<tr>
					<td align="center">*이름</td>
					<td><input type="text" name="mem_name" id="mem_name"></td>

				</tr>
				<tr>
					<td align="center">*주민번호</td>
					<td><input type="text" name="mem_jumin1" id="mem_jumin1">
						- <input type="password" name="mem_jumin2" id="mem_jumin2"></td>
				</tr>
				<tr>
					<td align="center">이메일</td>
					<td><input type="text" name="mem_email" id="mem_email"></td>
				</tr>
				<tr>
					<td align="center">성별</td>
					<td><select name="mem_gender">
							<option value="남">남자</option>
							<option value="여">여자</option>
						</select>
					</td>
				</tr>
				<tr>
					<td align="center">전화번호</td>
					<td colspan="3"><input type="text" name="mem_tel"></td>
				</tr>
				<tr>
					<td align="center">우편번호</td>
					<td><input type="text" name="mem_zip1" id="mem_zip1" disabled="disabled">&nbsp; 
						<input type="hidden" name="mem_zip" id="mem_zip">&nbsp;  
						<input type="button" name="btnZip" id="btnZip" value="검색" onclick="zip()" class="btn btn-info">
					</td>
				</tr>
				<tr>
					<td align="center">주소</td>
					<td><input size="35" type="text" name="mem_addr11" id="mem_addr11" disabled="disabled">&nbsp; 
						<input size="35" type="hidden" name="mem_addr1" id="mem_addr1">&nbsp; 
						<input size="20" type="text" name="mem_addr2" id="mem_addr2" placeholder="상세 주소 입력하세요">
					</td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="button" value="등록" onclick="regi()"> <!--각종 검사로 인해 그냥 button으로 바꿈  --> 
						<input type="reset" value="취소" onclick="location.href='main.jsp'">
					</td>
				</tr>
			</table>
		</form>
	</div>
=======
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
			<td><input type="text" name="mem_email" id="mem_email"></td>
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
>>>>>>> admin:WebContent/join.jsp
</body>
</html>