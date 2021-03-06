<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../component/core_head.jsp" />
<title>WhenWhere</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" href="../css/board/boardwrite.css"
	type="text/css">
<script src="../ckEditor/ckeditor.js"></script>


<script type="text/javascript">
$(function() {
	var result = '${insert}';
	if (result == 'true') {				
		location.href = "noticeRead?no=0";
	}
	
	else if(result =='false'){
		$.bootstrapGrowl("내용을 입력해주세요!", {
			type: 'danger',
			align: 'center',
			width: 'auto',
			allow_dismiss: false
		});
	}
	
	$(".ui-helper-hidden-accessible").css('display','none');
	$(".ui-helper-hidden-accessible").html('');
	
	$(".ui-tooltip ui-widget ui-corner-all ui-widget-content").css('display','none');
	$(".ui-tooltip ui-widget ui-corner-all ui-widget-content").html('');
	
	
});
</script>
<script type="text/javascript">
	

	var f = $("#inForm");
	function formSubmit() {
		if ($("#dataTitle").val() == '') {
			$.bootstrapGrowl("제목을 입력하세요!", {
				type: 'danger',
				align: 'center',
				width: 'auto',
				allow_dismiss: false
			});
			return;
		}
		$("#inForm").submit();
		
	}
</script>
</head>

<body class="hold-transition skin-blue sidebar-mini sidebar-collapse">
	<div id="main_bg" class="info_main_bg">
		<div class="mainWrap"></div>
	</div>
	<div class="wrapper">
		<!-- include -->
		<jsp:include page="../../component/header.jsp" />
		<jsp:include page="../../component/linkSidebar.jsp" />
		<!-- Content Wrapper. Contains page content -->

		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header"></section>
			<div class="container">
				<div class="row">
					<div
						class="col-lg-6 col-lg-offset-3 col--8 col-md-offset-2 text-center">
						<div id="all" class="clearfix">							
								<!-- 2015.12.07 수정-->

								<!--//-->
								<form id="inForm" name="inForm" method="post"
									action="noticewrite" enctype="multipart/form-data">
									
									<input type="hidden" name="category" value="${category}">
									
									<div class="con_area">
										<div class="board_box">
											 <div class="box-header"><h3>게시판 글 쓰기</h3></div>
											<div class="bbs_write">
												<table class="write_1">
													
													<tbody>
														<tr>
															<th scope="row"><label for="dataTitle">제 목</label></th>
															<td class="bbs_tit"><input type="text" name="title"
																id="dataTitle" value=""></td>
														</tr>
														<tr>
															<th scope="row"><label for="userNick">등록자</label></th>
															<td class="bbs_name"><input type="text" name="auth"
															 readonly="readonly" id="userNick" value="${sessionScope.member.nickname}"></td>
														</tr>
														<!-- 에디터영역 시작-->
														<tr>
															<td colspan="2" class="bbs_write">
																<div class="bbs_write_wrap">
																	<!-- <textarea name="dataContent" id="dataContent"
																	style="width: 100%; height: 300px;" rows="10" cols="50"></textarea> -->
																	<textarea name="content" id="editor"
																		style="width: 100%; height: 800px;" rows="10"
																		cols="20">
																		
																	</textarea>
																	<script>
																		CKEDITOR
																				.replace(
																						'editor',
																						{
																							toolbar : 'witetoolbar',
																							height : '800px'
																						});
																	</script>
																</div>
															</td>
														</tr>


														<!-- 에디터영역 끝.-->
													</tbody>
												</table>
											</div>
										</div>
											<div class="bbs_btn">
												
												<p class="fr">
												<a href="../board/notice?category=1" class="btn btn-info pull-right">취소</a>
											
												<button class="btn btn-info pull-right"
												onclick="formSubmit();">등록</button>

												</p>
											</div>
									</div>
								</form>
							

						</div>


					</div>
				</div>
			</div>

		</div>

		<!-- /.content-wrapper -->
		<!-- include -->
		<jsp:include page="../../component/footer.jsp" />
		<jsp:include page="../../component/controlSidebar.jsp" />
	</div>
	<!-- scripts -->
	<jsp:include page="../../component/core_js.jsp" />

</body>
</html>
