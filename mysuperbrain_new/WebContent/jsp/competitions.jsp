<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Competitions | MySuperBrain.com</title>

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
						<li class="active">Competitions</li>
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
								Competitions<small> <i
									class="ace-icon fa fa-angle-double-right"></i> Click on proceed to participate in competition
								</small>
							</h1>
						</div>
						<!-- /.page-header -->
						<div class="row">
							<div class="col-md-12">	
						
		
		<div class="row">
			<div class="space-6"></div>
			<div class="col-md-2"></div>
			<div class="col-md-8 well event widget-body">
				<div class="col-md-3">
					<img src="<%=request.getContextPath()%>/img/events/poet.jpg"
						style="width: 100%; height: 150px;">
				</div>
				<div class="col-md-9">
					<h4 class="center">Super Poet</h4>
					<div class="center">
						<p class="text-justify">"When power leads man towards
							arrogance, poetry reminds him of his limitations. When power
							narrows the area of man's concern, poetry reminds him of the
							richness and diversity of existence. When power corrupts, poetry
							cleanses."</p>
						<p class="text-justify">MSB invites amateur poets with a flair
							for rhythm and rhyme. Submit any poem that you have ever written.
							Just make sure that you are submitting your original entry.</p>
					</div>
					<div class="clearfix">
						<a
							href="${pageContext.servletContext.contextPath}/${client}/poetry/competition-list"
							class="btn btn-info btn-md btn-rd pull-right"> <span
							class="bigger-110">Proceed</span> <i
							class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="space-6"></div>
			<div class="col-md-2"></div>
			<div class="col-md-8 well event widget-body">
				<div class="col-md-3">
					<img src="<%=request.getContextPath()%>/img/events/writer.gif"
						style="width: 100%; height: 150px;">
				</div>
				<div class="col-md-9">
					<h4 class="center">Super Writer</h4>
					<div class="center">
						<p class="text-justify">"Pen is mightier than a sword".
							Digital age has only increased the power of words. Showcase and
							improve your writing skills here.</p>
					</div>
					<div class="clearfix">
						<a
							href="${pageContext.servletContext.contextPath}/${client}/essay/competition-list"
							class="btn btn-danger btn-md btn-rd pull-right"> <span
							class="bigger-110">Proceed</span> <i
							class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="space-6"></div>
			<div class="col-md-2"></div>
			<div class="col-md-8 well event widget-body">
				<div class="col-md-3">
					<img src="<%=request.getContextPath()%>/img/events/paint.jpg"
						style="width: 100%; height: 150px;">
				</div>
				<div class="col-md-9">
					<h4 class="center">Super Painter</h4>
					<div class="center">
						<p class="text-justify">Painting is a magical experiment with
							colors. Give your thoughts a shape with colors and let the world
							know the potential of the next Leonardo da Vinci. Your paintings
							will spread more happiness across the world.</p>
						<p class="text-justify">Get recognized for your painting
							ability and win amazing prizes too.</p>
					</div>
					<div class="clearfix">
						<a
							href="${pageContext.servletContext.contextPath}/${client}/painting/competition-list"
							class="btn btn-primary btn-md btn-rd pull-right"> <span
							class="bigger-110">Proceed</span> <i
							class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</a>
					</div>
				</div>
			</div>
			</div>
			<div class="row">
			<div class="space-6"></div>
			<div class="col-md-2"></div>
			<div class="col-md-8 well event widget-body">
				<div class="col-md-3">
					<img src="<%=request.getContextPath()%>/img/events/shutter.jpg"
						style="width: 100%; height: 150px;">
				</div>
				<div class="col-md-9">
					<h4 class="center">Super Shutter</h4>
					<div class="center">
						<p class="text-justify">MySuperBrain.com invites all budding
							photographers to enter the MSB Super Shutter contest. By sharing
							your passion for capturing the magnificent wonders of people,
							places and nature through your lens, we hope to inspire a global
							audience to learn about the different facets of people in
							different places and protect fragile realm of nature.</p>
						<p class="text-justify">Upload the best of the photographs
							taken by you on www.MySuperBrain.com and win a fantastic Digital
							Camera and many more exciting prizes</p>
					</div>
					<div class="clearfix">
						<a
							href="${pageContext.servletContext.contextPath}/${client}/photography/competition-list"
							class="btn btn-md btn-rd pull-right"> <span
							class="bigger-110">Proceed</span> <i
							class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="space-6"></div>
			<div class="col-md-2"></div>
			<div class="col-md-8 well event widget-body">
				<div class="col-md-3">
					<img src="<%=request.getContextPath()%>/img/events/dance.png"
						style="width: 100%; height: 150px;">
				</div>
				<div class="col-md-9">
					<h4 class="center">Super Dancer</h4>
					<div class="center">
						<p class="text-justify">Dance is the hidden language of the
									soul. Put on your dancing shoes and sway to your favorite tunes
									and get "Super Dancer Certificate".</p>
					</div>
					<div class="clearfix">
						<a
							href="${pageContext.servletContext.contextPath}/${client}/dance/competition-list"
							class="btn btn-md btn-success pull-right"> <span
							class="bigger-110">Proceed</span> <i
							class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="space-6"></div>
			<div class="col-md-2"></div>
			<div class="col-md-8 well event widget-body">
				<div class="col-md-3">
					<img src="<%=request.getContextPath()%>/img/events/sing.jpg"
						style="width: 100%; height: 150px;">
				</div>
				<div class="col-md-9">
					<h4 class="center">Super Singer</h4>
					<div class="center">
						<p class="text-justify">"Music is a moral law. It gives soul
							to the universe, wings to the mind, flight to the imagination,
							and charm and gaiety to life and to everything."</p>
						<p class="text-justify">A bird doesn't sing because it has an
							answer, it sings because it has a song; wise words by Lou
							Holtz.Here are the perfect platform for aspirational singers and
							talented musicians who are waiting to be discovered.</p>
					</div>
					<div class="clearfix">
						<a
							href="${pageContext.servletContext.contextPath}/${client}/singing/competition-list"
							class="btn btn-success btn-md btn-rd pull-right"> <span
							class="bigger-110">Proceed</span> <i
							class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="space-6"></div>
			<div class="col-md-2"></div>
			<div class="col-md-8 well event widget-body">
				<div class="col-md-3">
					<img src="<%=request.getContextPath()%>/img/events/dialogue.png"
						style="width: 100%; height: 150px;">
				</div>
				<div class="col-md-9">
					<h4 class="center">Dialogue</h4>
					<div class="center">
						<p class="text-justify">Every one loves repeating favourite
							dialogues from movies. Let's take that skill and passion onto the
							national stage. Take a video of you delivering your favourite
							dialogues from any movie and upload.</p>

					</div>
					<div class="clearfix">
						<a
							href="${pageContext.servletContext.contextPath}/${client}/dialogue/competition-list"
							class="btn btn-md btn-success btn-rd pull-right"> <span
							class="bigger-110">Proceed</span> <i
							class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="space-6"></div>
			<div class="col-md-2"></div>
			<div class="col-md-8 well event widget-body">
				<div class="col-md-3">
					<img src="<%=request.getContextPath()%>/img/events/your-talent.jpg"
						style="width: 100%; height: 150px;">
				</div>
				<div class="col-md-9">
					<h4 class="center">What is Your Talent?</h4>
					<div class="center">
						<p class="text-justify">MySuperBrain.com aims to provide you
							multiple opportunities to showcase your talents on global scale.
							We continuously conduct a lot of competitions that have thousands
							of students participating.</p>
						
					</div>
					<div class="clearfix">
						<a
							href="<%=request.getContextPath()%>/user/${client}/what_is_your_talent"
							class="btn btn-primary btn-md btn-rd pull-right"> <span
							class="bigger-110">Proceed</span> <i
							class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</a>
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