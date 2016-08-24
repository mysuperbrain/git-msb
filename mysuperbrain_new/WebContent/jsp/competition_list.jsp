<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.msb.constants.MsbConstants" %>	
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
<title>Competitions List | MySuperBrain.com</title>

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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/dataTables.bootstrap.css" />
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

<style type="text/css">
.dataTables_wrapper .row:first-child {
background-color: #FFF;
}
.dataTables_wrapper .row:first-child+.dataTable {
   border-top: 0px;
   border-bottom: 0px;
}
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
   border-top: 0px;
}
</style>

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
							
						<li class="active">Competition List</li>
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
								List of competitions <small> <i
									class="ace-icon fa fa-angle-double-right"></i> Please select
									your category below before you proceed to participating
								</small>
							</h1>
						</div>
						<!-- /.page-header -->
						<c:if test="${param.success eq false }">
						<div class="row">
						<div class="col-md-12">
									<div class="alert alert-danger"> Invalid Category <a href="${pageContext.servletContext.contextPath}/competitions">Click here to proceed</a></div>
									</div></div>
								</c:if>	
								
						<div class="row">
						
							<div class="col-md-9">
							
								<div class="col-md-6">
									<div class="funkyradio">
										<div class="funkyradio-info">
											<input type="radio" name="student-category" id="kids-radio"
												value="kids" /> <label for="kids-radio">Kids (1<sup>st</sup>
												to 3<sup>rd</sup> Grades)
											</label>

										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="funkyradio">
										<div class="funkyradio-success">
											<input type="radio" name="student-category" id="junior-radio"
												value="junior" /> <label for="junior-radio"> Junior
												(4<sup>th</sup> to 6<sup>th</sup> Grades)
											</label>

										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="funkyradio">
										<div class="funkyradio-primary">
											<input type="radio" name="student-category" id="senior-radio"
												value="senior" /> <label for="senior-radio"> Senior
												(7<sup>th</sup> to 9<sup>th</sup> Grades)
											</label>

										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="funkyradio">
										<div class="funkyradio-warning">
											<input type="radio" name="student-category"
												id="ssenior-radio" value="ssenior" /> <label
												for="ssenior-radio"> Super Senior (10<sup>th</sup>
												to 12<sup>th</sup> Grades)
											</label>

										</div>
									</div>
								</div>
								
								<div id="kids" class="toHide col-md-12" style="display: none;">

									<div class="table-responsive">
										<table id="kids-list" class="table table-condensed"
											style="border-bottom: none;">
											<thead>
												<tr role="row" style="display: none;">

													<th></th>

												</tr>
											</thead>

											<tbody>
												<c:forEach items="${competitionList}" var="competition">
													
													 
													<c:if test="${competition.user_segment eq MsbConstants.KIDS_SEGMENT }">
														<tr>
															<td>
																<div class="well">
																	<div class="media">

																		<div class="media-body">
																			<h4 class="media-heading">${competition.title }</h4>
																			<p class="text-right">By
																				${competition.competition_by }</p>
																			<p>${competition.description }</p>
																			<hr>
																			<ul class="list-inline list-unstyled">

																				<li><strong>Organised By:</strong>&nbsp;${competition.competition_by }</li>

																				<li>|</li>
																				<li><strong>Total Visits:</strong>&nbsp;${competition.no_of_visits }</li>


																				<li>|</li>
																				<li><strong>Total Entries:</strong>&nbsp;${competition.no_of_entries }</li>

																			</ul>
																			
																			
																			<hr>
																			<div class="clearfix">
																			<c:choose>
																		        <c:when test="${competition.is_competition_closed eq true}">
																		            <a
																				href="#"
																				class="btn btn-danger btn-md btn-rd pull-right"> <span
																				class="bigger-110">Competition Closed</span> <i
																				class="ace-icon fa fa-times icon-on-right"></i>
																			</a>
																		        </c:when>
																		
																		        <c:otherwise>
																		        	<c:if test="${competition.comp_category eq MsbConstants.WRITING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_text/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.POETRY_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_text/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.PAINTING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_paint/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.PHOTOGRAPHY_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_photography/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.DANCING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_dance/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.SINGING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_singing/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.DIALOGUE_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_dialogue/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		            
																		        </c:otherwise>
																		    </c:choose>
																			
																			
																		</div>
																		</div>


																	</div>
																</div>
															</td>
														</tr>
													</c:if>
												</c:forEach>

											</tbody>
										</table>

									</div>
								</div>
								<div id="junior" class="toHide col-md-12" style="display: none;">

									<div class="table-responsive">
										<table id="junior-list" class="table table-condensed"
											style="border-bottom: none;">
											<thead>
												<tr role="row" style="display: none;">

													<th></th>

												</tr>
											</thead>

											<tbody>
												<c:forEach items="${competitionList}" var="competition">

													<c:if test="${competition.user_segment eq MsbConstants.JUNIOR_SEGMENT }">
														<tr>
															<td>
																<div class="well">
																	<div class="media">

																		<div class="media-body">
																			<h4 class="media-heading">${competition.title }</h4>
																			<p class="text-right">By
																				${competition.competition_by }</p>
																			<p>${competition.description }</p>
																			<hr>
																			<ul class="list-inline list-unstyled">

																				<li><strong>Organised By:</strong>&nbsp;${competition.competition_by }</li>

																				<li>|</li>
																				<li><strong>Total Visits:</strong>&nbsp;${competition.no_of_visits }</li>


																				<li>|</li>
																				<li><strong>Total Entries:</strong>&nbsp;${competition.no_of_entries }</li>

																			</ul>
																			<hr>
																			<div class="clearfix">
																			<c:choose>
																		        <c:when test="${competition.is_competition_closed eq true}">
																		            <a
																				href="#"
																				class="btn btn-danger btn-md btn-rd pull-right"> <span
																				class="bigger-110">Competition Closed</span> <i
																				class="ace-icon fa fa-times icon-on-right"></i>
																			</a>
																		        </c:when>
																		
																		        <c:otherwise>
																		            <c:if test="${competition.comp_category eq MsbConstants.WRITING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_text/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.POETRY_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_text/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.PAINTING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_paint/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.PHOTOGRAPHY_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_photography/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.DANCING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_dance/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.SINGING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_singing/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.DIALOGUE_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_dialogue/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        </c:otherwise>
																		    </c:choose>
																		</div>
																		</div>


																	</div>
																</div>
															</td>
														</tr>
													</c:if>
												</c:forEach>

											</tbody>
										</table>

									</div>
								</div>
								<div id="senior" class="toHide col-md-12" style="display: none;">

									<div class="table-responsive">
										<table id="senior-list" class="table table-condensed"
											style="border-bottom: none;">
											<thead>
												<tr role="row" style="display: none;">

													<th></th>

												</tr>
											</thead>

											<tbody>
												<c:forEach items="${competitionList}" var="competition">
															
													<c:if test="${competition.user_segment eq MsbConstants.SENIOR_SEGMENT}">
														<tr>
															<td>
																<div class="well">
																	<div class="media">

																		<div class="media-body">
																			<h4 class="media-heading">${competition.title }</h4>
																			<p class="text-right">By
																				${competition.competition_by }</p>
																			<p>${competition.description }</p>
																			<hr>
																			<ul class="list-inline list-unstyled">

																				<li><strong>Organised By:</strong>&nbsp;${competition.competition_by }</li>

																				<li>|</li>
																				<li><strong>Total Visits:</strong>&nbsp;${competition.no_of_visits }</li>


																				<li>|</li>
																				<li><strong>Total Entries:</strong>&nbsp;${competition.no_of_entries }</li>

																			</ul>
																			<hr>
																			<div class="clearfix">
																			<c:choose>
																		        <c:when test="${competition.is_competition_closed eq true}">
																		            <a
																				href="#"
																				class="btn btn-danger btn-md btn-rd pull-right"> <span
																				class="bigger-110">Competition Closed</span> <i
																				class="ace-icon fa fa-times icon-on-right"></i>
																			</a>
																		        </c:when>
																		
																		        <c:otherwise>
																		            <c:if test="${competition.comp_category eq MsbConstants.WRITING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_text/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.POETRY_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_text/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.PAINTING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_paint/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.PHOTOGRAPHY_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_photography/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.DANCING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_dance/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.SINGING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_singing/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.DIALOGUE_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_dialogue/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        </c:otherwise>
																		    </c:choose>
																		</div>
																		</div>


																	</div>
																</div>
															</td>
														</tr>
													</c:if>
												</c:forEach>

											</tbody>
										</table>

									</div>
								</div>
								<div id="ssenior" class="toHide col-md-12"
									style="display: none;">

									<div class="table-responsive">
										<table id="ssenior-list" class="table table-condensed"
											style="border-bottom: none;">
											<thead>
												<tr role="row" style="display: none;">

													<th></th>

												</tr>
											</thead>

											<tbody>
												<c:forEach items="${competitionList}" var="competition">

													<c:if test="${competition.user_segment eq MsbConstants.SUPER_SENIOR_SEGMENT}">
														<tr>
															<td>
																<div class="well">
																	<div class="media">

																		<div class="media-body">
																			<h4 class="media-heading">${competition.title }</h4>
																			<p class="text-right">By
																				${competition.competition_by }</p>
																			<p>${competition.description }</p>
																			<hr>
																			<ul class="list-inline list-unstyled">

																				<li><strong>Organised By:</strong>&nbsp;${competition.competition_by }</li>

																				<li>|</li>
																				<li><strong>Total Visits:</strong>&nbsp;${competition.no_of_visits }</li>


																				<li>|</li>
																				<li><strong>Total Entries:</strong>&nbsp;${competition.no_of_entries }</li>

																			</ul>
																			<hr>
																			<div class="clearfix">
																			<c:choose>
																		        <c:when test="${competition.is_competition_closed eq true}">
																		            <a
																				href="#"
																				class="btn btn-danger btn-md btn-rd pull-right"> <span
																				class="bigger-110">Competition Closed</span> <i
																				class="ace-icon fa fa-times icon-on-right"></i>
																			</a>
																		        </c:when>
																		
																		        <c:otherwise>
																		            <c:if test="${competition.comp_category eq MsbConstants.WRITING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_text/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.POETRY_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_text/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.PAINTING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_paint/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.PHOTOGRAPHY_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_photography/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.DANCING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_dance/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.SINGING_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_singing/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        	<c:if test="${competition.comp_category eq MsbConstants.DIALOGUE_COMPETITION }">
																		        	 <a
																				href="${pageContext.servletContext.contextPath}/user/${competition.competition_by }/competition_dialogue/${competition.comp_id }"
																				class="btn btn-primary btn-md btn-rd pull-right"> <span
																				class="bigger-110">Proceed</span> <i
																				class="ace-icon fa fa-arrow-right icon-on-right"></i>
																			</a>
																		        	</c:if>
																		        </c:otherwise>
																		    </c:choose>
																		</div>
																		</div>


																	</div>
																</div>
															</td>
														</tr>
													</c:if>
												</c:forEach>

											</tbody>
										</table>

									</div>
								</div>
							</div>
							
							<div class="col-md-3">
				
				<div class="widget-box widget-color-orange">
					<div class="widget-header widget-header-flat">
						<h4 class="widget-title smaller">Premium Services</h4>
					</div>

					<div class="widget-body">
						<div class="widget-main">


							<div class="row">
								<div class="col-xs-12">
									<blockquote>
										<p class="text-info" style="font-size: small;">The
											students should get the best resources at the cheapest price
											possible. We, therefore, provide free accounts to any student
											registering on the website. However, there are certain
											features that extremely useful for the students, but cannot
											be provided free because of the effort and money that is
											needed to get those features.</p>

										<small> <cite title="Source Title">
												MySuperBrain.com</cite>
										</small>
									</blockquote>
								</div>
							</div>

							<hr>
							<h4>Features:</h4>
							<ul class="list-unstyled spaced">
								<li><i class="ace-icon fa fa-check bigger-110 green"></i>
									Blog</li>

								<li><i class="ace-icon fa fa-check bigger-110 green"></i>
									Analytics - Quiz and Competition</li>
								<li><i class="ace-icon fa fa-check bigger-110 green"></i>
									Ask an Expert</li>
								<li><i class="ace-icon fa fa-check bigger-110 green"></i>
									EXALT Magazine</li>
								<li><i class="ace-icon fa fa-check bigger-110 green"></i>
									Parent Account</li>

								<li><i class="ace-icon fa fa-check bigger-110 green"></i>
									Ad free pages</li>
								<li><i class="ace-icon fa fa-check bigger-110 green"></i>
									Personalized Expert report every month</li>
							</ul>
							<div align="right">
							<a href="<%=request.getContextPath() %>/premium" class="btn btn-info btn-md" target="_blank">Know More...</a></div>
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

	<script
		src="<%=request.getContextPath()%>/assets/js/dataTables/jquery.dataTables.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/dataTables/jquery.dataTables.bootstrap.js"></script>
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

							$("[name=student-category]").click(function() {

								$('.toHide').hide();
								$("#" + $(this).val()).show('slow');
							});

							var oTable=$('#kids-list,#junior-list,#senior-list,#ssenior-list')
									.dataTable({
										"iDisplayLength" : 3,
										"bFilter" : false,               
										"bLengthChange": false,
										"oLanguage": {
										"sEmptyTable": "No Competitions Listed Under This Category"
										}
							});
							

						});
	</script>
</body>
</html>