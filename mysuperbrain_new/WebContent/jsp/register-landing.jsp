<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Student Registration | MySuperBrain</title>

<meta name="description"
	content="MySuperBrain.com is the first website that aims to encourage the all-round development in school students. MySuperBrain.com makes students more knoeledgeable and creative. MSB also provides the students an opportunity to showcase their amazing skills in multiple areas to people from around the world">
<meta name="keywords"
	content="MySuperBrain.com, mysuperbrain, all-rounder, education, overall development, IIM alumni, knowledge, creativity, recognition, students, school, children, Howard Gardner, multiple intelligences, quizzes, quizzes for kids, My">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/bootstrap.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/font-awesome.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style" />
<!-- fav icon -->
<link rel="icon" href="<%=request.getContextPath()%>/img/favicon.ico"
	type="image/x-icon">
<!-- page specific plugin styles -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/jquery-ui.custom.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/jquery.gritter.css" />
<!--[if lte IE 9]>
			<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/ace-ie.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="<%=request.getContextPath() %>/assets/js/ace-extra.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="<%=request.getContextPath() %>/assets/js/html5shiv.js"></script>
		<script src="<%=request.getContextPath() %>/assets/js/respond.js"></script>
		<![endif]-->
<script src="<%=request.getContextPath()%>/js/analytics.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body class="no-skin">
	<jsp:include page="/common/header.jsp"></jsp:include>
	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
		<jsp:include page="/common/menu.jsp"></jsp:include>
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="<%=request.getContextPath() %>/">Home</a>
						</li>
						<li class="active">Successful Registration</li>
					</ul>
					<!-- /.breadcrumb -->
					<!-- /section:basics/content.searchbox -->
				</div>
				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="page-content-area">
						<div class="page-header">
							<h1>
								Registration <small> <i
									class="ace-icon fa fa-angle-double-right"></i>
									<c:if test="${param.success eq true }">
									 Successfully registered as a student at MySuperBrain.com
									</c:if>
									
									
									<c:if test="${param.success eq false}">
									 Failed
									</c:if>
									
								</small>
							</h1>
						</div>
						<!-- /.page-header -->
						<div class="row">
							<div class="col-md-12">	
								<ul class="list-unstyled spaced inline bigger-120 margin-15">
							
							<c:if test="${param.success eq true }">
							<li><i class="ace-icon fa fa-hand-o-right green"></i>Thank you for creating an account at MySuperBrain.</li>
									<li><i class="ace-icon fa fa-hand-o-right green"></i>We have sent an email to your registered mail to activate your account with activation link and your account information (Please do check your spam folder also).</li>
									<li><i class="ace-icon fa fa-hand-o-right green"></i>Please contact us at contact@mysuperbrain.com or 97013 20902 with any questions.</li>
									</c:if>
							<c:if test="${param.success eq false}">
							<li><i class="ace-icon fa fa-hand-o-right green"></i>There is propblem occured while creating an account at MySuperBrain.</li>
										<li><i class="ace-icon fa fa-hand-o-right green"></i>You May provided an invalid email at the time of registration,Now you can not activate your account.</li>
									<li><i class="ace-icon fa fa-hand-o-right green"></i>Please contact us at contact@mysuperbrain.com or 97013 20902 for further details.</li>
								
									</c:if>
							
									<li><i class="ace-icon fa fa-hand-o-right green"></i>We are providing 
									few services to premium users only.
										<a href="<%=request.getContextPath() %>/premium" class="btn btn-success">

								More Details.. <i
								class="ace-icon fa fa-print icon-on-right bigger-110"></i>
							</a>
									 </li>


							</ul>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.page-content-area -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div><!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script src="<%=request.getContextPath() %>/assets/js/jquery.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="../assets/js/jquery1x.js"></script>
<![endif]-->
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=request.getContextPath() %>/assets/js/jquery.mobile.custom.js'>"
							+ "<"+"/script>");
	</script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.js"></script>

	<!-- page specific plugin scripts -->

	<!-- [if lte IE 8]> -->
		  <script src="<%=request.getContextPath()%>/assets/js/excanvas.js"></script>
		<!-- [endif] -->
	

	<!-- ace scripts -->
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/elements.aside.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/ace/ace.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/ace.sidebar.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/ace.sidebar-scroll-1.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/ace/ace.submenu-hover.js"></script>

	<script type="text/javascript">
		$('document').ready(function(){
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
</body>
</html>