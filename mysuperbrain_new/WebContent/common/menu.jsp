<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar responsive ace-save-state">
	<script type="text/javascript">
		try {
			ace.settings.loadState('sidebar')
		} catch (e) {
		}
	</script>

	
	&nbsp;&nbsp;<a class="btn btn-success btn-sm tooltip-success" href="" data-toggle="tooltip" data-placement="bottom" title="Switch to Student">
	<i class="ace-icon fa fa-user"></i>
	</a>
	
	<a class="btn btn-info btn-sm tooltip-info" href="" data-toggle="tooltip" data-placement="bottom" title="Switch to Parent">
	<i class="ace-icon fa fa-user-secret"></i>
	</a>
	
	<!-- #section:basics/sidebar.layout.shortcuts -->
	<a class="btn btn-warning btn-sm tooltip-warning" href="" data-toggle="tooltip" data-placement="bottom" title="Switch to Teacher">
	<i class="ace-icon fa fa-users"></i>
	</a>
	
	<a class="btn btn-danger btn-sm tooltip-error" href="" data-toggle="tooltip" data-placement="bottom" title="Switch to Visitor">
	<i class="ace-icon fa fa-street-view"></i>
	</a>

			<!-- /section:basics/sidebar.layout.shortcuts -->
	<!-- /.sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li class="active"><a
			href="<%=request.getContextPath()%>/"> <i
				class="menu-icon fa fa-home"></i> <span class="menu-text">
					Home </span>
		</a> <b class="arrow"></b></li>

		<li class=""><a
			href="<%=request.getContextPath()%>/competitions/mysuperbrain"> <i
				class="menu-icon fa fa-list"></i> <span class="menu-text">
					Competitions </span>
		</a> <b class="arrow"></b></li>

		<li class=""><a
			href="<%=request.getContextPath()%>/tests/mysuperbrain"> <i
				class="menu-icon fa fa-thumbs-up"></i> <span class="menu-text">
					Tests </span>
		</a> <b class="arrow"></b></li>

		
		<li class=""><a href="#">
				<i class="menu-icon fa fa-users"></i> <span
				class="menu-text"> Debate</span><%-- <img alt=""
					src="<%=request.getContextPath()%>/img/new.gif"> --%>
		</a> <b class="arrow"></b></li>
		
		
	</ul>
	<!-- /.nav-list -->

	<!-- #section:basics/sidebar.layout.minimize -->
	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i id="sidebar-toggle-icon"
			class="ace-icon fa fa-angle-double-left ace-save-state"
			data-icon1="ace-icon fa fa-angle-double-left"
			data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>

	<!-- /section:basics/sidebar.layout.minimize -->
</div>
