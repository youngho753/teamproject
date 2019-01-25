<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
		#movieListInfo_table{
			margine : 0 auto;
			cellpadding : 0px;
			cellspacing : 0px;
		}
		
</style>

<table id="movieListInfo_table">
		<c:forEach items="${arr}" var="info">
		<tr>
			<td>		
				${info.no}
			</td>
			<td>
				${info.msubject}
			</td>

		</tr>
		</c:forEach>
	</table>