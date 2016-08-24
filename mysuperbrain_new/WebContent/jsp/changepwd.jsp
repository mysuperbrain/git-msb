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
<title>Change Password | MySuperBrain</title>

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
						<li class="active">Change Password</li>
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
								Change Password <small> <i
									class="ace-icon fa fa-angle-double-right"></i> Please enter
									old and new password's
								</small>
							</h1>
						</div>
						<!-- /.page-header -->
						<div class="row">
							<div class="col-md-12">
								<c:if test="${param.invalid eq true }">
									<div class="alert alert-warning"> You entered a wrong current password</div>
								</c:if>
								<c:if test="${param.success eq true }">
									<div class="alert alert-success"> Password changed successfully</div>
								</c:if>
								<c:if test="${param.success eq false }">
									<div class="alert alert-danger">There is a technical problem.Please try later.</div>
								</c:if>
								<div id="loginbox" style="margin-top: 50px;"
									class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
									<div class="panel panel-info">
										<div class="panel-heading">
											<div class="panel-title"></div>
										</div>
										<div style="padding-top: 30px" class="panel-body">
											<form method="POST" id="changepwd-form" action="" class="form-horizontal">
											
											
										<h4 class="header blue bolder smaller">Change Password</h4>
										<div class="space-10"></div>
										<div class="form-group">
													<label class="col-sm-4 control-label no-padding-right"
														for="form-field-pwd">Old Password</label>

													<div class="col-sm-8">
														<input class="col-xs-12 col-sm-10" type="password"
															 placeholder="Current Password"
															name="oldpwd" id="oldpwd">
													</div>
												</div>
										<div class="form-group">
													<label class="col-sm-4 control-label no-padding-right"
														for="form-field-npwd">New Password</label>

													<div class="col-sm-8">
														<input class="col-xs-12 col-sm-10" type="password"
															 placeholder="New Password"
															name="newpwd" id="newpwd">
													</div>
												</div>
										<div class="form-group">
													<label class="col-sm-4 control-label no-padding-right"
														for="form-field-username">Confirm Password</label>

													<div class="col-sm-8">
														<input class="col-xs-12 col-sm-10" type="password"
															 placeholder="Confirm Password"
															name="newcpwd" id="newcpwd">
													</div>
												</div>
											



										<div class="space-24"></div>
										<div class="clearfix form-actions">
											<div class="col-md-offset-3 col-md-9">
												<button id="changepwd-submit"
														class="btn btn-success" data-loading-text="Please Wait....." type="submit">
													<i class="ace-icon fa fa-check bigger-110"></i> Change
												</button>
												&nbsp;&nbsp;&nbsp;
												<button class="btn btn-primary" type="reset">
													<i class="ace-icon fa fa-refresh bigger-110"></i> Reset
												</button>

											</div>
										</div>
									</form>
											 
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
		<script
		src="<%=request.getContextPath()%>/assets/js/bootbox.js"></script>
		<script	
src="<%=request.getContextPath()%>/assets/js/jquery.validate.js"></script>
		<script
		src="<%=request.getContextPath()%>/assets/js/additional-methods.js"></script>

	<script type="text/javascript">
		$('document').ready(function(){
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
	<script>
	jQuery.validator.addMethod("notEqual", function(value, element, param) {
		 return this.optional(element) || value != $(param).val();
		}, "Old and New Password can not be same");
	$(document).ready(function($) {
		$('#changepwd-form').validate({	
					debug: true,
					errorElement : 'div',
					errorClass : 'col-sm-12 error-msg',
					focusInvalid : true,
					rules : {
						oldpwd :{
							required:true
						},
						newpwd :{
								required:true,
								minlength: 8,
				        	 	maxlength: 15,
				        	 	notEqual:"#oldpwd"
						},
						newcpwd :{
							equalTo:"#newpwd"
						}

					},
					messages : {
						
						newcpwd :{
							equalTo:"new and confirm password must be same"
						}
						
					},
					submitHandler : function(form) {
						form.submit();
						
					}

				});
		

	});

	


</script>
</body>
</html>