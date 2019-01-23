<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/teamproject/css/adminMaincss.css">
<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type = "text/javascript" src = "/teamproject/js/adminMainjs.js"></script> -->
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
 
    // 파일 리스트 번호
    var fileIndex = 0;
    // 등록할 전체 파일 사이즈
    var totalFileSize = 0;
    // 파일 리스트
    var fileList = new Array();
    // 파일 사이즈 리스트
    var fileSizeList = new Array();
    // 등록 가능한 파일 사이즈 MB
    var uploadSize = 50;
    // 등록 가능한 총 파일 사이즈 MB
    var maxUploadSize = 500;
 
    $(function (){
        // 파일 드롭 다운
        fileDropDown();
    });
 
    // 파일 드롭 다운
    function fileDropDown(){
        var dropZone = $("#dropZone");
        //Drag기능 
        dropZone.on('dragenter',function(e){
            e.stopPropagation();
            e.preventDefault();
            // 드롭다운 영역 css
            dropZone.css('background-color','#E3F2FC');
        });
        dropZone.on('dragleave',function(e){
            e.stopPropagation();
            e.preventDefault();
            // 드롭다운 영역 css
            dropZone.css('background-color','#FFFFFF');
        });
        dropZone.on('dragover',function(e){
            e.stopPropagation();
            e.preventDefault();
            // 드롭다운 영역 css
            dropZone.css('background-color','#E3F2FC');
        });
        dropZone.on('drop',function(e){
            e.preventDefault();
            // 드롭다운 영역 css
            dropZone.css('background-color','#FFFFFF');
            
            var files = e.originalEvent.dataTransfer.files;
            if(files != null){
                if(files.length < 1){
                    alert("폴더 업로드 불가");
                    return;
                }
                selectFile(files)
            }else{
                alert("ERROR");
            }
        });
    }
 
    // 파일 선택시
    function selectFile(fileObject){
        var files = null;
 
        if(fileObject != null){
            // 파일 Drag 이용하여 등록시
            files = fileObject;
        }else{
            // 직접 파일 등록시
            files = $('#multipaartFileList_' + fileIndex)[0].files;
        }
        
        // 다중파일 등록
        if(files != null){
            for(var i = 0; i < files.length; i++){
                // 파일 이름
                var fileName = files[i].name;
                var fileNameArr = fileName.split("\.");
                // 확장자
                var ext = fileNameArr[fileNameArr.length - 1];
                // 파일 사이즈(단위 :MB)
                var fileSize = files[i].size / 1024 / 1024;
                
                if($.inArray(ext, ['exe', 'bat', 'sh', 'java', 'jsp', 'html', 'js', 'css', 'xml']) >= 0){
                    // 확장자 체크
                    alert("등록 불가 확장자");
                    break;
                }else if(fileSize > uploadSize){
                    // 파일 사이즈 체크
                    alert("용량 초과\n업로드 가능 용량 : " + uploadSize + " MB");
                    break;
                }else{
                    // 전체 파일 사이즈
                    totalFileSize += fileSize;
                    
                    // 파일 배열에 넣기
                    fileList[fileIndex] = files[i];
                    
                    // 파일 사이즈 배열에 넣기
                    fileSizeList[fileIndex] = fileSize;
 
                    // 업로드 파일 목록 생성
                    addFileList(fileIndex, fileName, fileSize);
 
                    // 파일 번호 증가
                    fileIndex++;
                }
            }
        }else{
            alert("ERROR");
        }
    }
 
    // 업로드 파일 목록 생성
    function addFileList(fIndex, fileName, fileSize){
        var html = "";
        html += "<tr id='fileTr_" + fIndex + "'>";
        html += "    <td class='left' >";
        html +=         fileName + " / " + fileSize + "MB "  + "<a href='#' onclick='deleteFile(" + fIndex + "); return false;' class='btn small bg_02'>삭제</a>"
        html += "    </td>"
        html += "</tr>"
 
        $('#fileTableTbody').append(html);
    }
 
    // 업로드 파일 삭제
    function deleteFile(fIndex){
        // 전체 파일 사이즈 수정
        totalFileSize -= fileSizeList[fIndex];
        
        // 파일 배열에서 삭제
        delete fileList[fIndex];
        
        // 파일 사이즈 배열 삭제
        delete fileSizeList[fIndex];
        
        // 업로드 파일 테이블 목록에서 삭제
        $("#fileTr_" + fIndex).remove();
    }
 
    // 파일 등록
    function uploadFile(){
        // 등록할 파일 리스트
        var uploadFileList = Object.keys(fileList);
 
        // 파일이 있는지 체크
        if(uploadFileList.length == 0){
            // 파일등록 경고창
            alert("파일이 없습니다.");
            return;
        }
        
        // 용량을 500MB를 넘을 경우 업로드 불가
        if(totalFileSize > maxUploadSize){
            // 파일 사이즈 초과 경고창
            alert("총 용량 초과\n총 업로드 가능 용량 : " + maxUploadSize + " MB");
            return;
        }
            
        if(confirm("등록 하시겠습니까?")){
            // 등록할 파일 리스트를 formData로 데이터 입력
            var form = $('#uploadForm');
            var formData = new FormData(form);
            for(var i = 0; i < uploadFileList.length; i++){
                formData.append('files', fileList[uploadFileList[i]]);
            }
            
            $.ajax({
                url:"업로드 경로",
                data:formData,
                type:'POST',
                enctype:'multipart/form-data',
                processData:false,
                contentType:false,
                dataType:'json',
                cache:false,
                success:function(result){
                    if(result.data.length > 0){
                        alert("성공");
                        location.reload();
                    }else{
                        alert("실패");
                        location.reload();
                    }
                }
            });
        }
    }
</script>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />

<meta charset="UTF-8">
<title>관리자 메인</title>
<style type="text/css">
<!--
.style1 {
	font-size: 12px;
	color: #999999;
}

.style7 {
	color: #333333
}

.style9 {
	color: #333333;
	font-size: 14px;
}

.style10 {
	font-size: 14px
}
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
				<form name="uploadForm" id="uploadForm"
					enctype="multipart/form-data" method="post">
					<table class="table" width="100%" border="1px">
						<tbody id="fileTableTbody">
							<div align="center">
								<table width="1200" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="20" rowspan="5">&nbsp;</td>
										<td>&nbsp;</td>
										<td width="20" rowspan="5">&nbsp;</td>
									</tr>
									<tr>
										<!-- 위젯 메뉴 삽입부분 -->
										<td height="300" bgcolor="#CCCCCC">위젯 설정에서 사용할 타이틀을 등록해
											주세요.</td>
									</tr>
									<tr>
										<td height="5">&nbsp;</td>
									</tr>
									<tr>
										<td><table width="1100" border="0" align="center"
												cellpadding="0" cellspacing="0">
												<tr>
													<td width="860" rowspan="19"><table width="860"
															border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td colspan="2"><table width="874" border="0"
																		cellspacing="0" cellpadding="0">
																		<tr>
																			<td id="dropZone">파일을 드래그 하세요</td>
																		</tr>
																		</tbody>
																	</table>
																	</form> <a href="#" onclick="uploadFile(); return false;"
																	class="btn bg_01">파일 업로드</a> <!-- <label class="btn btn-primary">
				  <i class="fa fa-image"></i> 위젯 설정에서 사용할 타이틀을 등록해 주세요. <input type="file" style="display: none;"  name="image">
				</label> --> <!-- <td height="300" bgcolor="#CCCCCC">
					
				</td> -->
															</tr>
															<tr>
																<td height="5">&nbsp;</td>
															</tr>
															<tr>
																<td><table width="1100" border="0" align="center"
																		cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="860" rowspan="19"><table width="860"
																					border="0" cellspacing="0" cellpadding="0">
																					<tr>
																						<td width="840"><strong>영화목록</strong></td>
																						<td width="20"><div align="center">
																								<!-- 영화목록 보여질 부분 + 아이콘 (영화목록 리스트페이지로 연결)-->
																								<a href="#"><img
																									src="Imgs/list_plus_btn.gif" width="13"
																									height="13" border="0"></a>
																							</div></td>
																					</tr>
																					<tr background="Imgs/list_bg.gif">
																						<td colspan="2"><img src="Imgs/list_bg.gif"
																							width="1" height="15"></td>
																					</tr>
																					<tr>
																						<td colspan="2"><table width="860" border="0"
																								cellspacing="0" cellpadding="0">
																								<tr>
																									<!-- 영화목록 이미지부분 -->
																									<td colspan="2"><img
																										src="Imgs/ex_list.gif" width="139"
																										height="203"></td>
																									<td width="4" rowspan="2">&nbsp;</td>
																									<td colspan="2"><img src="Imgs/bohemi.jpg"
																										width="139" height="203"></td>
																									<td width="4" rowspan="2">&nbsp;</td>
																									<td colspan="2"><img src="Imgs/myman.jpg"
																										width="139" height="203"></td>
																									<td width="4" rowspan="2">&nbsp;</td>
																									<td colspan="2"><img src="Imgs/book.jpg"
																										width="139" height="203"></td>
																									<td width="4" rowspan="2">&nbsp;</td>
																									<td colspan="2"><img src="Imgs/aqua.jpg"
																										width="139" height="203"></td>
																									<td width="4" rowspan="2">&nbsp;</td>
																									<td colspan="2"><img src="Imgs/rock.jpg"
																										width="139" height="203"></td>
																								</tr>
																								<tr>
																									<td width="5">&nbsp;</td>
																									<!-- 영화목록 제목 뿌려지는 부분 -->
																									<td width="134"><span class="style10"><img
																											src="Imgs/ex_12.gif" width="13" height="13">
																											말모이 </span></td>
																									<td width="5"><span class="style10"></span></td>
																									<td width="134"><span class="style10"><img
																											src="Imgs/ex_12.gif" width="13" height="13">
																											보헤미안 랩소디 </span></td>
																									<td width="5"><span class="style10"></span></td>
																									<td width="134"><span class="style10"><img
																											src="Imgs/ex_12.gif" width="13" height="13">
																											내안의 그놈 </span></td>
																									<td width="5"><span class="style10"></span></td>
																									<td width="134"><span class="style10"><img
																											src="Imgs/ex_12.gif" width="13" height="13">
																											그린북 </span></td>
																									<td width="5"><span class="style10"></span></td>
																									<td width="134"><span class="style10"><img
																											src="Imgs/ex_12.gif" width="13" height="13">
																											아쿠아맨 </span></td>
																									<td width="5"><span class="style10"></span></td>
																									<td width="134"><span class="style10"><img
																											src="Imgs/ex_12.gif" width="13" height="13">
																											주먹왕 랄프2 </span></td>
																								</tr>
																							</table></td>
																					</tr>
																					<tr>
																						<td colspan="2">&nbsp;</td>
																					</tr>
																					<tr>
																						<td colspan="2"><table width="860" border="0"
																								cellspacing="0" cellpadding="0">
																								<tr>
																									<td><table width="430" border="0"
																											cellpadding="0" cellspacing="0">
																											<tr>000000000000000000000000000000000000000
																												<td width="840"><strong>영화정보</strong></td>
																												<!-- 영화정보 리스트 보여질 부분 + 아이콘 (리스트로 연결)-->
																												<td width="20"><div align="center">
																														<a href="#"><img
																															src="Imgs/list_plus_btn.gif" width="13"
																															height="13" border="0"></a>
																													</div></td>
																											</tr>
																											<tr background="Imgs/list_bg.gif">
																												<td colspan="2"><img
																													src="Imgs/list_bg.gif" width="1"
																													height="15"></td>
																											</tr>
																											<tr>
																												<td colspan="2">
																													<!-- 영화정보 리스트 뿌려지는 부분 -->
																													<table width="430" border="0"
																														cellspacing="0" cellpadding="0">
																														<tr>
																															<td><span class="style9">-
																																	말모이</span></td>
																															<td><div align="right"
																																	class="style7 style10">01.21</div></td>
																														</tr>
																														<tr>
																															<td><span class="style9">-
																																	내안에 그놈 </span></td>
																															<td><div align="right"
																																	class="style9">01.21</div></td>
																														</tr>
																														<tr>
																															<td><span class="style9">-
																																	주먹왕 랄프2 </span></td>
																															<td><div align="right"
																																	class="style9">01.21</div></td>
																														</tr>
																														<tr>
																															<td><span class="style9">-
																																	그린북 </span></td>
																															<td><div align="right"
																																	class="style9">01.21</div></td>
																														</tr>
																														<tr>
																															<td><span class="style9">-
																																	아쿠아맨</span></td>
																															<td><div align="right"
																																	class="style9">01.22</div></td>
																														</tr>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td colspan="2">&nbsp;</td>
																											</tr>
																										</table></td>
																									<td>&nbsp;</td>
																									<td width="5">&nbsp;</td>
																									<td width="430"><table width="430"
																											border="0" cellpadding="0" cellspacing="0">
																											<tr>
																												<td width="840"><strong>상영관정보</strong></td>
																												<!-- 상영관정보 리스트 보여질 부분 + 아이콘 (리스트로 연결)-->
																												<td width="20"><div align="center">
																														<a href="#"><img
																															src="Imgs/list_plus_btn.gif" width="13"
																															height="13" border="0"></a>
																													</div></td>
																											</tr>
																											<tr background="Imgs/list_bg.gif">
																												<td colspan="2"><img
																													src="Imgs/list_bg.gif" width="1"
																													height="15"></td>
																											</tr>
																											<tr>
																												<td colspan="2">
																													<!-- 상영관정보 리스트 뿌려지는부분 -->
																													<table width="430" border="0"
																														cellspacing="0" cellpadding="0">
																														<tr>
																															<td><span class="style9">
																																	[부산/대구/경상] 부산극장 </span></td>
																															<td><div align="right"
																																	class="style7 style10">01.21</div></td>
																														</tr>
																														<tr>
																															<td><span class="style9">[서울]강남</span></td>
																															<td><div align="right"
																																	class="style9">01.21</div></td>
																														</tr>
																														<tr>
																															<td><span class="style9">[인천]송도</span></td>
																															<td><div align="right"
																																	class="style9">01.21</div></td>
																														</tr>
																														<tr>
																															<td><span class="style9">[경기]고양스타필드</span></td>
																															<td><div align="right"
																																	class="style9">01.21</div></td>
																														</tr>
																														<tr>
																															<td><span class="style9">[대전/충청/세종]공주</span></td>
																															<td><div align="right"
																																	class="style9">01.22</div></td>
																														</tr>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td colspan="2">&nbsp;</td>
																											</tr>
																										</table></td>
																								</tr>
																							</table></td>
																					</tr>
																					<tr>
																						<td colspan="2"><table width="874" border="0"
																								cellspacing="0" cellpadding="0">
																								<tr>
																									<td width="840"><strong>이벤트</strong></td>
																									<td colspan="2"><div align="center">
																											<!-- 이벤트목록 보여질 부분 + 아이콘 (이벤트정보 리스트페이지로 연결)-->
																											<a href="#"><img
																												src="Imgs/list_plus_btn.gif" width="13"
																												height="13" border="0"></a>
																										</div></td>
																								</tr>
																								<tr background="Imgs/list_bg.gif">
																									<td colspan="2"><img
																										src="Imgs/list_bg.gif" width="1" height="15"></td>
																								</tr>
																								<tr>
																									<td colspan="3">
																										<!-- 이벤트 리스트 뿌려지는 부분 -->
																										<table width="874" border="0" align="center"
																											cellpadding="0" cellspacing="0">
																											<tr>
																												<td><span class="style9">&lt;메이트&gt;
																														필름소사이어티 굿즈패키지 상영회 </span></td>
																												<td><div align="right"
																														class="style7 style10">01.22</div></td>
																											</tr>
																											<tr>
																												<td><span class="style9">[이벤트]이벤트
																														내용을 입력하세요 </span></td>
																												<td><div align="right" class="style9">01.23</div></td>
																											</tr>
																											<tr>
																												<td><span class="style9">주먹왕 랄프2
																														이벤트 </span></td>
																												<td><div align="right" class="style9">01.24</div></td>
																											</tr>
																											<tr>
																												<td><span class="style9"> 그린북
																														소셜네트워크 이벤트 </span></td>
																												<td><div align="right" class="style9">01.21</div></td>
																											</tr>
																											<tr>
																												<td><span class="style9"> 아쿠아맨
																														시사회 이벤트 </span></td>
																												<td><div align="right" class="style9">01.22</div></td>
																											</tr>
																										</table>
																									</td>
																								</tr>
																							</table></td>
																					</tr>
																				</table></td>
																			<td width="300"><table width="200" border="0"
																					cellspacing="0" cellpadding="0">
																					<tr>
																						<td width="15">&nbsp;</td>
																						<!-- 관리자로그인창 -->
																						<td><table width="160" border="0"
																								align="left" cellpadding="0" cellspacing="0">
																								<tr>
																									<td width="124"><strong>Login</strong></td>
																									<td width="49"><div align="right"
																											class="style1">
																											<div align="right">
																												<a href="#">정보찾기</a>
																											</div>
																										</div></td>
																								</tr>
																								<tr background="Imgs/title_bg.gif">
																									<td height="5" colspan="2"><img
																										src="Imgs/title_bg.gif" width="1" height="5"></td>
																								</tr>
																								<tr>

																								</tr>
																								<tr background="Imgs/title_bg.gif">
																									<td height="9" colspan="2"><img
																										src="Imgs/title_bg.gif" width="1" height="5"></td>
																								</tr>
																								<tr>
																									<td colspan="2"><div align="center">
																											<input name="textfield2" type="text"
																												value="비밀번호">
																										</div></td>
																								</tr>
																								<tr background="Imgs/title_bg.gif">
																									<td height="5" colspan="2"><img
																										src="Imgs/title_bg.gif" width="1" height="5"></td>
																								</tr>
																								<tr>
																									<td colspan="2"><div align="center">
																											<input type="submit" name="Submit"
																												style="width: 130pt" value="로그인">
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
																			<td><p>&nbsp;</p></td>
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
											</table></td>
									</tr>
								</table>
								</td>
								<td width="300"><table width="200" border="0"
										cellspacing="0" cellpadding="0">
										<tr>
											<td width="15">&nbsp;</td>
											<!-- 관리자로그인창 -->
											<td><table width="160" border="0" align="left"
													cellpadding="0" cellspacing="0">
													<tr>
														<td width="124"><strong>Login</strong></td>
														<td width="49"><div align="right" class="style1">
																<div align="right">
																	<a href="#">정보찾기</a>
																</div>
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
																<input type="submit" name="Submit" style="width: 130pt"
																	value="로그인">
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
									<td><p>&nbsp;</p></td>
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
					</table>
					</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>
</body>
</html>
