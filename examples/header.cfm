<cfparam name="variables.sTitle" default="Page Title" > 

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title><cfoutput>#variables.sTitle#</cfoutput></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,300,600' rel='stylesheet' type='text/css'>
  
	<!-- Stylesheets -->
	<link href="style/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" href="style/font-awesome.css">
	<link href="style/prettyPhoto.css" rel="stylesheet">
	<!-- Parallax slider -->
	<link rel="stylesheet" href="style/slider.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="style/flexslider.css">

	<link href="style/style.css" rel="stylesheet">

	<!-- Colors - Orange, Purple, Light Blue (lblue), Red, Green and Blue -->
	<link href="style/blue.css" rel="stylesheet">

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
			<div class="col-md-4 col-sm-4">
				<div class="logo">
					<!---<h1><a href="index.cfm">Metro <span class="color">Mania</span></a></h1>--->
					<img src="img/logo_sm.jpg" alt="" />
				</div>
			</div>
			
			<div class="col-md-5 col-md-offset-3 col-sm-6 col-sm-offset-2">
				<form class="form-inline" role="form">
				<div class="form-group">
					<input type="text" class="form-control" id="search" placeholder="Type Something...">
				</div>
				<button type="submit" class="btn btn-default">Search</button>
				</form>
			</div>
		</div>
	</div>
</header>