<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/teamproject/Imgs/fontello/fontello-11a7e995/css/fontello.css"/>
	<style>
	
		 #footer_theater{
			width:1600px;
            height: 400px;
			/*border : 2px solid red; 경계확인용*/
			padding : 0px;
			background-color : rgba(34,31,31,0.85);
		
        }
        .above_wrap{
            position: relative;
            margin: 3px;
            margin-left: 300px;
            width: 970px;
            height: 390px;
			/*border : 2px solid blue;*/
        }
        
        a{
            text-decoration: none;
            color: rgba(255,255,255,0.5);
        }
        
        /*도시명*/
        #city{
            margin: 25px;
            color: rgba(255,255,255,0.7);
        }
        
        /*영화관div 위치 정렬처리*/
        #seoul_theater{
            position: absolute;
            top:50px;
            right:107px;
        }
        #gyeonggi_theater{
            position: absolute;
            top:90px;
            right:120px;
        }
        
        #incheon_theater{
            position: absolute;
            top: 140px;
            right: 543px;
        }
        
        #daegeon_theater{
            position: absolute;
            top: 180px;
            right: 421px;
        }
        
        #busan_theater{
            position: absolute;
            top:225px;
            right: 7px;
        }
        
        #gwangju_theater{
            position: absolute;
            top: 275px;
            right: 123px;
        }
        
        #gangwon_theater{
            position: absolute;
            top:310px;
            right:605px;
        }
        
        #jeju_theater{
            position: absolute;
            top: 368px;
            right: 681px;
        }
        
        /* 무비박스 영화관 찾기 폰트 처리 */
        #movie_title{
        	font-size : 20px;
        	font-family: 'Nunito', sans-serif;
        	color : black;
        }
        
        
       /* 영화관위치 폰트사이즈*/
        span{
            font-size: 12px;
        }
        
    
   	/* copyright 부분 footer 및 소셜이미지부분 처리 */
	footer{
		width:1600px;
	          height: 200px;
		/*border : 2px solid red;*/  /*경계확인용*/
		padding : 0px;		
		background-color : rgb(34,31,31);
	}
	
	#copyright_wrap{
	          position: relative; /*기준점*/
	margin: 3px;
	         margin-left: 300px;
	         width: 970px;
	         height: 190px;
	/*border : 2px solid blue;*/
	}
	      #copyright_wrap ul{
	          padding: 0px;
	      }
	#copyright_wrap ul li{
	          padding: 0px;
	          text-decoration: none;
		display:inline-block;
	          
	}
	
	        /*글자크기 및 폰트*/
	
	#logo{
	    border: 2px solid rgba(217,217,217, 0.5);
	}
	
	/*ARS랑 번호*/
	#ars{
	    font-size: 25px;
	    color: gray;
	}
	#phone{
	    font-size: 25px;
	    color:rgba(255,255,255,0.8);
	}
	.phone{
	    position: absolute; /*위치에 박아넣기 위해 absolute*/
	    top: 18px;
	    right: 0px;
	}
	
	/*ul태그*/
	ul.icons li{
	    color: rgba(217,217,217, 0.4);
	}
	
	.text1{
	    color: rgba(217,217,217, 0.4);
	}
	
	.text2{
	    color: rgba(217,217,217, 0.4);
	}
	
	.copyright{
	    color: rgba(217,217,217, 0.4);
	}
	
	/* lists */
	.lists li{
	 color : rgba(217,217,217, 0.4);
	}
	
	
	/*소셜이미지 정리 처리*/
	.social{
	    font-size: 28px;
	    position: absolute;
	    top:80px;
	    right:0px;
	}
	
	.social a{
	    text-decoration: none;
	    color: gray;
	}
	
	.social ul.icons li{
	    display: inline-block; /*정렬*/
	text-decoration: none;
	border: 1px solid rgba(255,255,255,0.3); /*테두리 만들기*/
	border-radius: 100%; /*테두리를 둥글게 하기*/
	    background-color: rgba(255,255,255,0.1);
	}
	.social ul.icons li .label{ 
	    display: none; /*소셜글자는 안 보이기*/
	}
	
	.copyright{
	    position: absolute;
	    top:168px;
	    right: 0px;
	}
	
	</style>
<title>무비 footer-copyright</title>
</head>
	<body>	
		 <footer id="footer">
			<div id="copyright_wrap"> <!--relative 적용중-->
			
				<div class="logo">
				    <a href="index.jsp"><img src="/teamproject/Imgs/logo_bottom.gif" id="logo"></a>
				    <div class="phone">    
				        <span id="ars">ARS</span> <span id="phone">1577-9465</span>
				    </div>    
				</div>
				
				<ul class="lists">
				    <li>회사소개 |</li>
				     <li>채용정보 |</li>
				      <li>제휴/광고/부대사업문의 |</li>
				       <li>이용약관 |</li>
				       <li>개인정보 처리방침 |</li>
				       <li>고객센터 |</li>
				       <li>윤리경영</li>
				</ul>
				
				<div class="text1">
				    서울특별시 강남구 도산대로 156. 2층<br>
				    무비박스중앙(주) | 대표자명 김영호<br>
				    개인정보보호 책임자 경영지원실 김정기
				</div>
				
				<div class="text2">
				     사업자등록번호 2514-84-52147 | 통신판매업 신고번호 제833호
				</div>
				
				<div class="social">
				    <ul class="icons">
				        <li>
                            <a href="https://ko-kr.facebook.com/" class="icon-facebook">
				                <span class="label">페이스북</span>
				            </a>
				        </li>
				        
				        <li>
				            <a href="https://twitter.com/?lang=ko" class="icon-twitter-1">
				                <span class="label">트위터</span>
				            </a>    
				        </li>
				        
				        <li>
				            <a href="https://www.instagram.com/?hl=ko" class="icon-instagram">
                                <span class="label">인스타그램</span>
                            </a>
				        </li>
				        
				        <li>
				            <a href="https://www.apple.com/kr/?afid=p238%7Cs2JJX6RCV-dc_mtid_18707vxu38484_pcrid_257213703053_&cid=aos-kr-kwgo-brand--slid--product-" class="icon-apple">
				                <span class="label">애플스토어</span>
				            </a>
				        </li>
				        
				        <li>
				            <a href="https://play.google.com/store?hl=ko" class="icon-google">
				                <span class="label">구글스토어</span>
				            </a>
				        </li>
				    </ul>
				</div>
				
				<div class="copyright">
				    Copyright 2019 by MovieBoxSeoMyeon. Inc. All rights reserved
				</div>
			</div>
		</footer>
	</body>
</html>