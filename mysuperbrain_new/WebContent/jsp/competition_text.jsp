<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>${competition.competitionCategory.category_name} Competition Submission |
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
						<li><i class="ace-icon fa fa-list"></i> <a
							href="<%=request.getContextPath() %>/competitions/${client}">Competitions</a>
						</li>
						<li><i class="ace-icon fa fa-list"></i> <a
							href="<%=request.getContextPath() %>/mysuperbrain/${competition.competitionCategory.category_name}/competition-list"> Competitions-Student
							Category</a></li>
						<li class="active">Competition Submission</li>
					</ul>
					<!-- /.breadcrumb -->
					<!-- /section:basics/content.searchbox -->
				</div>
				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="page-content-area">
						       <c:if test="${competition.is_competition_closed ne true}">
					           <div class="page-header">
							<h1>
								${competition.competitionCategory.category_name} Competition Submission <i
									class="ace-icon fa fa-angle-double-right"></i> <small>Please fill all
									the fields and click on submit
								</small>
							</h1>
						</div>
					            </c:if>
																		
																		       
						
						<!-- /.page-header -->
						<div class="row">
								<c:choose>
								<c:when test="${competition.is_competition_closed eq true}">
								<div class="col-md-121">
								    <div class="alert alert-warning"><h4> Competition is closed.Please click on competitions to proceed</h4></div>
								    </div>
								</c:when>
								<c:otherwise>
									<c:choose>
								<c:when test="${submissions_exceeded eq true}">
								<div class="col-md-121">
								    <div class="alert alert-warning"><h4> You reached maximum number of submissions for this entry! Please click on competitions to proceed.</h4></div>
								    </div>
								</c:when>	
								<c:otherwise>								        																		        
							<div class="col-md-8 col-md-offset-1">
							<c:if test="${param.success eq false && param.input eq false}">
								<div class="col-md-12">
								    <div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
								    <h6> Please enter summary and content of the competition</h6>
								    <p>Summary length can not be more than 250 characters</p>
								    </div>
								    </div>
								</c:if>
								<form action="<%=request.getContextPath()%>/user/submit-text-competition"
									method="post" id="text-form" class="form-horizontal">

									<div class="form-group">
										<label for="summary">Summary of your ${competition.competitionCategory.category_name}:</label>

										<textarea class="autosize-transition form-control limited"
											id="summary" name="summary"
											style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 72px;" maxlength="250">
											</textarea>
											
										<p class="instruction">(Tip: When viewers from across the
											world look at the ${competition.competitionCategory.category_name}, they will first look at your
											summary. An attractive summary will get more people to view
											your detailed entry and also get you more votes.)</p>
									</div>
									<div class="form-group">
										<label for="content">Your ${competition.competitionCategory.category_name}:</label>
										<textarea id="content" name="content" class="form-control"
											style="overflow-y: scroll; word-wrap: break-word; resize: horizontal; height: 272px;"></textarea>
											
										<p class="instruction">(You can save the entry by clicking
											on save and submit later)</p>
									</div>
									<input type="hidden" name=client value="${client}" /> 
									<input type="hidden" name=comp_category_id value="${competition.comp_category}" /> 
									<input type="hidden" name=title value="${competition.title}" /> 
									<input type="hidden" name="comp_id" value="${competition.comp_id}" /> 
									<input type="hidden" name="is_saved" id="is-saved" value="NO">
									<div align="center">
									<button type="submit" class="btn btn-md btn-primary"
										id="save-button" onclick="return saveMe()">
										<i class="ace-icon fa fa-save bigger-110"></i>Save
									</button>
									<button type="submit" class="btn btn-md btn-success">
										<i class="ace-icon fa fa-check bigger-110"></i>Submit
									</button>
									</div>
									<!-- <button type="reset" class="btn btn-sm btn-primary" id="reset">
							<i class="ace-icon fa fa-undo bigger-110"></i>Reset
						</button> -->


								</form>
							</div>
							<div class="col-md-3">
								<div class="widget-box widget-color-orange">
									<div class="widget-header widget-header-flat">
										<h4 class="widget-title smaller">
											<i class="ace-icon fa fa-arrow-right smaller-80"></i>
											Competition Information
										</h4>
									</div>

									<div class="widget-body">
										<div class="widget-main">
											<div class="row">
												<div class="col-md-12">


													<h4>Organized by: &nbsp; ${competition.competition_by }</h4>

													<hr>
													
													<img alt="" src=""
														class="img-responsive col-md-7 col-md-offset-2"> <img
														alt="" src="<%=request.getContextPath()%>/img/competitions/<c:out value="${fn:toLowerCase(competition.competition_by)}"></c:out>.png" style="text-transform: lowercase;"
														class="img-responsive col-md-7 col-md-offset-2">

													<div class="col-md-12">
														<hr>
														<c:set var="rules1" value="${fn.replace(competition.rules,'<p>','<li>') }"/>
														<c:set var="rules2" value="${fn.replace(rules1,'</p>','</li>') }"/>
														<h4>Rules</h4>
													
														
														<c:out value="${competition.rules}" escapeXml="false"></c:out>
														

														<h5>Totla Visits: &nbsp;${competition.no_of_visits }</h5>


														<h5>Totla Entries: &nbsp;${competition.no_of_entries }</h5>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							</c:otherwise>
								</c:choose>
							<!-- /.col -->
							</c:otherwise>
								</c:choose>
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

	<script src="<%=request.getContextPath() %>/assets/js/jquery.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="../assets/js/jquery1x.js"></script>
<![endif]-->
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=request.getContextPath() %>/assets/js/jquery.mobile.custom.js'>"
							+ "<"+"/script>");
	</script>
	

	<!-- page specific plugin scripts -->
	
	<script src="<%=request.getContextPath()%>/assets/js/jquery-ui.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.js"></script>
	<!-- [if lte IE 8]> -->
	<script src="<%=request.getContextPath()%>/assets/js/excanvas.js"></script>
	<!-- [endif] -->
	<script
		src="<%=request.getContextPath()%>/assets/js/date-time/bootstrap-datepicker.js"></script>
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
src="<%=request.getContextPath()%>/assets/js/jquery.validate.js"></script>
		<script
		src="<%=request.getContextPath()%>/assets/js/additional-methods.js"></script>
	<script src="<%=request.getContextPath()%>/assets/summernote/summernote.js"></script>
	<script	
src="<%=request.getContextPath()%>/assets/js/bootbox.js"></script>
<script
		src="<%=request.getContextPath()%>/assets/js/jquery.inputlimiter.1.3.1.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery.autosize.js"></script>
	
	<script type="text/javascript">
		function saveMe(){
			$('#is-saved').val('YES');
			return true;
		}
		$('document').ready(function() {
			$('textarea[class*=autosize]').autosize({
				append : "\n"
			});
			$('textarea.limited').inputlimiter({
				remText : '%n character%s remaining...',
				limitText : 'max allowed : %n.'
			});
			jQuery.validator.addMethod("checkForInvalidData", function(value, element) { 
				value = value.replace(/\s+/g,"_");
				   
				return !/(\S)(\1{2,})/g.test(value);
				 
				}, "Invalid summary");
			$('#summary').val($.trim($('#summary').val()));
			$('[data-toggle=tooltip]').tooltip();
			$('#content').summernote({
		      	  height: 300,               // set editor height
		      	  placeholder: 'Start writing content here',
		      	toolbar: [
		      	       
		      	        ['style', ['bold', 'italic', 'underline', 'clear']],
		      	        ['fontsize', ['fontsize']],
		      	        ['color', ['color']],
		      	        ['para', ['ul', 'ol', 'paragraph']]
		      	      
		      	      ],
		      	  
		      	  theme: 'superhero' 
		      	});
			$('#text-form').validate(
					{
						errorElement : 'div',
						errorClass : 'error-msg',
						focusInvalid : true,

						rules : {
							
							summary : {
								required:true,
								checkForInvalidData:true
								
								
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