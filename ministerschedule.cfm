<cfset request.sSite = "church">
<cfset request.sTitle = "Ascension Parish Contact Us">

<cfinclude template="header.cfm">
<cfinclude template="navbar.cfm" >

<div class="content">
	<div class="container">

	<cfinclude template="sidebar.cfm" >
	<div id="main">

<script>
$(document).ready(function() {
	$("tr:odd").addClass("odd");
});
</script>


<div>
	<img src="images/minister-schedulefinal.jpg" width="545" height="97"> 
</div>
<br />

<div align="center">
	<p class="fontsz4">
		<a href="pdf/ministersMAY.pdf">View Ministers' May Schedule</a>
	</p>
	<br /><br />
</div>	

<div>
	<p class="fontsz2">
	<a href="http://www.ministryschedulerpro.com?user=churchofascension" target="_blank">LOGIN</a> to  Minister Schedule.  
	<span class="italics">If you forgot your password, you can request it via the sign in screen and it comes back to you as an email.</span>	
	</p>		
	<br /><br />
	<p class="script fontsz3 bold italics">Give the gift of ministry to God, yourself and your Ascension family.</p>
	<br /><br /><br /><br /><br />
</div>


	</div>
	
	</div>
</div>
<cfinclude template="footer.cfm">