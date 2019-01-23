<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
		#comment_table{
			margine : 0 auto;
			cellpadding : 0px;
			cellspacing : 0px;
		}
		
		/* .pagePlace{
		text-align : center;
		margine-right: 10%;
		} */
		
		#pageNumber{
			color : white;
			background-color : rgb(80, 51, 150);
			text-decoration : none;
		}
		
		a{
			border : 1px;
			text-decoration : none;
		}
</style>
<div class="commentResult_area">
<c:if test="${count gt 0 }">
<div align="left">
한줄평(${count})
</div> <br>
<table id="comment_table">
		<c:forEach items="${arr}" var="info">
		<tr>
			<td><img src="/teamproject/Imgs/stillcut/man_img.gif"></td>
			<td>${info.id}</td> <!-- //함수도 찾아간다. -->
			<td><c:if test="${info.grade == 1}">
						<img src="/teamproject/Imgs/stillcut/1grade.PNG">
					</c:if>
					
					<c:if test="${info.grade == 2}">
						<img src="/teamproject/Imgs/stillcut/2grade.PNG">
					</c:if>
					
					<c:if test="${info.grade == 3}">
						<img src="/teamproject/Imgs/stillcut/3grade.PNG">
					</c:if>
					
					<c:if test="${info.grade == 4}">
						<img src="/teamproject/Imgs/stillcut/4grade.PNG">
					</c:if>
					
					<c:if test="${info.grade == 5}">
						<img src="/teamproject/Imgs/stillcut/5grade.PNG">
					</c:if>
			
			</td>
			<td width="926px">${info.content}</td>
			<td>${info.writedate}</td>
		</tr>
		</c:forEach>
	</table>
	
	<div class="pagePlace" align="center">
	<!-- 이전 부분 -->
	<c:if test="${startPage > blockPage}">
	<a href="javascript:getData(${ startPage-blockPage})"><img src="/teamproject/Imgs/stillcut/pageLeftbtn.png"></a>
	</c:if>
	
	<!-- 페이지 부분 -->
	<c:forEach begin="${startPage}" end="${endPage}" var="i">
		<c:if test="${i == currentPage }">
		${i }
		</c:if>
		<c:if test="${i != currentPage }">
	<a href="javascript:getData(${i})"><span id="pageNumber">${i}</span></a>
	
		</c:if>
	</c:forEach>
	
	<!-- 다음 부분 -->
	<c:if test="${endPage < totalPage}">
	<a href="javascript:getData(${endPage+1})"><img src="/teamproject/Imgs/stillcut/pageRightbtn.png"></a>
	</c:if>
	
	</div>
	
</c:if>
</div>