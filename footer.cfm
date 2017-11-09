<!-- Social -->
<div class="social-links">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<p class="big"><span>Follow Us On</span> 
				<a href="#"><i class="icon-facebook"></i>Facebook</a> 
				<a href="#"><i class="icon-twitter"></i>Twitter</a> 
				<!---<a href="#"><i class="icon-google-plus"></i>Google Plus</a> 
				<a href="#"><i class="icon-linkedin"></i>LinkedIn</a>--->
				</p>
			</div>
		</div>    
	</div>
</div>

<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="widgets">
				<div class="col-md-4">
					<div class="fwidget">
						<div class="col-l">
							<h6>Downloads</h6>
							<ul>
								<li><a href="#">Condimentum</a></li>
								<li><a href="#">Etiam at</a></li>
								<li><a href="#">Fusce vel</a></li>
								<li><a href="#">Vivamus</a></li>
								<li><a href="#">Pellentesque</a></li>
							</ul>
						</div>

						<div class="col-r">
							<h6>Support</h6>
							<ul>
								<li><a href="#">Condimentum</a></li>
								<li><a href="#">Etiam at</a></li>
								<li><a href="#">Fusce vel</a></li>
								<li><a href="#">Vivamus</a></li>
								<li><a href="#">Pellentesque</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="fwidget">
						<h6>Categories</h6>
						<ul>
							<li><a href="#">Condimentum - Condimentum gravida</a></li>
							<li><a href="#">Etiam at - Condimentum gravida</a></li>
							<li><a href="#">Fusce vel - Condimentum gravida</a></li>
							<li><a href="#">Vivamus - Condimentum gravida</a></li>
							<li><a href="#">Pellentesque - Condimentum gravida</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="fwidget">
						<h6>Recent Posts</h6>
						<ul>
							<li><a href="#">Sed eu leo orci, condimentum gravida metus</a></li>
							<li><a href="#">Etiam at nulla ipsum, in rhoncus purus</a></li>
							<li><a href="#">Fusce vel magna faucibus felis dapibus facilisis</a></li>
							<li><a href="#">Vivamus scelerisque dui in massa</a></li>
							<li><a href="#">Pellentesque eget adipiscing dui semper</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="row"> 
			<div class="col-md-12">
				<div class="copy">
					<h6>Church of the Ascension of Our Lord</h6>
					<p>Copyright &copy; <a href="#">Ascension</a> - <a href="index.cfm">Home</a> | <a href="aboutus.cfm">About Us</a> | <a href="contactus.cfm">Contact Us</a></p>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</footer> 

<!-- JS -->
<cfoutput>
<script src="#request.homeURL#/js/jquery.js"></script>
<script src="#request.homeURL#/js/bootstrap.js"></script> 
<script src="#request.homeURL#/js/jquery.isotope.js"></script> <!-- Isotope for gallery -->
<script src="#request.homeURL#/js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto for images -->
<script src="#request.homeURL#/js/jquery.cslider.js"></script> <!-- Parallax slider -->
<script src="#request.homeURL#/js/modernizr.custom.28468.js"></script>
<script src="#request.homeURL#/js/filter.js"></script> <!-- Filter for support page -->
<script src="#request.homeURL#/js/cycle.js"></script> <!-- Cycle slider -->
<script src="#request.homeURL#/js/jquery.flexslider-min.js"></script> <!-- Flex slider -->

<script src="#request.homeURL#/js/easing.js"></script> <!-- Easing -->
<script src="#request.homeURL#/js/custom.js"></script>
</cfoutput>

<script>
$(document).ready(function() {
    $('.nav li.dropdown').hover(function() {
        $(this).addClass('open');
    }, function() {
        $(this).removeClass('open');
    });

	$("tr:odd").addClass("odd");
});
</script>
</body>
</html>