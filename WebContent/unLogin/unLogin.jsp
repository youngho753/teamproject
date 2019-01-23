<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
.loginFrame {
	width: 500px;
	height: 1000px;
	margin: 0 auto;
} /* ?? ?? ??? ????*/
#grid {
	display: grid;
	grid-template-columns: 1fr 1fr;
} /*??? ??*/
h1 {
	text-align: center;
	text-decoration: underline;
}

.buttonFrame {
	text-align: center;
	margin: 20px;
}

.buttonFrame .btn1 {
	color: #fff;
	border: none;
	cursor: pointer;
}

.buttonFrame .btn2 {
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

#grid input {
	border: none;
	border-bottom: solid 1px;
	margin-top: 25px;
} /*이름 생년월일 등*/
.textArea {
	width: 300px;
	height: 170px;
	background-color: #f0eeee;
	display: grid;
	grid-template-columns: 2fr 5fr;
	overflow-y: scroll;
}

.rule {
	padding-top: 3px;
	text-indent: -37px;
	padding-left: 3em;
	font-size: 13px;
}

.ruleContent {
	padding-top: 3px;
	font-size: 13px;
	color: grey;
	height: 60px;
}

#goal {
	margin-top: 0;
	padding-left: 20px;
}

#agree {
	margin-top: 30px;
	border-style: groove none none none;
	background-color: #eae3e3;
}

#agreeGrid {
	display: grid;
	grid-template-columns: 1fr 1fr;
}

.final {
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
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script>
$(document).ready(function(){
	$("#unLogin").click(function(){
		if($("#name").val() == "" || $("#birth").val() == "" || $("#password").val() =="" || $("#passwordCheck").val() == ""){
			alert("공백 없이 입력해주세요");
		}else if($('input:radio[name=choice]:checked').val() == undefined || $('input:radio[name=choice]:checked').val() == "-1" ){
			alert("개인정보 처리방침에 동의 하셔야지만 비회원 로그인 가능합니다"); // -1: 개인정보 약관 비동의
		}else{
			$.ajax({
				type:"post",
				url : "unMemLogin.do",
				data: {
					"name" : $("#name").val(),
					"birth" : $("#birth").val(),
					"phone" : $("#phone").val(),
					"password" : $("#password").val(),
					"passwordCheck" : $("#passwordCheck").val()
				},
				success : function(data){
					if(data.trim() == "-1"){
						alert("비밀번호가 일치하지 않습니다");
					}else if(data.trim() == "1"){
						alert("정보가 확인 되었습니다."); //로그인되면서 어디론가 보냄
					}else if(data.trim() == "2"){
						alert("비회원으로 정보 등록 완료!"); //정보등록완료와 동시에 로그인되면서 어디론가 보냄
					}
				}
			})
		}
	})
})
</script>
</head>

<body>
<form id="frm">
	<div class=loginFrame>
		<h1>LOGIN</h1>
		<hr>
		<div class="buttonFrame">
			<input type="button" class="btn1" value="회원 로그인" onclick="location.href=('../member/memLogin.jsp')"><input type="button" class="btn2" value="비회원 로그인">					
		</div>
		<div id="grid">
			<div>
				<input type="text" name="name" id="name" placeholder="이름"><br> 
				<input type="text" name="birth" id="birth" placeholder="생년월일(앞6자리)"><br>
				<input type="text" name="phone" id="phone" placeholder="전화번호('-없이 입력)"><br> 
				<input type="text" name="password" id="password" placeholder="비밀번호 4자리"><br> 
				<input type="text" name="passwordCheck" id="passwordCheck" placeholder="비밀번호 확인 4자리"><br>
			</div>
			<div>
				<div style="text-align: center">[비회원 개인정보 처리방침]</div>
				<br>
				<div class="textArea" style="text-align: left">
					<div class="rule">
						<strong>수집항목</strong>
					</div>
					<div class="ruleContent">이름, 생년월일(앞 6자리),휴대폰번호, 비밀번호</div>
					<div class="rule">
						<strong>이용목적</strong>
					</div>
					<div class="ruleContent">
						<ul id="goal">
							<li>비회원예매 서비스제공</li>
							<li>이용자 식별</li>
							<li>구매 및 요금 결제</li>
						</ul>
					</div>
					<div class="rule">
						<strong>보유기간</strong>
					</div>
					<div class="ruleContent">개인정보 수집목적 달성 후 즉시 파기(단, '상법' 및
						'전자상거래 등에서의 소비자보호에 관한 법률' 등 관련 법령에 따라 대금결제 및 재화 등의 공급에 관한 기록은 5년간
						보유)</div>
				</div>
				<!--textArea-->
			</div>
			<!--개인정보 처리방침-->
		</div>
		<!--개인정보 처리방침밖에싸기-->
		<div id="agree" style="padding-left: 5px">
			개인정보 처리방침에 동의 하십니까? 
			<input type="radio" name="choice" value="1">동의함 <input type="radio" name="choice" value="-1">동의하지 않음
			<div id=agreeGrid>
				<div style="font-size: 13px">* 정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우
					비회원 예매 서비스를 이용하실 수 없습니다.</div>
				<div style="margin: 0 auto">
					<input class="final" type="button" value="비회원 로그인" id="unLogin" style="margin-top: 10px">
				</div>
			</div>
		</div>
	</div>
</form>
</body>
</html>