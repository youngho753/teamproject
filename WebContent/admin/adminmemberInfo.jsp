<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원정보</title>
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
.style12 {color: #FF0000}
-->
</style>
</head>

<body>
<div align="center">
  <table width="1200" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="10" rowspan="4">&nbsp;</td>
      <td colspan="3"><span class="style1">회원정보</span></td>
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
          <td colspan="2"><div align="center" class="style5 style7">닉네임</div></td>
          <td colspan="2"><div align="center" class="style8">가입날짜</div></td>
          <td><div align="center" class="style8">등급</div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
		<!-- 번호 들어가는부분 -->
          <td height="28"><div align="center"><span class="style6"><span class="style6">1</span></span></div></td>
          <td width="39"><div align="center">            
            <input type="checkbox" name="checkbox" value="checkbox">
            <span class="style6"></span></div></td>
          <td width="811"><span class="style2">관리자</span></td>
          <td colspan="2"><div align="center" class="style6">12.31</div></td>
          <td width="80"><div align="center">
            <!-- 회원등급 선택 -->
            <select name="select">            
              <option selected>0</option>
              <option>1</option>
              <option>2</option>
                                                                                    </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">2</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox2" value="checkbox">
          </span></div></td>
          <td><span class="style2">내안에 그놈</span></td>
          <td colspan="2"><div align="center" class="style6">01.22</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select2">
              <option>0</option>
              <option selected>1</option>
              <option>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">3</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox3" value="checkbox">
          </span></div></td>
          <td><span class="style2">주먹왕 랄프</span></td>
          <td colspan="2"><div align="center" class="style6">01.30</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select3">
              <option>0</option>
              <option selected>1</option>
              <option>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">4</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox4" value="checkbox">
          </span></div></td>
          <td><span class="style2">먹왕 </span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select4">            
              <option>0</option>
              <option selected>1</option>
              <option>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">5</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox5" value="checkbox">
          </span></div></td>
          <td><span class="style2">왕프</span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select5">            
              <option>0</option>
              <option>1</option>
              <option selected>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">6</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox6" value="checkbox">
          </span></div></td>
          <td><span class="style2">주먹왕 </span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select6">            
              <option>0</option>
              <option selected>1</option>
              <option>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">7</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox7" value="checkbox">
          </span></div></td>
          <td><span class="style2">랄프</span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select7">
              <option>0</option>
              <option selected>1</option>
              <option>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">8</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox8" value="checkbox">
          </span></div></td>
          <td><span class="style2">주먹</span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select8">
              <option>0</option>
              <option selected>1</option>
              <option>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">9</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox9" value="checkbox">
          </span></div></td>
          <td><span class="style2">주먹쟁이</span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select9">
              <option>0</option>
              <option>1</option>
              <option selected>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="28"><div align="center"><span class="style6"><span class="style6">10</span></span></div></td>
          <td><div align="center"><span class="style6">
            <input type="checkbox" name="checkbox10" value="checkbox">
          </span></div></td>
          <td><span class="style2">왕자병</span></td>
          <td colspan="2"><div align="center" class="style6">01.20</div></td>
          <td><div align="center">
          <!-- 회원등급 선택 -->
            <select name="select10">
              <option>0</option>
              <option>1</option>
              <option selected>2</option>
                        </select>
          </div></td>
        </tr>
        <tr>
          <td colspan="6"><hr></td>
        </tr>
        <tr>
          <td height="20" colspan="6"><div align="center"><span class="style2"><span class="style12">1</span> 2 3 4 5 [다음]</span></div></td>
        </tr>
        <tr>
          <td height="10" colspan="6">&nbsp;</td>
        </tr>
        <tr>
          <td height="30" colspan="6"><div align="center">
            <select name="field" id="select">
              <option value="name">제목</option>
            </select>
            <input type="text" name="moviesubject" id="moviesubject2">
            <input name="button" type="button" id="button" value="검색">
</div></td>
        </tr>
        <tr>
          <td><div align="right">
          </div></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td width="194"><div align="right">
            <input type="submit" name="Submit" value="선택삭제">
          </div></td>
          <td width="6">&nbsp;</td>
          <td><input type="submit" name="Submit2" value="선택수정"></td>
        </tr>
      </table></td>      
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