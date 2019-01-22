<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>위젯 등록</title>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style2 {font-size: 14px}
.style4 {font-size: 14px; font-weight: bold; }
-->
</style>
</head>

<body>
<div align="center">
  <table width="1200" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="10" rowspan="18">&nbsp;</td>
      <td colspan="6"><span class="style1">위젯등록</span></td>
      <td width="10" rowspan="18">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="6"><hr style="border: solid 2px black;"></td>
    </tr>
    <tr>
      <td colspan="6">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="6"><hr></td>
    </tr>
    <tr>
      <td width="100" bgcolor="#CCCCCC">
      <div align="center" class="style4">영화제목</div></td>
      <td width="5">&nbsp;</td>
      <td colspan="4"><input type="text" name="moviesubject2"> </td>
    </tr>
    <tr>
      <td colspan="6"><hr></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC">
      <div align="center" class="style2">
      <strong>개봉날짜</strong></div></td>
      <td height="28">&nbsp; </td>
      <td height="28" colspan="4"><input type="text" name="moviesubject">        
      <div align="center"></div>        
      </td>
    </tr>
    <tr>
      <td colspan="6"><hr></td>
    </tr>    
    <tr>
      <td height="150" bgcolor="#CCCCCC">
      <div align="center"><strong>
      <span class="style2">20자 줄거리</span></strong></div></td>
      <td height="150">&nbsp;</td>
      <td height="150" colspan="4"><textarea rows=10 cols=150 name="summary"></textarea></td>
    </tr>
    <tr>
      <td colspan="6"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC">
      <div align="center" class="style2"><strong>섬네일이미지</strong></div></td>
      <td height="28">&nbsp;</td>
      <td height="28" colspan="4">
      <input type="submit" name="Submit" value="파일첨부">        
      </td>
    </tr>
    <tr>
      <td colspan="6"><hr></td>
    </tr>
    <tr>
      <td height="15" colspan="6">&nbsp;</td>
    </tr>
    <tr>
      <td height="15" colspan="6">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="right">
          <input name="submit2" type="submit" id="bean" value="글등록">
      </div></td>
      <td width="6" height="30" align="right">
        <div align="left"> </div></td>
      <td width="49" height="30" align="right"><div align="left">
          <input name="submit" type="submit" id="submit" value="글목록">
      </div></td>
      <td width="512">&nbsp;</td>
    </tr>
    <tr>
      <td height="30" colspan="6">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="6">&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
