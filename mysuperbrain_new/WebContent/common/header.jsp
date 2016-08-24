<!-- #section:basics/navbar.layout -->
<%@page import="com.msb.model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
		<div id="navbar" class="navbar navbar-default ace-save-state" style="background-color: #6fb3e0;">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="<%=request.getContextPath() %>/" class="navbar-brand">
						<small>
							<img style="max-width: 140px; margin-top: -7px;"
								src="<%=request.getContextPath()%>/img/logo.png" />
						</small>
					</a>

					<!-- /section:basics/navbar.layout.brand -->

					<!-- #section:basics/navbar.toggle -->

					<!-- /section:basics/navbar.toggle -->
				</div>
			
				<c:if test="${not empty Student}">
			
				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue"><a data-toggle="dropdown" href="#"
					class="dropdown-toggle"> <img class="nav-user-photo"
						src="<%=request.getContextPath()%>/resources/DisplayProfileImage"
						alt="Jason's Photo" /> <span class="user-info"> <small>Welcome,</small>
							${Student.username}
					</span> <i class="ace-icon fa fa-caret-down"></i>
				</a>

					<ul
						class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
						<li><a
							href="<%=request.getContextPath()%>/user/profile">
								<i class="ace-icon fa fa-user"></i> Profile
						</a></li>
						<li><a
							href="<%=request.getContextPath()%>/user/changepwd">
								<i class="ace-icon fa fa-key"></i> Change Password
						</a></li>
						<li><a
							href="<%=request.getContextPath()%>/logout"> <i
								class="ace-icon fa fa-power-off"></i> Logout
						</a></li>
					</ul></li>


				
				<!-- /section:basics/navbar.user_menu -->
			</ul>
			
		</div></c:if>
		<c:if test="${empty Student}">
		<a class="btn btn-success pull-right" style="margin-top: 25px;margin-left: 15px;"
			href="<%=request.getContextPath()%>/login">Login
			</a>
			<a class="btn btn-success pull-right" style="margin-top: 25px;"
			href="<%=request.getContextPath()%>/register">Register</a></c:if>
				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>
		<noscript>
  
  <meta http-equiv="refresh" content="0.0;url=<%=request.getContextPath()%>/common/nojs.jsp">
</noscript>