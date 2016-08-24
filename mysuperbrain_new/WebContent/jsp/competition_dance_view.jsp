<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.msb.constants.MsbConstants"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>${dance.competition.title}| ${dance.submission_type} |
	MySuperBrain.com</title>
<meta name="fb:app_id" content="820818497977425" />
<meta name="og:url"
	content="<%=request.getContextPath() %>/view/${client}/competition_photography/${dance.id}" />
<meta name="og:title"
	content="Painting Entry by ${dance.user_name} titled  ${dance.title} - MySuperBrain.com" />
<meta name="og:description" content="${dance.entry_summary}" />
<meta name="og:image"
	content="<%=request.getContextPath()%>/img/logo.png" />
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
						<li class="active">${dance.submission_type}Entry</li>
					</ul>
					<!-- /.breadcrumb -->
					<!-- /section:basics/content.searchbox -->
				</div>
				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="page-content-area">
						<div class="page-header col-md-8">

							<div class="alert alert-success hide" id="like-msg">
								<button class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>
								<i class="fa fa-check"></i>&nbsp;Thank you for your Like
							</div>
							<div class="alert alert-danger hide" id="liked-msg">
								<button class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>
								<i class="fa fa-close"></i>&nbsp;Already Liked
							</div>

							<span class="pull-left"><b>Submitted by :</b>&nbsp;${dance.user_name}</span>



							<span class="pull-right"><b>&nbsp;Votes :</b>&nbsp; <span
								id="votes"><c:set var="votes"
										value="${ (dance.points-20)/2 }"></c:set> <fmt:formatNumber
										maxFractionDigits="0" value="${votes}" type="number" /></span></span> <span
								class="pull-right"><b>Points :</b>&nbsp; <span
								id="points">${dance.points} &nbsp; |</span></span>
						</div>
						<!-- /.page-header -->
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-8">

									<div class="blog-single-content">
										<!-- POST -->
										<div class="post post-single">
											<div class="post-content text-justify">
												<blockquote style="font-size: 14px;">
													<p>
														<b>Title :</b>
													</p>
													${dance.competition.title}
												</blockquote>
												<div class="space-12"></div>
												<blockquote style="font-size: 14px;">
													<p>
														<b>Summary :</b>
													</p>
													${dance.entry_summary}
												</blockquote>
												<div class="space-24"></div>

												<div class="embed-responsive embed-responsive-16by9">
													<video width="400" controls class="embed-responsive-item">
														<source
															
															src="<c:url value='/${MsbConstants.DANCE_URL}/${dance.submission_file_name}'/>"
															type="video/mp4">
														<source
															src="<c:url value='/${MsbConstants.DANCE_URL}/${dance.submission_file_name}'/>"
															type="video/ogg">
														<p>Your browser does not support HTML5 video.</p>
													</video>

												</div>


											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
							<c:if test="${dance.status eq 1 }">
								<div class="row alert alert-info" style="border-radius: 5px;">
								<form action="#" id="like-form">
								<input type="hidden" name="entry_username" value="${dance.user_name}">
								<input type="hidden" name="entry_id" value="${dance.id}">
								<input type="hidden" name="comp_type" value="Dance">
								<input type="hidden" name="username" id="fb_username">
								<input type="hidden" name="fb_login" id="fb_login">
								<button type="submit" class="col-md-2 social center" id="like">
									<i class="fa fa-thumbs-up fa-4x"></i></button>
									<h5 class="col-md-10 text-info" style="line-height: 45px">&nbsp;&nbsp;Click Here to Like This Entry</h5>
								</form>
									
								</div>
								<div class="space-12"></div>
								<div style="width: 100%;">
									<div class="alert alert-info center" style="border-radius: 5px;">
										<div class="row center">
										
										<div class=" col-md-10 col-md-offset-1">
										
											<a href="#" class="btn btn-primary col-md-12 col-xs-12  fb-icon" style="background-color: #365899;"><i class="fa fa-facebook"></i>&nbsp;&nbsp;Share on Facebook</a>
											
											<a href="#" class="btn btn-danger col-md-12 col-xs-12 gp-icon"><i class="fa fa-google-plus"></i>&nbsp;&nbsp;Share on Google +</a>
											
											<a href="#" class="btn btn-info col-md-12 col-xs-12 tw-icon" style="background-color: #1b95e0;"><i class="fa fa-twitter"></i>&nbsp;&nbsp; Share on Twitter</a>
											
											<a href="#" class="btn btn-warning col-md-12 col-xs-12 copy-icon"><i class="fa fa-lg fa-files-o"></i>&nbsp;&nbsp;Copy Link</a>
										</div>	
										</div>
									</div>
									<div class="space-12"></div>
									<hr>
								</div>
									<div class="widget-box">
								<div class="widget-header">
									<h4 class="widget-title lighter smaller">
										<i class="ace-icon fa fa-comment blue"></i> Comments
									</h4>
								</div>
			
								<div class="widget-body">
									<div class="widget-main no-padding">
									<c:choose>
												<c:when test="${sessionScope.Student !=null }">
														<form id="comment-form">
														<input type="hidden" name="entry_id" value="${dance.id}">
														<input type="hidden" name="entry_type" value="DANCE">
														<input type="hidden" name="user_id" value="${sessionScope.Student.id}">
														 <div class = "input-group">
												           <input type = "text" name="comment_text" class="form-control" placeholder="Write a comment" id="comment-text">
											               <span class = "input-group-btn">
											                  <button class = "btn btn-primary btn-sm" type = "submit" id="comment">
											                     <i class="ace-icon fa fa-comment"></i>
											                  </button>
											               </span>
											            </div>
														</form>
												</c:when>
												<c:otherwise>
												<a href="#"  onclick="loingToComment()">login</a> to comment
												</c:otherwise>
												</c:choose>		
										<div class="dialogs scroll" style="height: 350px;" id="comments-div">
										<c:choose>
										<c:when test="${not empty comments}">
										<c:forEach items="${comments}" var="comment"> 
										 <div class="itemdiv dialogdiv">
												<div class="body">
													<div class="time">
														<i class="ace-icon fa fa-calendar"></i> <span class="green">${comment.comment_date }</span>
													</div>
			
													<div class="name">
														<a href="#">${comment.user.username }</a>
													</div>
													<div class="text">${comment.comment_text }</div>
			
												
												</div>
											</div>
										</c:forEach>
												
												
										
										</c:when>
										<c:otherwise>
													<p id="no-comments">No comments..!be the first to comment</p>
										</c:otherwise>
											
										</c:choose>
															
								
										</div>
										
									</div>
									<!-- /.widget-main -->
								</div>
								<!-- /.widget-body -->
							</div>
								</c:if>
								<c:if test="${dance.status eq 0 }">
								<div class="alert alert-warning">
								<h5>This entry is invalid due to any of the following reason(<font color="blue">You can not share this entry</font>)</h5>
							<ul>
							<li>Copied from some where</li>
							<li>Duplicate entry, only first entry is valid</li>
							<li>Not realted to the given theme</li>
							</ul></div>
							</c:if>
							
							
							
							
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
	</div>
	<!-- /.main-container -->
	<span class="hide" id="copy-link">${pageContext.request.contextPath}/view/${client}/competition_dance/${dance.id}</span>
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
		src="<%=request.getContextPath()%>/assets/fbscript.js"></script>
		<script
		src="<%=request.getContextPath()%>/assets/clipboard.min.js"></script>

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

	<script type="text/javascript">
		$('document').ready(function() {
			$('[data-toggle=tooltip]').tooltip();
		});
	</script>
	<script>
	function loingToComment(){
		 var next="${requestScope['javax.servlet.forward.request_uri']}".replace('${pageContext.request.contextPath}',"");
			location.href="${pageContext.request.contextPath}/login?invalidsession=true&next="+next;
	}
	
	function getParameterByName(name) {
	    var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
	    return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
	}
	jQuery(document).ready(function($) {
		
		if (!!(getParameterByName('vote')) && getParameterByName('vote') == 'yes' ){
			voteEntry();
			}
		$("#like-form").submit(function(event) {
			event.preventDefault();
			voteEntry();
		});
		
		$("#comment-form").submit(function(event) {
			event.preventDefault();
			commentEntry();
		});

	});
	function voteEntryViaFB(email){
		$('#fb_username').val(email);
		$('#fb_login').val('yes');
		voteEntry();
	}
	function voteEntry() {
		var formData=$("#like-form").serialize();
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/validate-user-like",
			data : formData,
			timeout : 100000,
			beforeSend:function(){
			
				$('#like').prop('disabled',true);
			},
			success : function(data) {
				
				console.log("SUCCESS: ", data);
				
				if(data=='voted'){
					bootbox.alert("Thank you for liking the entry.");
					var points=$('#points').text();
					$('#points').text(parseInt(points)+2);
					var votes=$('#votes').text();
					$('#votes').text(parseInt(votes)+1);
				}else if(data=='already-voted'){
					bootbox.alert("You already voted,come again tomorrow. Thank you");
				}
				else if(data=='nouser'){
					bootbox.dialog({
						  message: "Student need to login to like an entry",
						  title: "Login Required",
						  buttons: {
						    success: {
						      label: "Login Now",
						      className: "btn-success",
						      callback: function() {
						    	  var next="${requestScope['javax.servlet.forward.request_uri']}".replace('${pageContext.request.contextPath}',"");
									location.href="${pageContext.request.contextPath}/login?invalidsession=true&next="+next+"?vote=yes";
						      }
						    },
						   
						    main: {
						      label: "Take me back",
						      className: "btn-info",
						      callback: function() {
						    	  show:false;
						      }
						    },
						    fb: {
							      label: "Like using Facebook",
							      className: "btn-primary",
							      callback: function() {
							    	  show:false;
						    			fb_login();
							      }
							    }
						  }
						});
					
				}
					
				$('#fb_username').val("");
				$('#fb_login').val("");
				$('#like').prop('disabled',false);
			},
			error : function(e) {
				console.log("ERROR: ", e);
				bootbox.alert(e);
				$('#like').prop('disabled',false);
			},
			done : function(e) {
				console.log("DONE");
				$('#like').prop('disabled',false);
				$('#fb_username').val("");
				$('#fb_login').val("");
			}
		});

	}
	function commentEntry() {
		
		if($('#comment-text').val() == undefined || $('#comment-text').val() == ""){
			
			bootbox.alert("Please write your comment first.");
		}else{
		var formData=$("#comment-form").serialize();
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/comment-entry",
			data : formData,
			timeout : 100000,
			beforeSend:function(){
			
				$('#comment').prop('disabled',true);
			},
			success : function(data) {
				
				console.log("SUCCESS: ", data);
				
				if(data=='success'){
					var date = new Date();
					var n = date.toDateString();
					var time = date.toLocaleTimeString();
					var commentString="<div class=\"itemdiv dialogdiv\">"+
					"<div class=\"body\">"+
					"<div class=\"time\">"+
					"	<i class=\"ace-icon fa fa-calendar\"></i> <span class=\"green\">"+n+" "+time+"</span>"+
					"</div>"+
					"<div class=\"name\">"+
						"<a href=\"#\">${sessionScope.Student.username }"+
					"</a></div>"+
					"<div class=\"text\">"+$('#comment-text').val()+"</div>"+
					"</div>"+
					"</div>";
					$('#no-comments').hide();
					$('#comments-div').append(commentString);
					$("#comment-form")[0].reset();
				}else if(data=='failure'){
					bootbox.alert("There is a techinical problem..! Please try again. Thank you");
				}
				else if(data=='nouser'){
					bootbox.dialog({
						  message: "Student need to login to comment an entry",
						  title: "Login Required",
						  buttons: {
						    success: {
						      label: "Login Now",
						      className: "btn-success",
						      callback: function() {
						    	  var next="${requestScope['javax.servlet.forward.request_uri']}".replace('${pageContext.request.contextPath}',"");
									location.href="${pageContext.request.contextPath}/login?invalidsession=true&next="+next;
						      }
						    },
						   
						    main: {
						      label: "Take me back",
						      className: "btn-info",
						      callback: function() {
						    	  show:false;
						      }
						    }
						   
						  }
						});
					
				}
					
				
				$('#comment').prop('disabled',false);
			},
			error : function(e) {
				console.log("ERROR: ", e);
				bootbox.alert(e);
				$('#comment').prop('disabled',false);
			},
			done : function(e) {
				console.log("DONE");
				$("#comment-form")[0].reset();
				$('#comment').prop('disabled',false);
				
			}
		});
		}
	}


	jQuery(document).ready(function($) {
	$('.fb-icon').click(function(){
		
		 window.open('http://www.facebook.com/sharer.php?u='+$('#copy-link').text(),'MySuperBrain Entry Share', 
				  'width=626,height=436');  
		return false;
	});
	$('.tw-icon').click(function(){
		window.open(
				  'https://twitter.com/share?url='+$('#copy-link').text(),'MySuperBrain Entry Share',
				  'width=626,height=436'); 
					return false;
				
	});
	$('.gp-icon').click(function(){
		window.open(
				'https://plus.google.com/share?url='+$('#copy-link').text(),'MySuperBrain Entry Share',
				  'width=626,height=436'); 
				return false;
				
	});
	


	});
	
$('.copy-icon').click(function(){
	
    
	clipboard.copy({
        'text/plain': $('#copy-link').text()
        
    }).then(
        function(){console.log('success'); },
        function(err){console.log('failure', err);
    });
});


</script>
</body>
</html>