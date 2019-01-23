<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
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
      <td colspan="6"> <input type="file" name="sign2"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style2"><strong>영화제목</strong></div></td>
      <td height="28">&nbsp; </td>
      <td width="175" height="28"><input type="text" name="moviesubject"></td>
      <td width="109" bgcolor="#CCCCCC"><div align="center"><span class="style4">관람등급아이콘</span></div></td>
      <td height="28" colspan="4"><span class="style2">
        <input name="radiobutton" type="radio" value="radiobutton" checked>
  전체관람가
  <input name="radiobutton" type="radio" value="radiobutton" >
  12세이상
  <input name="radiobutton" type="radio" value="radiobutton" >
  15세이상
  <input name="radiobutton" type="radio" value="radiobutton" >
  19세이상</span></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>타입</strong></div></td>
      <td>&nbsp;</td>
      <td colspan="6"><input type="text" name="moviesubject4"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>개봉일</strong></div></td>
      <td>&nbsp;</td>
      <td colspan="6"><input type="text" name="moviesubject3"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
	  <!-- 영화제목입력 -->
      <td width="100" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>감독</strong></div></td>
      <td width="5" height="28">&nbsp; </td>
      <td height="28" colspan="6"><input type="text" name="moviesubject"></td>
	  <!-- 관람등급아이콘 선택 -->
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="14">&nbsp;</td>
      <td colspan="8"><hr></td>
      <td rowspan="14">&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style2"><strong>출연진</strong></div></td>
	  <!-- 영화목록에 들어갈 이미지넣기 -->
      <td height="28">&nbsp; </td>
      <td height="28" colspan="6"><input type="text" name="moviesubject2"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>장르</strong></div></td>
      <td height="7">&nbsp;</td>
      <td height="7" colspan="6"><input type="text" name="moviesubject22"></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="150" bgcolor="#CCCCCC"><div align="center"><strong><span class="style2">줄거리</span></strong></div></td>
      <td height="15">&nbsp;</td>
      <td height="15" colspan="6"><textarea rows=10 cols=150 name="summary"></textarea></td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>스틸컷이미지</strong></div></td>
      <td height="15">&nbsp;</td>
      <td height="15" colspan="6"><input type="submit" name="Submit" value="파일첨부">        </td>
    </tr>
    <tr>
      <td colspan="8"><hr></td>
    </tr>
    <tr>
      <td height="15" colspan="8">&nbsp;</td>
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
          <input name="submit" type="submit" id="submit" value="글목록">
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
