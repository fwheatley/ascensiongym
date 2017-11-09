<cfset variables.sTitle = "Contact Us">

<cfinclude template="header.cfm" >
<cfinclude template="navbar.cfm" >

<div class="content">
	<div class="container">

		<h2>Contact Us</h2>
		<hr />
            
		<div class="contact">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<!-- Google maps -->
					<div class="gmap">
						<!-- Google Maps. Replace the below iframe with your Google Maps embed code -->
						<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=4600+Lynnbrook+Drive+Louisville,+KY+40220+(502)+451-3860&amp;aq=&amp;sll=38.188805,-85.67677&amp;sspn=0.933653,2.113495&amp;ie=UTF8&amp;hq=(502)+451-3860&amp;hnear=4600+Lynnbrook+Dr,+Louisville,+Kentucky+40220&amp;t=m&amp;cid=9389519996863534644&amp;ll=38.242495,-85.617657&amp;spn=0.023594,0.036478&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=4600+Lynnbrook+Drive+Louisville,+KY+40220+(502)+451-3860&amp;aq=&amp;sll=38.188805,-85.67677&amp;sspn=0.933653,2.113495&amp;ie=UTF8&amp;hq=(502)+451-3860&amp;hnear=4600+Lynnbrook+Dr,+Louisville,+Kentucky+40220&amp;t=m&amp;cid=9389519996863534644&amp;ll=38.242495,-85.617657&amp;spn=0.023594,0.036478&amp;z=14&amp;iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="cwell">
						<!-- Contact form -->
						<h5>Contact Form</h5>
						<div class="form">
							<!-- Contact form (not working)-->
							<form class="form-horizontal">
							<!-- Name -->
							<div class="form-group">
								<label class="control-label col-md-3" for="name">Name</label>
								<div class="col-md-9">
									<input type="text" class="form-control" id="name">
								</div>
							</div>

							<!-- Email -->
							<div class="form-group">
								<label class="control-label col-md-3" for="email">Email</label>
								<div class="col-md-9">
									<input type="text" class="form-control" id="email">
								</div>
							</div>
							<!-- Website -->
							<div class="form-group">
								<label class="control-label col-md-3" for="website">Website</label>
								<div class="col-md-9">
									<input type="text" class="form-control" id="website">
								</div>
							</div>
							
							<!-- Comment -->
							<div class="form-group">
								<label class="control-label col-md-3" for="comment">Comment</label>
								<div class="col-md-9">
									<textarea class="form-control" id="comment" rows="3"></textarea>
								</div>
							</div>
				
							<!-- Buttons -->
							<div class="form-group">
							<!-- Buttons -->
								<div class="col-md-9 col-md-offset-3">
									<button type="submit" class="btn btn-default">Submit</button>
									<button type="reset" class="btn btn-default">Reset</button>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-sm-6">
					<div class="cwell">
						<!-- Address section -->
						<h5>Address</h5>
						<div class="address">
							<address>
							<!-- Company name -->
							<h6>Church of the Ascension</h6>
							<!-- Address -->
							4600 Lynnbrook Drive<br>
							Louisville, KY 40220<br>
							<!-- Phone number -->
							<abbr title="Phone">P:</abbr> (502) 451-3860
							</address>
					
							<address>
							<!-- Name -->
							<h6>Full Name</h6>
							<!-- Email -->
							<a href="mailto:#">first.last@gmail.com</a>
							</address>
						</div>
					</div>
				</div>
			</div>

		</div> 
	</div>
</div>

<cfinclude template="footer.cfm" >