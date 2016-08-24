<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Register | MySuperBrain</title>

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
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/jquery-ui.css" />
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
						<li class="active">Register</li>
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
								Register <small> <i
									class="ace-icon fa fa-angle-double-right"></i> Fill the form to
									get registered
								</small>
							</h1>
						</div>
						<!-- /.page-header -->
						<div class="row">
							<div class="col-md-12">										
								<div class="toolbar center">
										<a href="<%=request.getContextPath() %>/login"
											class="back-to-login-link"> <i
											class="ace-icon fa fa-arrow-left"></i> &nbsp;Already Registered? Click here to Login
										</a>
									</div>
								<div id="signupbox" style="margin-top: 20px">
									<div class="panel panel-info">
										<div class="panel-heading">
											<div class="panel-title">Sign Up</div>
										</div>
										<div class="panel-body">
											<form:form method="POST" action="doregister" modelAttribute="user" id="signup-form" cssClass="form-horizontal" enctype="multipart/form-data">
											
												<div id="signupalert" style="display: none"
													class="alert alert-danger">
													<p>Error:</p>
													<span></span>
												</div>
												<div class="col-md-12">
													<div class="form-group has-info">
													<label for="username"
														class="col-xs-12 col-sm-3 control-label no-padding-right">Name</label>

													<div class="col-xs-12 col-sm-5">
														<span class="block input-icon input-icon-right"> <form:input
																path="name" cssClass="width-100"
																id="name"/> <i
															class="ace-icon fa fa-user"></i> <form:errors
																path="name" />
														</span>
													</div>
													<div class="help-block col-xs-12 col-sm-reset inline">
														<!-- Warning tip help! --></div>
												</div>
												<div class="form-group has-info">
													<label for="username"
														class="col-xs-12 col-sm-3 control-label no-padding-right">Father Name</label>

													<div class="col-xs-12 col-sm-5">
														<span class="block input-icon input-icon-right"> <form:input
																path="guardian" cssClass="width-100"
																id="guardian"/><i
															class="ace-icon fa fa-user"></i> <form:errors
																path="guardian" />
														</span>
													</div>
													<div class="help-block col-xs-12 col-sm-reset inline">
														<!-- Warning tip help! --></div>
												</div>
													<div class="form-group has-info">
														<label for="username"
															class="col-xs-12 col-sm-3 control-label no-padding-right">Username</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"> <form:input
																	path="username" cssClass="width-100"
																	id="reg_username"></form:input> <i
																class="ace-icon fa fa-user"></i> <form:errors
																	path="username" />
															</span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="emailadd"
															class="col-xs-12 col-sm-3 control-label no-padding-right">Email</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"> <form:input
																	cssClass="width-100" path="mail"
																	id="mail"></form:input> <i
																class="ace-icon fa fa-envelope"></i> <form:errors
																	path="mail" />
															</span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="emailadd"
															class="col-xs-12 col-sm-3 control-label no-padding-right">Date
															Of Birth</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"> <form:input
																	cssClass="width-100" path="dob" id="dob" type="date"
																	></form:input>  <form:errors
																	path="dob" />
															</span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="password"
															class="col-xs-12 col-sm-3 control-label no-padding-right">Password</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"><form:password
																	cssClass="width-100" path="password"
																	id="reg_password"></form:password> <i
																class="ace-icon fa fa-key"></i> <form:errors
																	path="password" /> </span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="password"
															class="col-xs-12 col-sm-3 control-label no-padding-right">Confirm
															Password</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"><form:password
																	cssClass="width-100" path="cpassword"
																	id="cpassword"></form:password><i
																class="ace-icon fa fa-key"></i> <form:errors
																	path="cpassword" /> </span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="password"
															class="col-xs-12 col-sm-3 control-label no-padding-right">School</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"><form:input
																	path="school" cssClass="form-control"
																	id="school" /><i class="ace-icon fa fa-building"></i>
																<form:errors path="school" />  </span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="password"
															class="col-xs-12 col-sm-3 control-label no-padding-right">Class
															Studying</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"><form:select
																	path="standard" cssClass="width-100"
																	id="standard">
																	<form:option value="" disabled="disabled">Select Class</form:option>
																	<form:option value="First">First</form:option>
																	<form:option value="Second">Second</form:option>
																	<form:option value="Three">Third</form:option>
																	<form:option value="Four">Fourth</form:option>
																	<form:option value="Five">Fifth</form:option>
																	<form:option value="Six">Sixth</form:option>
																	<form:option value="Seven">Seventh</form:option>
																	<form:option value="Eight">Eighth</form:option>
																	<form:option value="Nine">Ninth</form:option>
																	<form:option value="Ten">Tenth</form:option>
																	<form:option value="Eleven">Eleventh</form:option>
																	<form:option value="Twelve">Twelfth</form:option>
																</form:select> <form:errors path="standard" /> </span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
													<label for="password"
														class="col-xs-12 col-sm-3 control-label no-padding-right">Section</label>

													<div class="col-xs-12 col-sm-5">
														<span class="block input-icon input-icon-right"><form:input cssClass="width-100"
															path="section" id="section"/><i
															class="ace-icon fa fa-bars"></i> <form:errors
																path="section" />
														</span>
													</div>
													<div class="help-block col-xs-12 col-sm-reset inline">
														<!-- Warning tip help! --></div>
												</div>
													<div class="form-group has-info">
														<label for="password"
															class="col-xs-12 col-sm-3 control-label no-padding-right">Mobile</label>

														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"><form:input
																	cssClass="width-100" path="phone" id="phone"></form:input><i
																class="ace-icon fa fa-phone"></i> <form:errors
																	path="phone" /> </span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="password"
															class="col-xs-12 col-sm-3 control-label no-padding-right">Country</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"><form:select
																	path="country" cssClass="width-100"
																	id="country"></form:select><form:errors
																	path="country" /> </span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="password"
															class="col-xs-12 col-sm-3 control-label no-padding-right">State</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"><form:select
																	path="state" cssClass="width-100" id="state"></form:select><form:errors
																	path="state" /> </span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
														<label for="password"
															class="col-xs-12 col-sm-3 control-label no-padding-right">City</label>
														<div class="col-xs-12 col-sm-5">
															<span class="block input-icon input-icon-right"><form:input
																	path="city" cssClass="width-100" id="city" /><i
																class="ace-icon fa fa-map-marker"></i> <form:errors
																	path="city" /> </span>
														</div>
														<div class="help-block col-xs-12 col-sm-reset inline">
															<!-- Warning tip help! -->
														</div>
													</div>
													<div class="form-group has-info">
													<label for="password"
														class="col-xs-12 col-sm-3 control-label no-padding-right">Reference(Optional)</label>

													<div class="col-xs-12 col-sm-5">
														<span class="block input-icon input-icon-right">
														<c:choose>
														<c:when test="${not empty param.ref}">
														<input type="text" name="reference" value="<c:out value="${param.ref }"></c:out>" disabled="disabled" class="width-100">
														</c:when>
														<c:otherwise>
														<form:input path="reference" cssClass="width-100"
															id="reference" />
														</c:otherwise>
														</c:choose>
														</span>
													</div>
													<div class="help-block col-xs-12 col-sm-reset inline">
														<!-- Warning tip help! -->	</div>
												</div>
												<div class="form-group has-info">
													<label for="password"
														class="col-xs-12 col-sm-3 control-label no-padding-right">Upload ID Card(Optional)</label>

													<div class="col-xs-12 col-sm-5">
														<span class="block input-icon input-icon-right">
														
														<input type="file" name="photo" class="width-100"
															id="photo" />
														</span>
													</div>
													<div class="help-block col-xs-12 col-sm-reset inline">
														</div>
												</div>
													
												</div>
												
												<div class="form-group">
													<!-- Button -->
													<div class="col-md-offset-5 col-md-7 col-lg-offset-5 col-lg-7 col-sm-12 col-xs-12">
														<button id="btn-signup" type="submit"
															class="btn btn-success">
															<i class="icon-hand-right"></i> &nbsp; Sign Up
														</button>
														<button id="btn-signup" type="reset" class="btn btn-info">
															<i class="icon-hand-right"></i> &nbsp; Reset
														</button>
													</div>
												</div>
											</form:form>
										</div>
									</div>
								</div>
								<!-- PAGE CONTENT ENDS -->
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
	<script src="<%=request.getContextPath()%>/assets/js/jquery-ui.js"></script>
<script
		src="<%=request.getContextPath()%>/assets/js/date-time/bootstrap-datepicker.js"></script>
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
		<script
		src="<%=request.getContextPath()%>/assets/js/county-state.js"></script>
		<script
		src="<%=request.getContextPath()%>/assets/js/bootbox.js"></script>
		


	<script type="text/javascript">
		$('document').ready(function() {
			$('[data-toggle=tooltip]').tooltip();
			populateCountries("country", "state");
			populateStates("country", "state");
			/* $('#dob').datepicker({
				autoclose: true,
				todayHighlight: true,
				changeMonth:true,
				changeYear:true,
				dateformat:"MM/dd/yyyy",
				 yearRange: "-50:+0"
			}); */
			$('#signup-form').submit(function(){
				$(":submit").attr("disabled", true);
				
			});
			$('#photo').on('change', function() {
		        if((this.files[0].size/1024).toFixed(0)>300){
				bootbox.alert("ID Card Size must be less than or equal to 300KB");
				$('#photo').replaceWith($('#photo').val('').clone(true));
			}
		      });
		});
	</script>
</body>
</html>
