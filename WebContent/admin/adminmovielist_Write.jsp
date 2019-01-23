<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화리스트 입력</title>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style2 {font-size: 14px}
-->
</style>
</head>

<body>
<div align="center">
  <table width="1200" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="10" rowspan="4">&nbsp;</td>
      <td colspan="8"><span class="style1">영화목록등록</span></td>
      <td width="10" rowspan="4">&nbsp;</td>
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
      <td>&nbsp;</td>
	  <!-- 영화제목입력 -->
      <td width="100" bgcolor="#CCCCCC"><div align="center" class="style2">영화제목</div></td>
      <td width="5" height="28">&nbsp; </td>
      <td width="175" height="28"><input type="text" name="moviesubject"></td>
	  <!-- 관람등급아이콘 선택 -->
      <td width="109" bgcolor="#CCCCCC"><div align="center"><span class="style2">관람등급아이콘</span></div></td>
      <td height="28" colspan="4"><span class="style2">
         <input name="radiobutton" type="radio" value="radiobutton" checked>
		전체관람가
		<input name="radiobutton" type="radio" value="radiobutton" >
		12세이상
		<input name="radiobutton" type="radio" value="radiobutton" >
		15세이상
		<input name="radiobutton" type="radio" value="radiobutton" >
		19세이상</span></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="7">&nbsp;</td>
      <td colspan="8"><hr></td>
      <td rowspan="7">&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style2">파일첨부</div></td>
	  <!-- 영화목록에 들어갈 이미지넣기 -->
      <td height="28">&nbsp; </td>
      <td height="28" colspan="6"><input type="file" name="sign"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="15" colspan="8">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3"><div align="right">
          <input name="submit2" type="submit" id="bean" value="글등록">
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
</body>
</html>
