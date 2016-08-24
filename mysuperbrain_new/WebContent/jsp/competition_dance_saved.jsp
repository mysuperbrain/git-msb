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
<title>Dance Competition Submission Successful |
	MySuperBrain.com</title>

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
<link href="<%=request.getContextPath()%>/assets/summernote/summernote.css" rel="stylesheet">
<!-- ace settings handler -->
<script src="<%=request.getContextPath() %>/assets/js/ace-extra.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="<%=request.getContextPath() %>/assets/js/html5shiv.js"></script>
		<script src="<%=request.getContextPath() %>/assets/js/respond.js"></script>
		<![endif]-->
<script src="<%=request.getContextPath()%>/js/analytics.js"></script>

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
						<li><i class="ace-icon fa fa-home home-icon"></i> <a
							href="<%=request.getContextPath() %>/">Home</a></li>
						<li><i class="ace-icon fa fa-list"></i> Competitions
						</li>
						
						<li class="active">Competition Submission Successfull</li>
					</ul>
					<!-- /.breadcrumb -->
					<!-- /section:basics/content.searchbox -->
				</div>
				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="page-content-area">
						<div class="page-header">
						<c:if test="${param.success eq true }">
									<h1>
								Submitted Your Entry Successfully<small>
								</small>
							</h1>
								</c:if>	
								<c:if test="${param.success eq false }">
								<c:if test="${param.exceeded eq true }">
								<h1>
								Entry Submission Failed<small>
								</small>
							</h1>
								</c:if>
								<c:if test="${param.exceeded eq false }">
								<h1>
								Technical Problem<small>
								</small>
							</h1>
								
								</c:if>
									
								</c:if>	
							
						</div>
						<!-- /.page-header -->
						<div class="row">
						
							<div class="col-md-8 col-md-offset-1">
							<c:if test="${param.success eq true }">
									<div class="alert alert-success"><h4>Your Entry Successfully submitted .Click on below button to view and share entry to get more points</h4></div>
									<a href="${pageContext.request.contextPath}/view/mysuperbrain/competition_dance/${param.id}" class="btn btn-md btn-primary">View &amp; Share</a>
								</c:if>	
								<c:if test="${param.success eq false }">
								<c:if test="${param.exceeded eq true }">
								<div class="alert alert-success"><h4>You reached maximum number of submissions for this entry! Please click on competitions to proceed.</h4></div>
								</c:if>
								<c:if test="${param.exceeded eq false }">
								<div class="alert alert-success"><h4>There is a technical problem. Please try again later</h4></div>
								</c:if>
									
								</c:if>	
								
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
	</div>
	<!-- /.main-container -->

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
	<script src="<%=request.getContextPath()%>/assets/summernote/summernote.js"></script>
	<script	
src="<%=request.getContextPath()%>/assets/js/bootbox.js"></script>
	<script	
src="<%=request.getContextPath()%>/assets/js/jquery.validate.js"></script>
		<script
		src="<%=request.getContextPath()%>/assets/js/additional-methods.js"></script>
	<script type="text/javascript">
		$('document').ready(function() {
			$('[data-toggle=tooltip]').tooltip();
			$('#content').summernote({
		      	  height: 300,               // set editor height
		      	  placeholder: 'Start writing content here',
		      	  maximumFileSize: 1024 * 100,
		      	    maximumFileSizeError: 'Maximum file size exceeded.',
		      	  theme: 'monokai'
		      	});
			$('#text-form').validate(
					{
						errorElement : 'div',
						errorClass : 'error-msg',
						focusInvalid : true,

						rules : {
							category : {
								required:true
							
							},
							title :{
								required:true
								
							} ,
							summary : {
								required:true
								
								
							},
							content :{
								required:true,
								
							} 

						},
						messages : {
							
						},

						submitHandler : function(form) {
							if($('#content').val().length==0){
								bootbox.alert("Please enter the content");
								return false;
							}
							$('#text-form button[type=submit]').prop("disabled", "disabled");		
							form.submit();
						}

					});
		});
	</script>
</body>
</html>