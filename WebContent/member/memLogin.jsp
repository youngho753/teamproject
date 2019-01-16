<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Coiny"
	rel="stylesheet">
<title>Document</title>
<style>
.loginFrame {
	width: 500px;
	height: 1000px;
	margin: 0 auto;
} /* ?? ?? ??? ????*/
h1 {
	text-align: center;
	text-decoration: underline;
}

.buttonFrame {
	text-align: center;
	margin: 20px;
}

.buttonFrame .btn1 {
	background: #681e7e;
	color: #fff;
	border: none;
	position: relative;
	height: 30px;
	font-size: 1em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

.buttonFrame .btn2 {
	color: #fff;
	border: none;
	cursor: pointer;
}

#middleFrame {
	text-align: center;
	margin-top: 50px;
}

#moiveBox {
	font-family: 'Coiny', cursive;
	color: #681e7e;
	font-size: 30px;
}

#Grid {
	display: grid;
	grid-template-columns: 1fr 1fr;
}

.btnLogin {
	background: #681e7e;
	color: #fff;
	border: none;
	height: 60px;
	font-size: 15px;
	padding: 0 2em;
	cursor: pointer;
	outline: none;
}

.lastBtns input {
	font-size: 20px;
	background: none;
	cursor: pointer;
}

#search1 {
	border: none;
}

#search2 {
	border-top: none;
	border-right: none;
	border-bottom: none;
}
</style>
</head>
<body>
	<div class=loginFrame>
		<h1>LOGIN</h1>
		<hr>
		<div class="buttonFrame">
			<input type="button" class="btn1" value="회원 로그인"><input
				type="button" class="btn2" value="비회원 로그인" onclick="window.open('../unLogin/unLogin.jsp','','width=800,height=600')">
		</div>
		<div id=middleFrame>
			<div id=moiveBox>MOVIEBOX LOGIN</div>
			<div id="Grid">
				<div style="text-align: right">
					<input type="text" placeholder="아이디"><br> <input
						style="margin-top: 15px" type="text" placeholder="비밀번호"><br>
				</div>
				<div style="text-align: left; margin-left: 30px;">
					<input class="btnLogin" type="button" value="로그인">
				</div>
			</div>
			<div class="lastBtns" style="margin-top: 30px">
				<input id="search1" type="button" value="ID/PW찾기"><input
					id="search2" type="button" value="회원가입">
			</div>


		</div>
	</div>
</body>
</html>
