<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>상영관정보리스트</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style2 {
	font-size: 12px;
	font-weight: bold;
}
.style5 {font-size: 14; font-weight: bold; }
.style6 {font-size: 12px}
.style7 {font-size: 14px}
.style8 {font-size: 14px; font-weight: bold; }
.style9 {
	font-size: 12px;
	font-weight: bold;
	color: #FF0000;
}
.style12 {color: #FF0000}
-->
</style>
</head>

<body>
<div align="center">
  <table width="1200" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="10" rowspan="4">&nbsp;</td>
      <td colspan="3"><span class="style1">상영관정보리스트</span></td>
      <td width="10" rowspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3"><hr style="border: solid 2px black;"></td>
    </tr>
    <tr>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3"><hr></td>
    </tr>
    <tr>
      <td height="28">&nbsp;</td>
	  <!-- 영화제목입력 -->
      <td colspan="3" rowspan="2"><table width="1180" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="50"><div align="center" class="style2 style7">번호</div></td>
          <td colspan="2"><div align="center" class="style5 style7">제목</div></td>
          <td colspan="2"><div align="center" class="style8">날짜</div></td>
          <td><div align="center" class="style8">조회</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
		<!-- 번호 들어가는부분 -->
          <td height="28"><div align="center"><span class="style6"><span class="style6">1</span></span></div></td>
          <td width="39"><span class="style6"></span></td>
          <td width="811"><span class="style2">서울</span><span class="style9">(25)</span></td>
          <td colspan="2"><div align="center" class="style6">12.31</div></td>
          <td width="80"><div align="center" class="style6">6</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">2</span></span></div></td>
          <td><span class="style6"></span></td>
          <td><span class="style2">경기</span><span class="style9">(52)</span></td>
          <td colspan="2"><div align="center" class="style6">01.22</div></td>
          <td><div align="center" class="style6">5</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">3</span></span></div></td>
          <td><span class="style6"></span></td>
          <td><span class="style2">인천<span class="style12">(52)</span></span></td>
          <td colspan="2"><div align="center" class="style6">01.30</div></td>
          <td><div align="center" class="style6">8</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">4</span></span></div></td>
          <td><span class="style6"></span></td>
          <td><span class="style2">대전/충청/세종<span class="style12">(52)</span></span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center" class="style6">10</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">5</span></span></div></td>
          <td><span class="style6"></span></td>
          <td><span class="style2">부산/대구/경상<span class="style12">(52)</span></span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center" class="style6">55</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">6</span></span></div></td>
          <td><span class="style6"></span></td>
          <td><span class="style2">광주/전라<span class="style12">(52)</span></span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center" class="style6">88</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">7</span></span></div></td>
          <td><span class="style6"></span></td>
          <td><span class="style2">강원<span class="style12">(52)</span></span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center" class="style6">99</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">8</span></span></div></td>
          <td><span class="style6"></span></td>
          <td><span class="style2">제주<span class="style12">(52)</span></span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center" class="style6">44</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="30" colspan="6"><div align="center">
            <select name="field" id="field">
              <option value="name">제목</option>
            </select>
            <input type="text" name="moviesubject" id="moviesubject">
            <input name="button" type="button" id="btnSearch" value="검색">
          </div></td>
        </tr>
        <tr>
          <td><div align="right">
          </div></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td width="194"><div align="right">
            <input type="submit" name="Submit" value="글쓰기">
          </div></td>
          <td width="6">&nbsp;</td>
          <td><input type="submit" name="Submit2" value="글목록"></td>
        </tr>
      </table></td>
      <!-- 관람등급아이콘 선택 -->
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="2">&nbsp;</td>
      <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3">&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
