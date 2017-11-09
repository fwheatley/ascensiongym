<cfsetting showdebugoutput="false">
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

<!-- Header Starts -->
<header>
	<div class="container">
		<div class="row">
			<a href="index.cfm">
			<div class="col-md-3 col-sm-3">
				<div class="logo">
					<cfoutput>
					<img src="#request.homeURL#/img/logo_sm.png" alt="" />
					</cfoutput>
				</div>
			</div>
			
			<div class="col-md-9 col-md-col-sm-9">
				<div class="logo">
					<h1><a href="index.cfm">Church of the Ascension</a></h1>
					<div style="margin-top:-12px;margin-left:6px;">Archdiocese of Louisville</div> 
				</div>
				<div style="text-align:right;margin-top:-50px;">
					4600 Lynnbrook Drive<br />
					Louisville, KY 40220<br />
					(502) 451-3860
				</div>
				<div class="col-md-9 col-md-col-sm-9" style="margin-top:-20px; font-size:10pt; font-style:italic; line-height:20px; color:#3A3838; padding:0px;">We are a Roman Catholic parish focused on developing our community through worship, outreach, education and fellowship guided by the teachings of Jesus Christ.</div>
					
			</div>
			</a>
		</div>
	</div>
</header>