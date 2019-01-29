<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
	<script>
		function chooseSeat(){
			window.open("/teamproject/movie/seatSelect.jsp", "", "width=1120 height=580");
			window.close();
		}
	
	</script>
<body>
	<div id="container" style="width:547px; height:450px;">
		<table>
			<tr>
				<td><img src="/teamproject/movie/img/time1.gif" id="1"></td>
			</tr>
			<tr>
				<td><img src="/teamproject/movie/img/time2.gif" id="2"></td>
			</tr>
			<tr>
				<td><img src="/teamproject/movie/img/time3.gif" id="3"></td>
			</tr>
			<tr>
				<td><img src="/teamproject/movie/img/time4.gif" id="4"></td>
			</tr>
			<tr>
				<td><img src="/teamproject/movie/img/time5.gif" id="5"></td>
			</tr>
			<tr>
				<td><img src="/teamproject/movie/img/time6.gif" id="6"></td>
			</tr>
			<tr>
				<td><img src="/teamproject/movie/img/time7.gif" id="special" onclick="chooseSeat();"></td>
			</tr>
			<tr>
				<td><img src="/teamproject/movie/img/time8.gif" id="8"></td>
			</tr>
		</table>
	</div>

</body>
</html>