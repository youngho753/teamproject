<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>영화정보리스트</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	<style type="text/css">
		#movieList-wrapper{
		width : 1180px;
		margin : 0 auto;
		}
		
		.movieList-header{
		 	font-size: 18px;
			font-weight: bold;
		}
	
	</style>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
	window.onload = function(){
		getData();
	};
	
	function getData(){
		$("#movielist_result").load("/teamproject/movieInfoList.do",function(data){
			$("#movielist_result").html(data);
		});
	}
	</script>

<body>
	<div id="movieList-wrapper">
		<div class="movieList-header">
			<span class="pageTitle">영화상세페이지</span>
		</div>
		
		<hr style="border: solid 2px black;">
		
		<div id="movielist_result">
		
		
		</div>
		
		<div align="right">
			<input type="button" value="영화등록" onclick="location.href='adminmovieWrite.jsp'"/>
		</div>
	</div>
</body>
</html>
