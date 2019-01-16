<!DOCTYPE HTML5>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
*{
	margin : 0px;
	padding : 0px;
}
#container{
	width : 1600px;
}
div.theater_1st {
	height: 440px;
	margin-bottom: 30px;
}

.place {
	float: left;
	display: inline-block;
	width: 200px;
}

ul.areaList, ol.areaList {
	vertical-align: middle;
	list-style: none;
	margin: 0px;
	padding: 0px;
	text-align: left;
	font-family: sans-serif;
	font-weight: 600;
	max-width: 200px;
	width: 100%;
}

ul.areaList a, ol.areaList a {
	color: black;
	text-decoration: none;
}

ul.areaList li, ol.areaList li {
	padding: 12px 0px 12px 20px;
	margin-bottom: 5px;
	border-bottom: 1px solid #efefef;
	font-size: 16px;
}

ul.areaList li:hover, ol.areaList li:hover {
	color: darkturquoise;
}

ul.areaList li.likeMovie, ol.areaList li.likeMovie {
	color: white;
	background-color: darkcyan;
}

ul.inAreaList {
	list-style: none;
	max-width: 300px;
	width: 100%;
}

ul.inAreaList li {
	width: 125px;
	float: left;
	padding: 12px 0px 12px 0px;
	margin-right: 12px;
	margin-bottom: 5px;
	text-align: center;
	font-size: 12px;
	position: relative;
	color: white;
}

ul.inAreaList li:hover {
	color: darkcyan;
}

div.theater_2nd {
	height: 500px;
}

div.calendar {
	
}
</style>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
    $("document").ready(function(){
    	
    });
    function changePlace(num){
		$("#imgPlace").attr("src","../Imgs/movietime/place"+num+".jpg");
		
	}
    function changePlaceIcon(n1,n2){
    	var top = $("#divMap").offset().top;
    	var left = $("#divMap").offset().left;
    	  $("#placeIcon").css("visibility", "visible");
    	  $("#placeIcon").offset({left:left+n1,top:top+n2})
    	  /*  $("#placeIcon").css("left",n1);
    	  $("#placeIcon").css("top",n2);  */
    }
    </script>
</head>

<body>
<div id = "container">
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
				style="position: absolute; height: 440px;">
			<ul class="inAreaList">
				<a href = "#" onmouseover = "changePlaceIcon(305,152)">
					<li>제주</li>
				</a>
				<a href = "#" onmouseover = "changePlaceIcon(333,142)">
					<li>제주아라</li>
				</a>
				<a href="#">
					<li>제주</li>
				</a>
				<a href="#">
					<li>제주아라</li>
				</a>
				<a href="#">
					<li>제주</li>
				</a>
				<a href="#">
					<li>제주아라</li>
				</a>
				<a href="#">
					<li>제주</li>
				</a>
				<a href="#">
					<li>제주아라</li>
				</a>
			</ul>
		</div>
		<!--지도-->
		<div class="place" id = "divMap">
			<img src = "../Imgs/movietime/place_icon.png" id = "placeIcon" style = "position : absolute; visibility : hidden">
			<img src="../Imgs/movietime/place0.jpg" style="height: 440px;"
				id="imgPlace">
		</div>


	</div>
	<div class="theater_2nd">
		<!--달력-->
		<div>
			<a href="#"><img src="../Imgs/movietime/dal_ico_img.gif"></a> <a
				href="#"><img src="../Imgs/movietime/l_btn.gif"></a> 1.15 <a
				href="#"><img src="../Imgs/movietime/r_btn.gif"></a>
				😁
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