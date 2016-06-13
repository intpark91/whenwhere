<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../component/core_head.jsp" />
<title>WhenWhereTest</title>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.4/themes/flick/jquery-ui.css">
<link rel="stylesheet" href="../css/jquery-ui-slider-pips.css" />
<link rel="stylesheet" href="../css/slider.css" />
<link rel="stylesheet" href="../css/eventSlider.css" />
<link rel="stylesheet" href="../css/loadingSpinner.css">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background: url(../resources/img/bg_img.jpg) center center fixed
		no-repeat;
}

video {
	position: fixed;
	top: 0;
	left: 0;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -1;
} 

.titleDiv {
	text-align: center;
	font-size: 70px;
	margin-top: 60px;
}

.sliderDiv {
	margin-top: 10px;
	margin-bottom: 150px;
}

.weatherSpan {
	position: relative;
	top: 67px;
	font-size: 26px;
	left:-2px;
}

.locSelect {
	position: relative;
	float: right;
	bottom: 100px;
}

.locSel {
	height: 35px;
}
</style>
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini sidebar-collapse">
	<video autoplay loop poster="../resources/img/bg_img.jpg">
		<source src="../resources/video/test3.mp4" type="video/mp4">
	</video>
	<div class="wrapper">
		<!-- include -->
		<jsp:include page="../component/header.jsp" />
		<jsp:include page="../component/linkSidebar.jsp" />
		<!-- Content Wrapper. Contains page content -->

		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header hidden-xs">
				<div class="row center ">
					<div class="col-sm-offset-3 col-sm-6 col-sx-3 col-sx-6 titleDiv">
						<span class="label">WhenWhere</span>
					</div>
				</div>
			</section>
			<!-- Main content -->
			<section class="content">
				<!-- Your Page Content Here -->
				<div class="col-sm-offset-3 col-sm-6 col-sx-12 sliderDiv">
					<div id="flat-slider"></div>
					<div class="locSelect">
						<select class="locSel btn" id="locSel">
							<c:forEach items="${locationSubList }" var="list">
								<option>${list }</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</section>
			<!-- /.content -->

			<div class="container">
				<!-- #myCarousel -->
				<div class="carousel slide" id="myCarousel1">
					<h1 class="slideLabel">
						<span class="label">※ 행사지</span>
					</h1>
					<div class="carousel-inner"></div>

				</div>
				<!-- /#myCarousel -->
			</div>



		</div>
				<!-- /.content-wrapper -->
				<!-- include -->
				<jsp:include page="../component/footer.jsp" />
				<jsp:include page="../component/controlSidebar.jsp" />

			</div>
			<!-- scripts -->
	<jsp:include page="../component/core_js.jsp" />
	<script src="../js/jquery-ui-slider-pips.js"></script>
	<script src="../js/slider.js"></script>
	<script src='../js/loadingSpinner.js'></script>
	
</body>
</html>
