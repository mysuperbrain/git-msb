<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


</head>
<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<jsp:include page="/common/header.jsp"></jsp:include>
	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
		<jsp:include page="/common/menu.jsp"></jsp:include>
		<div class="main-content">
			<!-- #section:basics/content.breadcrumbs -->
			<div class="page-content">
				<!-- #section:settings.box -->
				<div class="page-content-area">
					<div class="row">

						<div class="space-6"></div>
						<div class="col-md-10 col-md-offset-1">
							<div id="user-profile-3" class="user-profile row">
								<div class="well well-sm">
									<div class="inline middle blue bigger-110">Your profile
										is ${profilecp }% complete</div>
									&nbsp; &nbsp; &nbsp;
									<div style="width: 200px;"
										class="inline middle no-margin progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											style="width:${profilecp }%"></div>
									</div>
								</div>
								<c:if test="${param.success eq true }">
									<div class="alert alert-success"> Updated Successfully</div>
								</c:if>	
								
								<a href="<%=request.getContextPath()%>/user/profile"
									class="btn btn-info btn-bold pull-right"><i
									class="ace-icon fa fa-user bigger-130"></i>&nbsp;Go to Profile
									&nbsp;</a>
									<div class="space"></div>
								<h4 class="header blue bolder smaller">Update your detils</h4>

								<div class="col-md-4">
									<div id="edit-ppicture" class="profile-picture well">
										<form action="<%=request.getContextPath()%>//user/update-profile-picture"
											id="imageForm" enctype="multipart/form-data" method="POST" autocomplete="off">
											<h4 class="header blue bolder smaller">Profile
												Picture</h4>
											<div class="space-10"></div>
											<%-- <span class="profile-picture">
													<img id="profilepic" class="editable img-responsive" alt="Profile Pic" src="<%=request.getContextPath()%>/resources/DisplayProfileImage"></img>
												</span> --%>
											<img alt="Profile Picture"
												src="<%=request.getContextPath()%>/resources/DisplayProfileImage"
												class="img-circle img-thumbnail" id="profilepic">
												
												
											<div class="space-24"></div>
											<div class="clearfix form-actions">
												<div class="col-md-12">
												<button class="col-md-6 btn btn-success btn-md" type="submit" disabled="disabled" id="photo-change">
														<i class="ace-icon fa fa-save"></i> Save
													</button>
													<span class="fileUpload btn btn-primary">
												    <span><i class="ace-icon fa fa-paint-brush"></i>&nbsp;Change</span>
												    <input type="file" class="upload" name="photo" id="photo" />
												</span>
													<div class="error-div" style="color: red;font-weight: bold;"></div>


												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="col-md-8">
									<div id="edit-basic" class="personal-details well">
										<form action="<%=request.getContextPath()%>/user/update-userdetails"
											id="personal-form" method="post" class="form-horizontal" autocomplete="off">
											<h4 class="header blue bolder smaller">Personal Details</h4>
											<div class="row">
												<div class="vspace-12-sm"></div>
												<div class="col-xs-12 col-sm-8">
													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right"
															for="form-field-username">Firstname</label>

														<div class="col-sm-8">
															<input class="col-xs-12 col-sm-10" type="text"
																id="form-field-username" placeholder="Firstname"
																name="name" value="${user.name }">
														</div>
													</div>

													<div class="space-4"></div>

													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right"
															for="form-field-name">Middle &amp; Last Name</label>

														<div class="col-sm-8">

															<input class="input-small" type="text"
																id="form-field-middle" placeholder="Middle Name"
																value="${user.mname }" name="mname"> <input
																class="input-small" type="text" id="form-field-last"
																placeholder="Last Name" value="${user.lname }"
																name="lname">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right"
															for="form-field-dob">Date Of Birth</label>

														<div class="col-sm-8">
															<input class="input-medium date-picker" id="dob"
																type="text" data-date-format="dd/MM/yyyy"
																placeholder="dd/MM/yyyy" name="dob"
																value="<fmt:formatDate pattern="dd/MM/yyyy" value="${user.dob}"/>"> <i
																class="fa fa-calendar bigger-110"></i>

														</div>
													</div>

													<div class="space-4"></div>
													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right"
															for="form-field-standard">Class Studying</label>

														<div class="col-sm-8">
														<%-- <input type="hidden" id="standard-value" value="${user.standard }"> --%>
															<select class="col-xs-12 col-sm-10"
																id="standard" name="standard">
																<option value="" disabled="disabled">Select
																	Class</option>
																<option value="First">First</option>
																	<option value="Second">Second </option>
																	<option value="Three">Third</option>
																	<option value="Four">Fourth</option>
																	<option value="Five">Fifth</option>
																	<option value="Six">Sixth</option>
																	<option value="Seven">Seventh</option>
																	<option value="Eight">Eighth</option>
																	<option value="Nine">Ninth</option>
																	<option value="Ten">Tenth</option>
																	<option value="Eleven">Eleventh</option>
																	<option value="Twelve">Twelfth</option>
															</select>

														</div>
													</div>


													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right"
															for="form-field-role">Role Model</label>

														<div class="col-sm-8">

															<input class="col-xs-12 col-sm-10" type="text"
																id="form-field-role" placeholder="Role Model"
																name="rolemodel" value="${user.rolemodel }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right"
															for="form-field-aboutme">About me</label>

														<div class="col-sm-8">

															<textarea id="form-field-aboutme" name="aboutme"
																cols="40" rows="3">${user.aboutme }</textarea>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right"
															for="form-field-achievements">Achievements</label>

														<div class="col-sm-8">

															<textarea id="form-field-achievements"
																name="achievements" cols="40" rows="3">${user.achievements }</textarea>
														</div>
													</div>
													
												</div>
											</div>
											<div class="clearfix form-actions">
												<div class="col-md-offset-3 col-md-9 center">
													<button class="btn btn-success" type="submit" id="personal-submit" disabled="disabled">
														<i class="ace-icon fa fa-check"></i> Save
													</button>


												</div>
											</div>
											
										</form>
									</div>

									<div id="edit-contact" class="contact-details well">
										<h4 class="header blue bolder smaller">Contact Details</h4>
										<div class="space-10"></div>
										<form action="<%=request.getContextPath()%>/user/update-userdetails"
											id="contact-form" method="post" class="form-horizontal" autocomplete="off">


											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-mail">Mail</label>

												<div class="col-sm-8">

													<input class="col-xs-12 col-sm-10" type="text"
														id="form-field-mail" placeholder="Mail" name="mail"
														value="${user.mail }">
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-phone">Phone</label>

												<div class="col-sm-8">

													<input class="col-xs-12 col-sm-10" type="text"
														id="form-field-phone" placeholder="Phone" name="phone"
														value="${user.phone }">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-school">School</label>

												<div class="col-sm-8">

													<input class="col-xs-12 col-sm-10" type="text"
														id="form-field-school" placeholder="School" name="school"
														value="${user.school }">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-country">Country</label>

												<div class="col-sm-8">

													<select class="col-xs-12 col-sm-10" id="country"
														name="country">

													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-state">State</label>

												<div class="col-sm-8">

													<select class="col-xs-12 col-sm-10" id="state" name="state">

													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-city">City</label>

												<div class="col-sm-8">

													<input class="col-xs-12 col-sm-10" type="text"
														id="form-field-city" placeholder="City" name="city"
														value="${user.city }">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-teacher">Teacher Name</label>

												<div class="col-sm-8">

													<input class="col-xs-12 col-sm-10" type="text"
														id="form-field-teacher" placeholder="teacher name"
														name="teacher_name" value="${user.teacher_name }">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-teacher">Teacher Mail</label>

												<div class="col-sm-8">

													<input class="col-xs-12 col-sm-10" type="text"
														id="form-field-teacher" placeholder="teacher mail"
														name="teacher_mail" value="${user.teacher_mail }">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-guardian">Guardian Name</label>

												<div class="col-sm-8">

													<input class="col-xs-12 col-sm-10" type="text"
														id="form-field-guardian" placeholder="guardian name"
														name="guardian" value="${user.guardian }">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label no-padding-right"
													for="form-field-guardian">Guardian Mail</label>

												<div class="col-sm-8">

													<input class="col-xs-12 col-sm-10" type="text"
														id="form-field-guardian" placeholder="guardian mail"
														name="guardian_mail" value="${user.guardian_mail }">
												</div>
											</div>
											<div class="clearfix form-actions">
												<div class="col-md-offset-3 col-md-9 center">
													<button class="btn btn-success" type="submit" id="contact-submit" disabled="disabled">
														<i class="ace-icon fa fa-check"></i> Save
													</button>

												</div>
											</div>
											
										</form>
									</div>
								</div>
								<!-- /.span -->
							</div>
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content-area -->
			</div>
			<!-- /.page-content -->
		</div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
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
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.js"></script>

	<!-- page specific plugin scripts -->
	
	<script src="<%=request.getContextPath()%>/assets/js/jquery-ui.js"></script>
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
	<script type="text/javascript">
		$('document').ready(function() {
			populateCountries("country", "state");
			$('#country option:contains("${user.country }")').prop('selected',true);
			populateStates("country", "state");
			$('#state option:contains("${user.state }")').prop('selected',true);
			$('#standard').val('${user.standard }');
			
			 function readURL(input) {
			        if (input.files && input.files[0]) {
			            var reader = new FileReader();

			            reader.onload = function (e) {
			                $('#profilepic').attr('src', e.target.result);
			                $('#photo-change').attr('disabled',false);
			            }

			            reader.readAsDataURL(input.files[0]);
			        }
			    }

			    $("#photo").change(function () {
			        readURL(this);
			    });
			    $('#personal-form input[type=text],textarea').on('keyup',function() {
			        
			            $('#personal-submit').attr('disabled' , false);
			       
			    });
			    $('#personal-form select').on('change',function() {
			       
			            $('#personal-submit').attr('disabled' , false);
			       
			    });
			    $('#contact-form input[type=text],textarea').on('keyup',function() {
			        
		            $('#contact-submit').attr('disabled' , false);
		       
			    });
			    $('#contact-form select').on('change',function() {
			       
			            $('#contact-submit').attr('disabled' , false);
			       
			    });
			    function getWordCount(wordString) {
			    	  var words = wordString.split(" ");
			    	  words = words.filter(function(words) { 
			    	    return words.length > 0
			    	  }).length;
			    	  return words;
			    	}

			    	
			    	$.validator.addMethod("minwordCount",
			    	   function(value, element, params) {
			    	      var count = getWordCount(value);
			    	      if(count >= params[0]) {
			    	         return true;
			    	      }
			    	   },
			    	   "A minimum of {0} words is required here."
			    	);
			    	$.validator.addMethod("maxwordCount",
					    	   function(value, element, params) {
					    	      var count = getWordCount(value);
					    	      if(count <= params[0]) {
					    	         return true;
					    	      }
					    	   },
					    	"A maximum of {0} words allowed here."
					    	);
			    $.validator.addMethod(
			    	    "myformat",
			    	    function(value, element) {
			    	        // put your own logic here, this is just a (crappy) example
			    	        return value.match(/^\d\d?\/\d\d?\/\d\d\d\d$/);
			    	    },
			    	    "Please enter a date in the format dd/MM/yyyy."
			    	);
			    $.validator.addMethod('filesize', function (value, element, param) {
			        return this.optional(element) || (element.files[0].size <= param)
			    },'File size must be less than {0} KB');
			    
			    $('#imageForm').validate({	
					debug: true,
					errorElement : 'div',
					errorLabelContainer : '.error-div',
					focusInvalid : true,
					rules : {
						photo:{
							required:true,
							extension: "jpg,jpeg,png",
			                filesize: 300*1024
						}
			    		
					},
					messages : {
						photo:{
							
							extension: "Please select a png,jpg or jpeg file only",
							filesize:"File size must be less than 300KB"
			                
						}				
					},
					submitHandler : function(form) {
						form.submit();
						
					}

				});
			    $('#personal-form').validate({	
			    	
					debug: true,
					errorElement : 'div',
					errorClass : 'col-md-12 error-div',
					focusInvalid : true,
					rules : {
						name:{
							required:true,
							minlength:8,
							maxlength:15
						},
			    		dob:{
			    			required:true,
			    			myformat:true
			    		},
			    		standard:{
			    			required:true
			    		},
			    		mname:{
			    			minlength:1,
			    			maxlength:15
			    		},
			    		lname:{
			    			minlength:1,
			    			maxlength:15
			    		},
			    		rolemodel:{
			    			minlength:8,
			    			maxlength:80
			    		},
			    		aboutme:{
			    			
			    			maxwordCount:['25']
			    		},
			    		achievements:{
			    			
			    			maxwordCount:['25']
			    		}

					},
					messages : {
						
						
						
					},
					submitHandler : function(form) {
						form.submit();
						
					}

				});
			    $('#contact-form').validate({	
					debug: true,
					errorElement : 'div',
					errorClass : 'col-md-12 error-msg',
					focusInvalid : true,
					rules : {
						mail:{
							required:true,
							email:true
						},
			    		phone:{
			    			required:true,
			    			digits:true
			    		},
			    		school:{
			    			required:true,
			    			minlength:3,
			    			maxlength:80
			    		},
			    		country:{
			    			required:true
			    		},
			    		state:{
			    			required:true
			    		},
			    		city:{
			    			required:true,
			    			minlength:3,
			    			maxlength:80
			    		},
			    		teacher_name:{
			    			minlength:3,
			    			maxlength:15
			    		},
			    		teacher_mail:{
			    			
			    			email:true
			    		},
			    		guardian:{
			    			
							minlength:3,
			    			maxlength:15
			    		},
			    		guardian_mail:{
			    			
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
