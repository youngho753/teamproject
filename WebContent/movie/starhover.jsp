<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<title>별점</title>
<style>
.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('/teamproject/Imgs/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
</style>
</head>
	<body>
		<span class="star-input">
			<span class="input">
		    	<input type="radio" name="star-input" value="1" id="p1">
		    	<label for="p1">괜히봤어요</label>
		    	<input type="radio" name="star-input" value="2" id="p2">
		    	<label for="p2">기대하진 말아요</label>
		    	<input type="radio" name="star-input" value="3" id="p3">
		    	<label for="p3">무난했어요</label>
		    	<input type="radio" name="star-input" value="4" id="p4">
		    	<label for="p4">기대해도 좋아요!</label>
		    	<input type="radio" name="star-input" value="5" id="p5">
		    	<label for="p5">너무 멋진 영화였어요!</label>
		  	</span>
		  	<output for="star-input"><b></b></output>						
		</span>
		<script src="/teamproject/js/jquery-1.11.3.min.js"></script>
		<script src="/teamproject/js/star.js"></script>
	</body>
</html>