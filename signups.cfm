<cfset variables.sTitle = "About Us">

<cfsetting showdebugoutput="true" >

<cfparam name="request.sTitle" default="Page Title" > 

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title><cfoutput>#request.sTitle#</cfoutput></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,300,600' rel='stylesheet' type='text/css'>
  
	<!-- Stylesheets -->
	<cfoutput>
	<link href="#request.homeURL#/style/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" href="#request.homeURL#/style/font-awesome.css">
	<link href="#request.homeURL#/style/prettyPhoto.css" rel="stylesheet">
	<!-- Parallax slider -->
	<link rel="stylesheet" href="#request.homeURL#/style/slider.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="#request.homeURL#/style/flexslider.css">

	<link href="#request.homeURL#/style/style.css" rel="stylesheet">

	<!-- Colors - Orange, Purple, Light Blue (lblue), Red, Green and Blue -->
	<link href="#request.homeURL#/style/blue.css" rel="stylesheet">
	</cfoutput>
	
	<!-- HTML5 Support for IE -->
	<!--[if lt IE 9]>
	<script src="js/html5shim.js"></script>
	<![endif]-->

	<!-- Favicon -->
	<link rel="shortcut icon" href="img/favicon/favicon.png">
</head>

<body>

<cfif isdefined("form.send")>
	<!---<cfdump var="#form#" >--->
	
	<cfset dtNow =  CreateDateTime(Year(Now()), Month(Now()), Day(Now()), Hour(Now()), Minute(Now()), Second(Now()))>
	
	<cfquery name="insert_signup" datasource="fishfry">
	insert into ath_signup (schoolyear, sport, fname, lname, grade, gender, phone, phone2, email, email2, parentfullname, signupdate)
	values(<cfqueryparam value="#form.schoolyear#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.sport#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.fname#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.lname#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.grade#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.gender#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.phone#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.phone2#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.email2#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#form.parentname#" cfsqltype="cf_sql_varchar">,
		   <cfqueryparam value="#dtNow#" cfsqltype="cf_sql_timestamp">)
	</cfquery>
	
	<cfmail from="admin@frankwheatley.net" subject="Ascension Online Signup" to="frank@wheatley.net" type="html" >
		<b>Online Sign Up:</b><br />
		<cfoutput>
			#form.sport# / #form.schoolyear#<br />
			#form.fname# #form.lname#<br />
			Grade: #form.grade#<br />
			Gender: #form.gender#<br />
		    Phone: #form.phone#<br />
		    Phone: #form.phone2#<br />
		    Email: #form.email#<br />
		    Email: #form.email2#<br />
		    Parent Name: #form.parentname#<br />
			<br />
			<br />
		</cfoutput>
	</cfmail>
	
	<br />
	Frank
	<br />
	lname,sport,schoolyear,parentname,fname,gender,grade,send,phone,email
	
	<cflocation url="http://school.ascension-parish.com/athletics/athletics-signups?addplayer=1" addtoken="false" >
</cfif>

<cfparam name="client.bLoggedIn" default="0" >

<cfquery name="qSignups" datasource="fishfry">
select * from ath_signup 
where sport != 'basketball'
order by sport, gender, grade desc, lname
;
</cfquery>

<header>
	<div class="container">
		<div class="row">
			<a href="../">
			<div class="col-md-3 col-sm-3">
				<div class="logo">
					<cfoutput>
					<img src="#request.homeURL#/img/logo_sm.png" alt="" />
					</cfoutput>
				</div>
			</div>
			
			<div class="col-md-7 col-md-col-sm-7">
				<div class="logo">
					<h1><a href="../">Church of the Ascension</a></h1>
					<div style="margin-top:-12px;margin-left:6px;">Archdiocese of Louisville</div> 
				</div>

				<div class="col-md-9 col-md-col-sm-9" style="margin-top:16px; font-size:30pt; line-height:20px; color:#3A3838; padding:0px;">Athletic Signups</div>
					
			</div>
			</a>
			
			<div class="col-md-2 col-sm-2">
				<cfif client.bLoggedIn>
					<cfoutput>
					<form id='myform' method='POST' action='index.cfm?#client.urltoken#'>
					</cfoutput>
					<input type="submit" name="submitlogout" id="submitlogout" style="margin-top:60px" value="Logout">
					</form>
				<cfelse>
					<cfoutput>
					<form id='myform' method='POST' action='index.cfm?#client.urltoken#'>
					</cfoutput>
					<div id="user">
						<label for="competitorProduct">Select User to Login:</label>
						<select name="userselect" id="userselect">
						<option value="" >Select</option>cc
						<!---<cfoutput query="qUsers">--->
						<option value="#userid#" >#userfname# #userlname#</option>
						<!---</cfoutput>--->
						</select>
						<br />
						<label for="password">Password:</label> <input type="password" name="userpass" id="userpass" value=""> 
						<input type="submit" name="submitlogin" id="submitlogin" value="Login">
					</div>
					</form>
				</cfif>
			</div>
		</div>
	</div>
</header>


<div class="navbar bs-docs-nav" role="banner">
	<div class="container">
		<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation"></nav>
	</div>
</div>
<!-- Navigation bar ends -->


<style>
.navbar {
    min-height: 10px;
 }
#total {
	font-size: 48px;
	font-weight: bold;
	color: black;
    line-height: 45px;
	margin-top:0px;
	width:320px;
	float: right; 
}
.menucontainer {
	float: left;
	font-size:13pt; 
}
:focus {
	border:1;
}
.menuitem {
	width:250px;
	padding:5px;
}
#myform {
    padding: 5px;
    margin: 2%;
}

table.signup{ border-width:3px; border-style: solid; border-collapse:collapse; border-color:#415065; background-color:#B6CEFF; cellpadding:2px; cellspacing:2px; width:600px;}
table.signup th {
	font-weight: bold;
	border-width: 1px;
	padding: 2px;
	border-style: solid;
	border-color: #000000;
}
table.signup td {
	border-width: 1px;
	padding: 2px;
	border-style: solid;
	border-color: #000000;

</style>


<div class="content">
<div class="container">

	<!-- About Us -->
 	<div class="aboutus">
		<div class="row">
		
			<div class="col-md-12 menucontainer">			
				<cfoutput query="qSignups" group="sport" >
					<h2>SPORT: #sport# / #schoolyear#</h2>
			
					<table class="signup" >
						<thead>
							<tr>
								<th>LAST</th>
								<th>FIRST</th>
								<th>GRADE</th>
								<th>GENDER</th>
								<th>PHONE</th>
								<th>EMAIL</th>
								<th>PARENT NAME</th>
								<tH>DATE</th>
							</tr>
						</thead>
						<tbody>
						<cfoutput>
						<tr>
							<td>#lname#</td>
							<td>#fname#</td>
							<td>#grade#</td>
							<td>#gender#</td>
							<td>#phone#</td>
							<td>#email#</td>
							<td>#parentfullname#</td>
							<td>#dateformat(signupdate, "mm/dd/yyyy")# #timeformat(signupdate, "hh:mm tt")#</td>
						</tr>	
						</cfoutput>
						</tbody>
					</table>
				</cfoutput>
			
			</div>
			
		</div>
		
		<div class="row">

		</div>
	</div> 
	
	<hr />
		

	<br />
</div>
</div>


<!-- Footer -->
<footer>
	<div class="container">
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
    <cfif NOT client.bLoggedIn>
		 //$(.inc).prop("disabled",true);
	</cfif>
	
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