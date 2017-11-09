<cfparam name="variables.page" default="" >

<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li>
				<div align="center"><img src="/img/logo_sm.png" width="125px" height="105px" ></div>
			</li>
			<li>&nbsp;</li>
			<li>
				<a<cfif variables.page EQ "index.cfm"> class="active"</cfif> href="index.cfm"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
			</li>
			<li>
				<a<cfif variables.page EQ "citations.cfm"> class="active"</cfif> href="gate.cfm"><i class="fa fa-dollar fa-fw"></i> Gate</a>
			</li>
			<li>
				<a<cfif variables.page EQ "tables.cfm"> class="active"</cfif> href="concession.cfm"><i class="fa fa-cart-plus fa-fw"></i> Concession</a>
			</li>
		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->