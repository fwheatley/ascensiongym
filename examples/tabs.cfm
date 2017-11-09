<cfset variables.sTitle = "Tabs">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
	<div class="container">

		<h2>Tabs</h2>
		<p class="big grey">Something Goes Here.</p>
		<hr />

		<div class="row">
			<div class="col-md-4 col-sm-4">

				<h4>What We Do In Free Time?</h4>
				<p>Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
				<a href="#">Check out everything <i class="icon-double-angle-right"></i> </a>
				<hr />
			</div>

			<div class="col-md-8 col-sm-8">
				<ul id="myTab" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Home</a></li>
					<li><a href="#profile" data-toggle="tab">Profile</a></li>
					<li><a href="#cont" data-toggle="tab">Content</a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="home">

						<iframe width="560" height="315" src="http://www.youtube.com/embed/FIfbghHdG1s" frameborder="0" allowfullscreen></iframe>
					</div>
					<div class="tab-pane fade" id="profile">
						<a href="#"><img src="img/photos/6.jpg" alt="" class="img-responsive"/></a>
					</div>
					
					<div class="tab-pane fade" id="cont">
						<h4>Williamsburg banh mi whatever</h4>
						<p> Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p><hr />
						<h6>DIY synth PBR banksy </h6>
						<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="border"></div>

		<!-- Product & links starts -->

		<div class="prod">
			<div class="row">
				<div class="col-md-4">
					<div class="home-links">
						<div class="col-l">
							<h5>Downloads</h5>
							<ul>
								<li><a href="#">Linux 8</a></li>
								<li><a href="#">PlayStation</a></li>
								<li><a href="#">GTalk</a></li>
								<li><a href="#">Google Search</a></li>
								<li><a href="#">Linux Phone</a></li>
							</ul>
						</div>
						<div class="col-r">
							<h5>Support</h5>
							<ul>
								<li><a href="#">Linux Update</a></li>
								<li><a href="#">PlayStation</a></li>
								<li><a href="#">GTalk</a></li>
								<li><a href="#">Google Search</a></li>
								<li><a href="#">Linux Phone</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-8"> 
					<div class="home-product">
						<div class="home-prod-img" id="s1">
							<img src="img/photos/s1.jpg" class="img-responsive" alt=""/>
							<img src="img/photos/s2.jpg" class="img-responsive" alt=""/>
							<img src="img/photos/s3.jpg" class="img-responsive" alt=""/>
						</div>
						<h3>Canonical Linux 8</h3>
						<p>Aliquam ut feugiat ante. Curabitur justo aliquam. Maecenas turpis urna, eleifend et venenatis eget, ultricies quis urna. Aliquam ut feugiat ante. Curabitur justo aliquam. Aliquam ut feugiat ante. Curabitur justo aliquam. </p>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>

		<!-- Product & links ends --> 

	</div>
</div>

<cfinclude template="footer.cfm" >
