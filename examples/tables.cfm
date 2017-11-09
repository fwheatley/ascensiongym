<cfset variables.sTitle = "Tables">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
	<div class="container">

		<h2>Tables</h2>
		<p class="big grey">Something Goes Here.</p>
		<hr />

		<div class="row">

			<div class="col-md-12">

				<table class="table table-striped table-bordered table-hover">
					<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Location</th>
						<th>Age</th>
						<th>Education</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>1</td>
						<td>Ashok</td>
						<td>India</td>
						<td>23</td>
						<td>B.Tech</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Kumarasamy</td>
						<td>USA</td>
						<td>22</td>
						<td>BE</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Babura</td>
						<td>UK</td>
						<td>43</td>
						<td>PhD</td>
					</tr>
					<tr>
						<td>4</td>
						<td>Ravi Kumar</td>
						<td>China</td>
						<td>73</td>
						<td>PUC</td>
					</tr>
					<tr>
						<td>5</td>
						<td>Santhosh</td>
						<td>Japan</td>
						<td>43</td>
						<td>M.Tech</td>
					</tr> 
					<tr>
						<td>6</td>
						<td>Ashok</td>
						<td>India</td>
						<td>23</td>
						<td>B.Tech</td>
					</tr>
					<tr>
						<td>7</td>
						<td>Kumarasamy</td>
						<td>USA</td>
						<td>22</td>
						<td>BE</td>
					</tr>
					
					</tbody>
				</table>

				<ul class="pagination pull-right">
					<li><a href="#">&laquo;</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>

				<div class="clearfix"></div>

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