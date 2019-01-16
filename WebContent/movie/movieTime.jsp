<!DOCTYPE HTML5>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="UTF-8">
<title>Document</title>

<link rel="stylesheet" type="text/css" href="../css/movieTime.css">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script>
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
			left : left + n1,
			top : top + n2
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
				$("#imgPlace").attr("src", "../Imgs/movietime/place" + locationNum + ".jpg");
			},
			error : function(e) {
				alert("다시 해주세요:" + e);
			}
		});
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
					<a href="javascript:changePlace(0);">
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
				<img src="../Imgs/movietime/inArea.gif" width="300px"
					style="position: absolute; height: 452px;">
				<ul class="inAreaList">
					<c:forEach items = "${locationArr }" var = "i">
						<a href = "javascript:void(0)" onmouseover = "changePlaceIcon(${i.location_x},${i.location_y })">
							<li>${i.location_name }</li>
						</a>				
					</c:forEach>
				</ul>
			</div>
			<!--지도-->
			<div class="place" id="divMap">
				<img src="../Imgs/movietime/place_icon.png" id="placeIcon"
					style="position: absolute; visibility: hidden"> <img
					src="../Imgs/movietime/place0.jpg" style="height: 452px;"
					id="imgPlace">
			</div>


		</div>
		<div class="theater_2nd">
			<!--달력-->
			<div>
				<a href="#"><img src="../Imgs/movietime/dal_ico_img.gif"></a>
				<a href="#"><img src="../Imgs/movietime/l_btn.gif"></a> 1.15 <a
					href="#"><img src="../Imgs/movietime/r_btn.gif"></a> 😁
			</div>
			<table>
				<tr>
					<td rowspan="2">말모이</td>
					<td>1관 디지털</td>
					<td>15:30&nbsp;&nbsp;&nbsp;18:15</td>
				</tr>
				<tr>
					<td>8관 디지털</td>
					<td>17:15&nbsp;&nbsp;&nbsp;18:15</td>
				</tr>

			</table>
		</div>
		<div>asdasdasd</div>
	</div>
</body>

</html>