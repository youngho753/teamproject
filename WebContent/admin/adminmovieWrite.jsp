<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>영화상세보기 입력창</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style2 {font-size: 14px}
.style3 {
	font-size: 12px;
	font-weight: bold;
}
.style4 {font-size: 14px; font-weight: bold; }
-->
</style>
</head>

<body>
<form action="write.do" method="post" enctype="multipart/form-data">
<div align="center">
  <table width="1200" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="10" rowspan="12">&nbsp;</td>
      <td colspan="8"><span class="style1">영화상세페이지</span></td>
      <td width="10" rowspan="12">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="8"><hr style="border: solid 2px black;"></td>
    </tr>
    <tr>
      <td colspan="8">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style3">영화 포스터 <br>
      이미지 첨부</div></td>
      <td>&nbsp;</td>
      <td colspan="6"> <input type="file" name="mpostfile"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style2"><strong>영화제목</strong></div></td>
      <td height="28">&nbsp; </td>
      <td width="175" height="28"><input type="text" name="msubject"></td>
      <td width="109" bgcolor="#CCCCCC"><div align="center"><span class="style4">관람등급아이콘</span></div></td>
      <td height="28" colspan="4"><span class="style2">
        <input type="radio" name="ageLimit" value="전체이용가" checked="checked">전체관람가</span>
  		<input type="radio" name="ageLimit" value="12세이상" >12세이상
  		<input type="radio" name="ageLimit" value="15세이상" >15세이상
 	    <input type="radio" name="ageLimit" value="19세이상" >19세이상</td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>타입</strong></div></td>
      <td>&nbsp;</td>
      <td colspan="6"><input type="text" name="mtype"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>개봉일</strong></div></td>
      <td>&nbsp;</td>
      <td colspan="6"><input type="text" name="mdate"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td>&nbsp;</td>	  
      <td width="100" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>감독</strong></div></td>
      <td width="5" height="28">&nbsp; </td>
      <td height="28" colspan="6"><input type="text" name="mdirector"></td>
	  <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="14">&nbsp;</td>
      <td colspan="8"><hr></td>
      <td rowspan="14">&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style2"><strong>출연진</strong></div></td>
      <td height="28">&nbsp; </td>
      <td height="28" colspan="6"><input type="text" name="mactor"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>장르</strong></div></td>
      <td height="7">&nbsp;</td>
      <td height="7" colspan="6"><input type="text" name="mgenre"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="150" bgcolor="#CCCCCC"><div align="center"><strong><span class="style2">줄거리</span></strong></div></td>
      <td height="15">&nbsp;</td>
      <td height="15" colspan="6"><textarea rows=10 cols=150 name="mstory"></textarea></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>

    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3"><div align="right">
          <input type="submit" id="bean" value="글등록">
      </div></td>
      <td width="6" height="30" align="right">
        <div align="left"> </div></td>
      <td width="49" height="30" align="right"><div align="left">
          <input type="button" value="글목록" onclick="location.href='adminmovieinfolist.jsp'">
      </div></td>
      <td width="512">&nbsp;</td>
    </tr>
    <tr>
      <td height="30" colspan="8">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="8">&nbsp;</td>
    </tr>
  </table>
</div>
</form>
</body>
</html>
