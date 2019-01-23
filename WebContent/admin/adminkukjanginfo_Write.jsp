<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>영화상세페이지</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
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
      <td width="10" rowspan="12">&nbsp;</td>
      <td colspan="13"><span class="style1">영화상세페이지</span></td>
      <td width="10" rowspan="12">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="13"><hr style="border: solid 2px black;"></td>
    </tr>
    <tr>
      <td colspan="13">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style4">상영관</div></td>
      <td><span class="style2"></span></td>
      <td colspan="5"><span class="style2"> 지역선택 </span>      <select name="select">
        <option>전체</option>
        <option>서울</option>
        <option>경기</option>
        <option>인천</option>
        <option>대전/충청/세종</option>
        <option>부산/대구/경상</option>
        <option>광주/전라</option>
        <option>강원</option>
        <option>제주</option>
            </select> </td>
      <td width="89"><div align="center"><span class="style2">극장명선택</span></div></td>
      <td colspan="5"><select name="select2">
        <option>전체</option>
        <option>강남</option>
        <option>강남대로(시티)</option>
        <option>강동</option>
        <option>군자</option>
        <option>동대문</option>
        <option>마곡</option>
        <option>코엑스</option>
        <option>센트럴</option>
        <option>목동</option>
        <option>상봉</option>
        <option>고양스타필드</option>
        <option>남양주</option>
        <option>별내</option>
        <option>김포한강도시</option>
        <option>용인테크노밸리</option>
        <option>분당</option>
        <option>수원남문</option>
        <option>오산</option>
        <option>수원</option>
        <option>평택</option>
        <option>검단</option>
        <option>송도</option>
        <option>영종</option>
        <option>인천논현</option>
        <option>공주</option>
        <option>대전</option>
        <option>세종</option>
        <option>오창</option>
        <option>제천</option>
        <option>진천</option>
        <option>천안</option>
        <option>충주</option>
        <option>홍성내포</option>
        <option>거창</option>
        <option>경산하양</option>
        <option>경주</option>
        <option>구미강동</option>
        <option>부산극장</option>
        <option>마산</option>
        <option>문경</option>
        <option>사천</option>
        <option>삼천포</option>
        <option>안동</option>
        <option>울산</option>
        <option>남포항</option>
        <option>남원</option>
        <option>순천</option>
        <option>첨단</option>
        <option>남순천</option>
        <option>속초</option>
        <option>원주</option>
        <option>원주센트럴</option>
        <option>제주</option>
        <option>제주아라</option>
      </select></td>
    </tr>
    <tr>
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style2"><strong>영화제목</strong></div></td>
      <td height="28">&nbsp; </td>
      <td height="28" colspan="5"><input type="text" name="moviesubject"></td>
      <td colspan="2" bgcolor="#CCCCCC"><div align="center"><span class="style4">관람등급아이콘</span></div></td>
      <td height="28" colspan="5"><span class="style2">
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
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>타입</strong></div></td>
      <td>&nbsp;</td>
      <td colspan="11"><select name="select3">
        <option>전체</option>
        <option>2D</option>
        <option>3D</option>
        <option>더빙</option>
        <option>자막</option>
        <option>ATMOS</option>
      </select></td>
    </tr>
    <tr>
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>상영날짜</strong></div></td>
      <td>&nbsp;</td>
      <td width="36"><img src="Imgs/date_btn.gif" width="31" height="32"></td>
      <td width="65"><div align="right"><img src="Imgs/r_left_btn.gif" width="32" height="32"></div></td>
      <td width="4">&nbsp;</td>
      <td width="97">01.21 월요일 </td>
      <td width="52"><img src="Imgs/r_right_btn.gif" width="32" height="32"></td>
      <td colspan="6">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
	  <!-- 영화제목입력 -->
      <td width="66" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>상영시간</strong></div></td>
      <td width="4" height="28">&nbsp; </td>
      <td height="28" colspan="5"><span class="style2">시간선택 
        <select name="select4">
          <option>12:00</option>
          <option>13:00</option>
          <option>14:00</option>
          <option>15:00</option>
          <option>16:00</option>
          <option>17:00</option>
          <option>18:00</option>
          <option>19:00</option>
        </select>
      </span></td>
	  <td height="28"><div align="center" class="style2">분선택</div></td>
	  <td height="28" colspan="5"><select name="select5">
        <option>10</option>
        <option>20</option>
        <option>30</option>
        <option>40</option>
        <option>50</option>
      </select></td>
	  <!-- 관람등급아이콘 선택 -->
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="14">&nbsp;</td>
      <td colspan="13"><hr></td>
      <td rowspan="14">&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="center" class="style2"><strong>층별안내</strong></div></td>
	  <!-- 영화목록에 들어갈 이미지넣기 -->
      <td height="28">&nbsp; </td>
      <td height="28" colspan="5"><span class="style2">층선택
          <select name="select4">
              <option>3F</option>
              <option>5F</option>
              <option>6F</option>
              <option>7F</option>
              <option>8F</option>
              <option>10F</option>
              <option>11F</option>
              <option>12F</option>
            </select>
      </span></td>
      <td height="28"><div align="center" class="style2">층별안내설명</div></td>
      <td height="28" colspan="5"><input type="text" name="moviesubject2"></td>
    </tr>
    <tr>
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>약도/교통</strong></div></td>
      <td height="7">&nbsp;</td>
      <td height="7" colspan="11"><input type="text" name="moviesubject22"></td>
    </tr>
    <tr>
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td height="150" width="120" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>버스/지하철</strong></div></td>
      <td height="15">&nbsp;</td>
      <td height="15" colspan="11"><textarea rows=10 cols=150 name="summary"></textarea></td>
    </tr>
    <tr>
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#CCCCCC"><div align="center" class="style2"><strong>지도선택</strong></div></td>
      <td height="15">&nbsp;</td>
      <td height="15" colspan="11"><input type="submit" name="Submit" value="주소선택">        </td>
    </tr>
    <tr>
      <td colspan="13"><hr></td>
    </tr>
    <tr>
      <td height="15" colspan="13">&nbsp;</td>
    </tr>    
    <tr>
      <td height="30" colspan="13"><table width="1180" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><div align="right">
            <input type="submit" name="Submit2" value="글쓰기">
          </div></td>
          <td width="5">&nbsp;</td>
          <td><input type="submit" name="Submit22" value="글목록"></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="30" colspan="13">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="13">&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
