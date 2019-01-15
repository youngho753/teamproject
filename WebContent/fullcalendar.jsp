<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='http://www.blueb.co.kr/data/201010/IJ12872423858253/fullcalendar.css' />
<script type='text/javascript' src='http://www.blueb.co.kr/data/201010/IJ12872423858253/jquery.js'></script>
<script type='text/javascript' src='http://www.blueb.co.kr/data/201010/IJ12872423858253/jquery-ui-custom.js'></script>
<script type='text/javascript' src='http://www.blueb.co.kr/data/201010/IJ12872423858253/fullcalendar.min.js'></script>
<script type='text/javascript'>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
			editable: true,
			events: [
				
				{
					title: '날자를 선택해주세요',
					start: new Date(y, m, d),
					allDay: true,
					url: 'http://google.com/'
				}
			]
		});
		
	});

</script>
<style type='text/css'>

	body {
		margin-top: 40px;
		text-align: center;
		font-size: 14px;
		
		}

	#calendar {
		width: 900px;
		margin: 0 auto;
		}

</style>
</head>
<body>
<div id='calendar'></div>
</body>
</html>