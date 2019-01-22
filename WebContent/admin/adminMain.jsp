<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인</title>
<style type="text/css">
<!--
.style1 {
	font-size: 12px;
	color: #999999;
}
.style7 {color: #333333}
.style9 {color: #333333; font-size: 14px; }
.style10 {font-size: 14px}
-->
</style>
</head>

<body>
<div align="center">
  <table width="1200" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="20" rowspan="5">&nbsp;</td>
      <td>&nbsp;</td>
      <td width="20" rowspan="5">&nbsp;</td>
    </tr>
    <tr>
	<!-- 위젯 메뉴 삽입부분 -->
      <td height="300" bgcolor="#CCCCCC">위젯 설정에서 사용할 타이틀을 등록해 주세요. </td>
    </tr>
    <tr>
      <td height="5">&nbsp;</td>
    </tr>
    <tr>
      <td><table width="1100" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="860" rowspan="19"><table width="860" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="840"><strong>영화목록</strong></td>
              <td width="20"><div align="center">
                  <!-- 영화목록 보여질 부분 + 아이콘 (영화목록 리스트페이지로 연결)-->
                  <a href="#"><img src="Imgs/list_plus_btn.gif" width="13" height="13" border="0"></a></div></td>
            </tr>
            <tr>
              <td colspan="2"><hr style="border: solid 2px gray;"></td>
            </tr>
            <tr>
              <td colspan="2"><table width="860" border="0" cellspacing="0" cellpadding="0">
                  <tr>
   
                    <!-- 영화목록 이미지부분 -->
                    <td colspan="2"><img src="Imgs/ex_list.gif" width="139" height="203"></td>
                    <td width="4" rowspan="2">&nbsp;</td>
                    <td colspan="2"><img src="Imgs/bohemi.jpg" width="139" height="203"></td>
                    <td width="4" rowspan="2">&nbsp;</td>
                    <td colspan="2"><img src="Imgs/myman.jpg" width="139" height="203"></td>
                    <td width="4" rowspan="2">&nbsp;</td>
                    <td colspan="2"><img src="Imgs/book.jpg" width="139" height="203"></td>
                    <td width="4" rowspan="2">&nbsp;</td>
                    <td colspan="2"><img src="Imgs/aqua.jpg" width="139" height="203"></td>
                    <td width="4" rowspan="2">&nbsp;</td>
                    <td colspan="2"><img src="Imgs/rock.jpg" width="139" height="203"></td>
                  </tr>
                  <tr>
                    <td width="5">&nbsp;</td>
                    <!-- 영화목록 제목 뿌려지는 부분 -->
                    <td width="134"><span class="style10"><img src="Imgs/ex_12.gif" width="13" height="13"> 말모이 </span></td>
                    <td width="5"><span class="style10"></span></td>
                    <td width="134"><span class="style10"><img src="Imgs/ex_12.gif" width="13" height="13"> 보헤미안 랩소디 </span></td>
                    <td width="5"><span class="style10"></span></td>
                    <td width="134"><span class="style10"><img src="Imgs/ex_12.gif" width="13" height="13"> 내안의 그놈 </span></td>
                    <td width="5"><span class="style10"></span></td>
                    <td width="134"><span class="style10"><img src="Imgs/ex_12.gif" width="13" height="13"> 그린북 </span></td>
                    <td width="5"><span class="style10"></span></td>
                    <td width="134"><span class="style10"><img src="Imgs/ex_12.gif" width="13" height="13"> 아쿠아맨 </span></td>
                    <td width="5"><span class="style10"></span></td>
                    <td width="134"><span class="style10"><img src="Imgs/ex_12.gif" width="13" height="13"> 주먹왕 랄프2 </span></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2"><table width="860" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="430" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="840"><strong>영화정보</strong></td>
                          <!-- 영화정보 리스트 보여질 부분 + 아이콘 (리스트로 연결)-->
                          <td width="20"><div align="center">
                          <a href="#"><img src="Imgs/list_plus_btn.gif" width="13" height="13" border="0"></a></div></td>
                        </tr>
                        <tr>
                          <td colspan="2"><hr style="border: solid 2px gray;"></td>
                        </tr>
                        <tr>
                          <td colspan="2">
                            <!-- 영화정보 리스트 뿌려지는 부분 -->
                            <table width="430" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td><span class="style9">- 말모이</span></td>
                                <td><div align="right" class="style7 style10">01.21</div></td>
                              </tr>
                              <tr>
                                <td><span class="style9">- 내안에 그놈 </span></td>
                                <td><div align="right" class="style9">01.21</div></td>
                              </tr>
                              <tr>
                                <td><span class="style9">- 주먹왕 랄프2 </span></td>
                                <td><div align="right" class="style9">01.21</div></td>
                              </tr>
                              <tr>
                                <td><span class="style9">- 그린북 </span></td>
                                <td><div align="right" class="style9">01.21</div></td>
                              </tr>
                              <tr>
                                <td><span class="style9">- 아쿠아맨</span></td>
                                <td><div align="right" class="style9">01.22</div></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td colspan="2">&nbsp;</td>
                        </tr>
                    </table></td>
                    <td>&nbsp;</td>
                    <td width="5">&nbsp;</td>
                    <td width="430"><table width="430" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="840"><strong>상영관정보</strong></td>
                          <!-- 상영관정보 리스트 보여질 부분 + 아이콘 (리스트로 연결)-->
                          <td width="20"><div align="center">
                          <a href="#"><img src="Imgs/list_plus_btn.gif" width="13" height="13" border="0"></a></div></td>
                        </tr>
                        <tr>
                          <td colspan="2"><hr style="border: solid 2px gray;"></td>
                        </tr>
                        <tr>
                          <td colspan="2">
                            <!-- 상영관정보 리스트 뿌려지는부분 -->
                            <table width="430" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td><span class="style9"> [부산/대구/경상] 부산극장 </span></td>
                                <td><div align="right" class="style7 style10">01.21</div></td>
                              </tr>
                              <tr>
                                <td><span class="style9">[서울]강남</span></td>
                                <td><div align="right" class="style9">01.21</div></td>
                              </tr>
                              <tr>
                                <td><span class="style9">[인천]송도</span></td>
                                <td><div align="right" class="style9">01.21</div></td>
                              </tr>
                              <tr>
                                <td><span class="style9">[경기]고양스타필드</span></td>
                                <td><div align="right" class="style9">01.21</div></td>
                              </tr>
                              <tr>
                                <td><span class="style9">[대전/충청/세종]공주</span></td>
                                <td><div align="right" class="style9">01.22</div></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td colspan="2">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td colspan="2"><table width="874" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="840"><strong>이벤트</strong></td>
                  <td colspan="2"><div align="center">
                  <!-- 이벤트목록 보여질 부분 + 아이콘 (이벤트정보 리스트페이지로 연결)-->
                  <a href="#"><img src="Imgs/list_plus_btn.gif" width="13" height="13" border="0"></a></div></td>
                  </tr>
                <tr>
                          <td colspan="2"><hr style="border: solid 2px gray;"></td>
                        </tr>
                <tr>
                  <td colspan="3">
				  <!-- 이벤트 리스트 뿌려지는 부분 -->
				  <table width="874" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><span class="style9">&lt;메이트&gt; 필름소사이어티 굿즈패키지 상영회 </span></td>
                      <td><div align="right" class="style7 style10">01.22</div></td>
                    </tr>
                    <tr>
                      <td><span class="style9">[이벤트]이벤트 내용을 입력하세요 </span></td>
                      <td><div align="right" class="style9">01.23</div></td>
                    </tr>
                    <tr>
                      <td><span class="style9">주먹왕 랄프2 이벤트 </span></td>
                      <td><div align="right" class="style9">01.24</div></td>
                    </tr>
                    <tr>
                      <td><span class="style9"> 그린북 소셜네트워크 이벤트 </span></td>
                      <td><div align="right" class="style9">01.21</div></td>
                    </tr>
                    <tr>
                      <td><span class="style9"> 아쿠아맨 시사회 이벤트 </span></td>
                      <td><div align="right" class="style9">01.22</div></td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
          <td width="300"><table width="200" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="15">&nbsp;</td>
			  <!-- 관리자로그인창 -->
              <td><table width="160" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="124"><strong>Login</strong></td>
                    <td width="49"><div align="right" class="style1">
                      <div align="right"><a href="#">정보찾기</a></div>
                    </div></td>
                  </tr>                  
                  <tr>
                    <td colspan="2"><div align="center">
                      <input name="textfield" type="text" value="아이디">
                    </div></td>
                  </tr>                  
                  <tr>
                    <td colspan="2"><div align="center">
                      <input name="textfield2" type="text" value="비밀번호">
                    </div></td>
                  </tr>                  
                  <tr>
                    <td colspan="2"><div align="center">
                      <input type="submit" name="Submit" style="width:130pt" value="로그인">
                    </div></td>
                  </tr>
                  <tr>
                    <td colspan="2">&nbsp;</td>
                  </tr>
              </table></td>
              <td width="5">&nbsp;</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td><p>&nbsp;</p>            </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
