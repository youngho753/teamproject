<!DOCTYPE HTML5>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="UTF-8">
<title>Document</title>

<link rel="stylesheet" type="text/css" href="/teamproject/css/movieTime.css">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script>

function del(){
	var dd = ("#del").val
	$(opener.documnet).find("#TheatersSelect1").val("#del");
	
}

	$("document").ready(function() {
		

	});
	function changePlace(num) {
		getLocation(num);
		

	}
	
	function changePlaceIcon(n1, n2) {
		var top = $("#divMap").offset().top;
		var left = $("#divMap").offset().left;
		$("#placeIcon").css("visibility", "visible");
		$("#placeIcon").offset({
			left : left + n1-14,
			top : top + n2-14
		})
		/*  $("#placeIcon").css("left",n1);
		$("#placeIcon").css("top",n2);  */
	}
	function getLocation(locationNum) { //매개변수에는 1이 들어가 있다. 밑에서 시작하자마자 1 넣어줬으니까
		$.ajax({
			type : "post",
			url : "location.do",
			data : {
				"locationNum" : locationNum
			},
			success : function(data) {
				$("#container").html(data);
				$("#imgPlace").attr("src", "/teamproject/Imgs/movietime/place" + locationNum + ".jpg");
			},
			error : function(e) {
				alert("다시 해주세요:" + e);
			}
		});
	}
	
	function closeWin() {
		var nvua = navigator.userAgent;
		if (nvua.indexOf('MSIE') >= 0){
		if(nvua.indexOf('MSIE 5.0') == -1) {
		top.opener = '';
		}
		} else if (nvua.indexOf('Gecko') >= 0){
		top.name = 'CLOSE_WINDOW';
		wid = window.open('','CLOSE_WINDOW');
		}
		top.close();
		}
	
</script>
</head>

<body>

	<div id="container">
		<h3>영화관 선택</h3> 
		<div class="theater_1st">
			<div class="place">
				<ul class="areaList">
					<li class="likeMovie">선호영화관</li>
					<a href="javascript:changePlace(0):">
						<li>서울</li>
					</a>
					<a href="javascript:changePlace(1);">
						<li>경기</li>
					</a>
					<a href="javascript:changePlace(2);">
						<li>인천</li>
					</a>
					<a href="javascript:changePlace(3);">
						<li>대전/충청/세종</li>
					</a>
					<a href="javascript:changePlace(4);">
						<li>부산/대구/경상</li>
					</a>
					<a href="javascript:changePlace(5);">
						<li>광주/전라</li>
					</a>
					<a href="javascript:changePlace(6);">
						<li>강원</li>
					</a>
					<a href="javascript:changePlace(7);">
						<li>제주</li>
					</a>
				</ul>
			</div>
			<div class="place" style="width: 300px;">
				<img src="/teamproject/Imgs/movietime/inArea.gif" width="300px"
					style="position: absolute; height: 452px;">
				<ul class="inAreaList">
					<c:forEach items = "${locationArr }" var = "i">
						<span id="del" onmouseover = "changePlaceIcon(${i.location_x},${i.location_y })" onclick="del()" >
							<li>${i.location_name }</li>
							<!-- onclick="javascript:history.onclick=closeWin();" -->
						</span>				
					</c:forEach>
				</ul>
			</div>
			<!--지도-->
			<div class="place" id="divMap">
				<img src="/teamproject/Imgs/movietime/place_icon.png" id="placeIcon"
					style="position: absolute; visibility: hidden"> <img
					src="/teamproject/Imgs/movietime/place0.jpg" style="height: 452px;"
					id="imgPlace">
					
					
			</div>
		

		</div>
		
	</div>
	

</html>