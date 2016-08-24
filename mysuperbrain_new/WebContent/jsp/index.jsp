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
<title>World's #1 platform for talent discovery in school
	students - MySuperBrain.com</title>
<meta name="og:image" content="http://www.mysuperbrain.com/assets/logo.png"/>
<meta name="description"
	content="MySuperBrain.com provides a platform for school students to Discover, Improve and Showcase skills through articles, videos, edu games, competitions and analysis">
<meta name="keywords"
	content="MySuperBrain.com, mysuperbrain, talent, skills, kids, all-rounder, education, overall development, knowledge, creativity, recognition, students, children, Howard Gardner, multiple intelligences, quizzes, My">
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
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/jquery-ui.custom.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/jquery.gritter.css" />
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
<script src="<%=request.getContextPath()%>/assets/js/analytics.js"></script>
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
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
						</li>
						<!-- <li class="active">Dashboard</li> -->
					</ul>
					<!-- /.breadcrumb -->
					<!-- /section:basics/content.searchbox -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="row visible-lg">
					<div class="col-md-12 col-sm-12 col-xs-12">
					<c:if test="${param.referred eq true }">
					<div class="alert alert-success fade in">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<small> Thank You.Referred successfully</small></div>
					</c:if>	
					<c:if test="${param.referred eq false }">
					<div class="alert alert-danger fade in">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<small> Techincal Problem Occured! Please try again later.</small></div>
					</c:if>	
					</div>
						<div class="space-6"></div>
						<div class="col-md-8">
						
							<div id="carousel-slide" class="carousel slide"
								data-ride="carousel" data-interval="3000">
								<ol class="carousel-indicators" style="bottom: 0;">
									<li data-target="#carousel-slide" data-slide-to="0"
										class="active"></li>
									<li data-target="#carousel-slide" data-slide-to="1"></li>
									<li data-target="#carousel-slide" data-slide-to="2"></li>
								</ol>
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<a href="<%=request.getContextPath()%>/gdtopics.do"><img
											src="<%=request.getContextPath()%>/img/sliderimages/debates.jpg"
											class="img-rounded" alt="I am an all-rounder"
											style="height: 311px;"></a>

									</div>
									<div class="item">
										<img
											src="<%=request.getContextPath()%>/img/delhi/buddingstars.jpg"
											alt="Multiple Intelligences" class="img-rounded"
											style="height: 311px;">

									</div>
									<div class="item">
										<img
											src="<%=request.getContextPath()%>/img/sliderimages/kidscompetitions.jpg"
											alt="student competitions" class="img-rounded"
											style="height: 311px;">
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 visible-lg">
							<script>
								  (function(d, s, id){
								    var js,
								        fjs = d.getElementsByTagName(s)[0],
								        p = (('https:' == d.location.protocol) ? 'https://' : 'http://'),
								        r = Math.floor(new Date().getTime() / 1000000);
								    if (d.getElementById(id)) {return;}
								    js = d.createElement(s); js.id = id; js.async=1;
								    js.src = p + "www.opinionstage.com/assets/loader.js?" + r;
								    fjs.parentNode.insertBefore(js, fjs);
								  }(document, 'script', 'os-widget-jssdk'));
								</script>
							<div class="os_poll" data-path="/polls/2338779" data-width="300"></div>
						</div>
						<div class="col-md-12 visible-lg" style="padding: 0;">
							<div class="space-12"></div>
							<div id="carousel-slide" class="carousel slide"
								data-ride="carousel" data-interval="3000">

								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<div class="col-lg-3 col-md-3">
											<a href="<%=request.getContextPath()%>/pages/events.jsp"><img
												alt=""
												src="<%=request.getContextPath()%>/img/sliderimages/image 1.png"
												class="img-rounded" style="width: 232px; height: 232px;"></a>
										</div>
										<div class="col-lg-3 col-md-3">
											<a href="<%=request.getContextPath()%>/pages/games.jsp"><img
												alt=""
												src="<%=request.getContextPath()%>/img/sliderimages/image 2.png"
												class="img-rounded" style="width: 232px; height: 232px;"></a>
										</div>
										<div class="col-lg-3 col-md-3">
											<a
												href="<%=request.getContextPath()%>/pages/premium-services.jsp"><img
												alt=""
												src="<%=request.getContextPath()%>/img/sliderimages/image 3.png"
												class="img-rounded" style="width: 232px; height: 232px;"></a>
										</div>
										<div class="col-lg-3 col-md-3">

											<div class="widget-box widget-color-orange">
												<div class="widget-header widget-header-flat center">
													<h4 class="widget-title smaller">Invite a Friend</h4>
												</div>
												<div class="widget-body">
													<div class="widget-main center">
													
														<p>To invite your friend(s) enter E-Mail in the text
															box and click on Invite!</p>
														<form action="<%=request.getContextPath()%>/user/referafriend"
															id="invite-form" method="POST" autocomplete="off">
															<input type="text" name="email"
																placeholder="Enter mail(s) here" required="required">
															<p>
																<small>Enter multiple E-Mail's seperated by
																	commas</small>
															</p>
															
															<button type="submit" class="btn btn-success"
																id="invite-submit">Invite</button>
																
														</form>
														
													</div>
												</div>
											</div>
										</div>

									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
							<div class=" well text-justify">
								<h4>SCHOOLYMPICS</h4>
								<div class="space-6"></div>
								<h5>Dear Super Brains,</h5>

								<p>How do you become famous across the world ?</p>
								<p>There are three simple steps to gain global recognition:</p>
								<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
									<div class="col-md-5 col-lg-5 col-md-offset-1 col-sm-12 col-xs-12">
										<div class="space-18"></div>
										<a href="<%=request.getContextPath() %>/pages/events.jsp"
											class="btn btn-primary btn-block">Participate in
											SCHOOLYMPICS</a> <i
											class="ace-icon glyphicon glyphicon-arrow-down pull-right bigger-210"></i>
									</div>

									<div class="col-md-5 col-lg-5 col-lg-offset-4 col-md-offset-4  col-sm-12  col-xs-12">
										<div class="space-6"></div>
										<a href="<%=request.getContextPath() %>/pages/events.jsp"
											class="btn btn-warning btn-block">Showcase your skills</a> <i
											class="ace-icon glyphicon glyphicon-arrow-down pull-right bigger-210 red"></i>
									</div>

									<div class="col-md-5 col-md-offset-7 col-lg-5 col-lg-offset-7 col-sm-12  col-xs-12">
										<div class="space-6"></div>
										<a href="#" class="btn btn-info btn-block">Share your
											entries</a>
										<div class="space-12"></div>
									</div>
								</div>

								<div class="text-justify">

									<p>You are Special! You have amazing talents that can
										inspire the whole world. Here is your opportunity to showcase
										your skills to the whole world. Every month, new and exciting
										competitions are launched on MySuperBrain.com under the
										SCHOOLYMPICS category.</p>
									<p>SCHOOLYMPICS is the Olympics for students and schools.
										You get a chance to showcase your skills and win medals for
										yourself and your school. You and your friends can now make
										your school proud and spread your glory to the whole world.</p>

								</div>
								<div class="row">
								<div class="well col-md-7 col-md-offset-1 col-lg-7 col-lg-offset-1  col-sm-12  col-xs-12">
									<h4>Process:</h4>
									<ul class="list-unstyled">
										<li><i class="ace-icon fa fa-bell bigger-140 blue"></i>&nbsp;SCHOOLYMPICS
											is held every month. Each month, new topics and competitions
											will be made live on the 1<sup>st</sup> of every month.</li>
									</ul>
								</div>
								<div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<a href="<%=request.getContextPath()%>/pages/events.jsp"
									style="text-decoration: none; right: 0;"
									class="btn btn-primary pull-right">Click on competitions to
									participate<br>(You must login first)
								</a>
								</div>
								</div>
								<div
									class="row alert alert-block alert-warning text-justify">
									<h4>Competition Process:</h4>
									<ol>
										<li>Register on MySuperBrain.com, if you haven't done so
											already.</li>
										<li>Go to the competitions page and see the open
											competitions</li>
										<li>Click on Proceed and visit the entry submission page</li>
										<li>Submit your entry by filling out the details</li>
										<li>All the entries will be evaluated in two steps :
											Voting and Expert feedback</li>
										<li>Share your entry with as many people as you can so
											that you get more votes and have a great chance of winning
											some medals</li>

										<li>Participate in all the rounds of Schoolympics. Inform
											your friends too. It will help you get more points as well as
											increase your school ranking</li>
									</ol>
									<p>Every month, you and students from across the world will
										participate in some exciting competitions. The top
										participants from each competitions will be given medals -
										Gold, Silver and Bronze Medals. The medals tally for the
										schools will also be maintained so that the top schools list
										is always available.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->
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
	
	<script	
src="<%=request.getContextPath()%>/assets/js/jquery.validate.js"></script>
		<script
		src="<%=request.getContextPath()%>/assets/js/additional-methods.js"></script>
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
		$('document').ready(function() {
			
			$('[data-toggle=tooltip]').tooltip();		
				
			$('#invite-form').validate({	
				debug: true,
				errorElement : 'div',
				errorLabelContainer : '.error-div',
				focusInvalid : true,
				rules : {
					email:{
						required:true,
						email:true
					}
		    		
				},
				messages : {
									
				},
				submitHandler : function(form) {
					form.submit();
					
				}

			});
		});
	</script>
	 
</body>
</html>
