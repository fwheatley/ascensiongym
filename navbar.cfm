<!-- Navigation bar starts -->

<div class="navbar bs-docs-nav" role="banner">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
		</div>

		<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
		<ul class="nav navbar-nav">
			<cfoutput>
			<li><a href="#request.homeURL#/index.cfm">Home</a></li>
			<!-- Refer Bootstrap navbar doc -->
	

			<li class="dropdown">
				<a href="" class="dropdown-toggle" data-toggle="dropdown">Athletics<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#request.homeURL#/fishfry">Fish Fry</a></li>
					<li><a href="#request.homeURL#/gym">Gym Admin</a></li>
				</ul>
			</li>
               
						
			<!---<li><a href="#request.homeURL#/contactus.cfm">Contact</a></li>--->
			</cfoutput>
		</ul>
		</nav>
	</div>
</div>
<!-- Navigation bar ends -->