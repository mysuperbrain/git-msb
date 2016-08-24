<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<title>Student profile | MySuperBrain</title>

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
						<a href="<%=request.getContextPath()%>/user/edit-profile"
									class="btn btn-info btn-bold pull-right"><i
									class="ace-icon fa fa-user bigger-130"></i>&nbsp;Edit/Update Profile
									&nbsp;</a>
							<h1>
								Profile <small> <i
									class="ace-icon fa fa-angle-double-right"></i>${user.name}
								</small>
							</h1>
							
						</div>
						<!-- /.page-header -->
						<div class="row">
						<div id="user-profile-1" class="user-profile row">
						
								<div class="col-md-3 col-xs-12 col-sm-3 center">
						<div>
							<!-- #section:pages/profile.picture -->
							<span class="profile-picture"> <img id="avatar"
								class="avatar img-circle img-thumbnail"
								alt="Profile pic"
								src="<%=request.getContextPath()%>/resources/DisplayProfileImage"
								style="display: block;"></img>
							</span>

							<!-- /section:pages/profile.picture -->
							<div class="space-4"></div>

							<div
								class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
								<div class="inline position-relative">
									
									<a href="#" class="user-title-label dropdown-toggle"
										data-toggle="dropdown"><!--  <i
										class="ace-icon fa fa-circle light-green"></i> --> &nbsp; <span
										class="white">${user.name}</span>
									</a>
									

								</div>
							</div>
						</div>

						<div class="space-6"></div>
						<!-- /section:custom/extra.grid -->
						<div class="hr hr16 dotted"></div>
						<div class="center">
							<span class="btn btn-app btn-sm btn-primary no-hover"> <span
								class="line-height-1 bigger-170"> ${user.points}
							</span> <br> <span class="line-height-1 smaller-90"> Points
							</span>
							</span>
						</div>

						</div>
							<div class="col-md-9">	
								<div class="profile-user-info profile-user-info-striped">

							<div class="profile-info-row"  style="text-transform: capitalize;">
								<div class="profile-info-name">Full name</div>

								<div class="profile-info-value">
									<span>${user.name } ${user.lname } </span>
								</div>
							</div>
							
							<div class="profile-info-row"  style="text-transform: capitalize;">
								<div class="profile-info-name">Class Studying</div>

								<div class="profile-info-value">
									<span>${user.standard } </span>
								</div>
							</div>
							
							
							<div class="profile-info-row"  style="text-transform: capitalize;">
								<div class="profile-info-name">School Name</div>

								<div class="profile-info-value">
									<span>${user.school } </span>
								</div>
							</div>
							

							<div class="profile-info-row"  style="text-transform: capitalize;">
								<div class="profile-info-name">Location</div>

								<div class="profile-info-value">
									<i class="fa fa-map-marker light-orange bigger-110"></i>
									
									<span>${user.city }, </span>
 	
										<span>${user.state }, </span>
 
										<span>${user.country } </span>
								</div>
							</div>
							 
							<div class="profile-info-row">
								<div class="profile-info-name">My Role Model</div>

								<div class="profile-info-value">
									<span>${user.rolemodel } </span>
								</div>
							</div>
							 
							<div class="profile-info-row">
								<div class="profile-info-name">Joined</div>

								<div class="profile-info-value">
									<span><fmt:formatDate pattern="dd/MM/yyyy" value="${user.dob}" />
								</span>
								</div>
							</div>

							
							<div class="profile-info-row">
								<div class="profile-info-name">About Me</div>

								<div class="profile-info-value">
									<span>${user.aboutme } </span>
								</div>
							</div>
							
						</div>
							</div>
							
							
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