<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석선택</title>
<style type="text/css">
<!--
.style2 {font-size: 14px}
.style3 {
   font-size: 18px;
   font-weight: bold;
}
.style4 {color: #FFFFFF;
	}
tr td .style4 : hover{
		background-color: #513397;
}
.style7 {color: #FFFFFF; font-size: 14px; }
.style9 {color: #FFFFFF; font-weight: bold; }
-->

</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
		 function seatSelect(){
			 $("#seatResultDiv").load("/teamproject/movie/yeamearesultDiv.jsp");
		 }
	</script>
</head>

<body>
<table width="966" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#f9f9f9">
    <td colspan="2"><img src="Imgs/inwon_img.jpg" width="164" height="38"></td>
  </tr>
  <tr>
    <td height="5"><div align="center"><img src="Imgs/blank.gif" width="3" height="3"></div>    </td>
   <!-- 동현씨 아래 &bsp지우고 거기에 테이블 넣으면 되요 -->
    <td width="168" rowspan="3">
    	<div id="seatResultDiv">
    		
    	</div>
    
    </td>
  </tr>
  <tr>
    <td><table width="798" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="40">일반</td>
        <td width="50"><select name="select">
            <option>0</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
          </select>
        </td>
        <td width="50">청소년</td>
        <td width="50"><select name="select2">
            <option>0</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
        </select></td>
        <td width="50">어린이</td>
        <td width="50"><select name="select3">
            <option>0</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
        </select></td>
        <td width="40">우대</td>
        <td width="200"><select name="select4">
            <option>0</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
        </select></td>
        <td><span class="style2">인원선택은 최대 8명까지 가능합니다. </span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="798" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="3"><hr></td>
      </tr>
      <tr>
        <td width="627" bgcolor="#CCCCCC"><div align="center" class="style3">SCREEN</div></td>
        <td width="1" rowspan="2"><hr></td>
        <td width="120" rowspan="2"><table width="120" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="15">&nbsp;</td>
              <td width="116">좌석안내</td>
              <td width="10">&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><img src="Imgs/jasuk_ok_img.gif" width="16" height="16"> 선택좌석 </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><img src="Imgs/yeme_ok_img.gif" width="16" height="16"> 예매완료 </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><img src="Imgs/jasuk_no_img.gif" width="16" height="16"> 선택불가 </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><img src="Imgs/jasuk_1ban_img.gif" width="16" height="16"> 일반석 </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><img src="Imgs/jasuk_jange_img.gif" width="16" height="16"> 장애인/ </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td> <img src="Imgs/blank.gif" width="20" height="3">휠체어석 </td>
              <td>&nbsp;</td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td><div align="center">
            <!-- 좌석 선택 -->
            <table width="350" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="19">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="17"><img src="Imgs/exit_img.gif" width="14" height="20"></td>
                <td>&nbsp;</td>
                <td><div align="right"><img src="Imgs/exit_img.gif" width="14" height="20"></div></td>
              </tr>
              <tr>
                <td colspan="19">&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>A</strong></div></td>
                <td width="5"><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#65992B"><div align="center" class="style4"><strong>1</strong></div></td>
                <td width="5"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#67982B"><div align="center" class="style4"><strong>2</strong></div></td>
                <td width="5"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td width="5"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td width="5"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td width="5"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td width="5"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td width="5"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#649A2A"><div align="center" class="style4"><strong>8</strong></div></td>
                <td width="5" background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td width="30" bgcolor="#659B2B"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>B</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>C</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>D</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>E</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>F</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>G</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>H</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>I</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>J</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"><img src="Imgs/blank.gif" width="3" height="5"></div></td>
              </tr>
              <tr>
                <td bgcolor="#CCCCCC"><div align="center"><strong>K</strong></div></td>
                <td><div align="center"><img src="Imgs/blank.gif" width="5" height="3"></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>1</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>2</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>3</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>4</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>5</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>6</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>7</strong></div></td>
                <td><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>8</strong></div></td>
                <td background="Imgs/blank.gif" bgcolor="#999999"><div align="center" class="style4"><strong><img src="Imgs/blank.gif" width="5" height="3"></strong></div></td>
                <td bgcolor="#999999"><div align="center" class="style4"><strong>9</strong></div></td>
              </tr>
              <tr>
                <td colspan="19"><div align="center"></div></td>
              </tr>
            </table>
            <br>
        </div></td>
      </tr>
      <tr>
        <td colspan="3"><hr></td>
      </tr>
      <tr>
        <td height="30" colspan="3">
          <div align="center"></div>
          <table width="694" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="499"><div align="right"><img src="/teamproject/Imgs/re_select_btn.gif" width="71" height="23"></div></td>
           <!-- 좌석인원 선택시 표시 -->
              <td width="150">
              	<div align="right" class="style2">
              	<input type="button" value="선택" onclick="seatSelect();"/>
               </div></td>
              <td width="45">&nbsp;</td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>