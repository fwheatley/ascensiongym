<cfset variables.sTitle = "About Us">

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



<cfset dtNow =  CreateDateTime(Year(Now()), Month(Now()), Day(Now()), Hour(Now()), Minute(Now()), Second(Now()))>
	
	




<!-- Header Starts -->
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

				<div class="col-md-9 col-md-col-sm-9" style="margin-top:16px; font-size:30pt; line-height:20px; color:#3A3838; padding:0px;">Fish Fry Calculator</div>
					
			</div>
			</a>
			
			<div class="col-md-2 col-sm-2">

			</div>
		</div>
	</div>
</header>

<!---<cfinclude template="/root/header.cfm">
<cfinclude template="/root/navbar.cfm" >--->

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

.menucontainer {
	float: left;
	font-size:13pt; 
}
</style>

<div class="content">
<div class="container">

	<cfset dtToday = CreateDate( Year(Now()), Month(Now()), Day(Now()) )> 
	<cfset dtToday = dateadd("d", -1, dtToday)>

	<cfquery name="qDates" datasource="fishfry">
	SELECT distinct date(a.orderdate) as date, DATE_FORMAT(date(a.orderdate),'%Y-%m-%d') as xx
	FROM fishfry.orders a
	order by date desc;
	</cfquery>
		
	<cfquery name="qItems" datasource="fishfry">
	SELECT itemid, itemdesc
	FROM items
	</cfquery>

	<cfset qTotals = QueryNew("item,"&valuelist(qDates.xx))>

	<cfoutput query="qItems">
		<cfset newRow = QueryAddRow(qTotals, 1)>
		<cfset temp = QuerySetCell(qTotals, "item", qItems.itemdesc, qItems.currentrow)>
		
		<cfloop list="#valuelist(qDates.xx)#" index="i">
			<cfquery name="qTotItemDate" datasource="fishfry">
			SELECT date(a.orderdate) as date, b.itemid, c.itemdesc, sum(b.qty) as total
			FROM fishfry.orders a, fishfry.ordersdet b, items c
			where a.orderid = b.orderid
			  and date(a.orderdate) = '#i#'
			  and b.itemid = c.itemid
			  and b.itemid = '#qItems.itemid#'
			group by date(a.orderdate), b.itemid, c.itemdesc
			order by date(a.orderdate) desc, b.itemid
			</cfquery>
			
			<cfset temp = QuerySetCell(qTotals, i, qTotItemDate.total, qItems.currentrow)>
		</cfloop> 
	</cfoutput>

	<div class="row">
		<div class="col-md-8">
			<table border="1">
				<tr>
					<cfloop list="#queryColumnList(qTotals)#" delimiters="," index="i" >
						<th><cfoutput>#i#</cfoutput></th>
					</cfloop>
				</tr>
				<cfoutput query="qTotals">
					<tr>
						<cfloop list="#queryColumnList(qTotals)#" delimiters="," index="i" >
							<td>#qTotals[i][qTotals.currentrow]#</td>
						</cfloop>
					</tr>
				</cfoutput>
			</table>
		</div>
	</div>
	<br />



	<cfquery name="qOrders" datasource="fishfry">
	SELECT date(a.orderdate) as date, b.itemid, c.itemdesc, sum(b.qty) total
	FROM fishfry.orders a, fishfry.ordersdet b, items c
	where a.orderid = b.orderid
	  /*and b.itemid = 'bfish' */
	  /*and a.orderdate > '2015-01-01'*/
	  and b.itemid = c.itemid
	group by date(a.orderdate), b.itemid, c.itemdesc
	order by date(a.orderdate) desc, b.itemid
	</cfquery>

	<!---select a.itemid, sum(a.qty) as total, c.itemdesc
	from ordersdet a, orders b, items c
	where a.orderid = b.orderid
	  and a.itemid = c.itemid
	  and orderdate ><cfqueryparam value="#dtToday#" cfsqltype="cf_sql_timestamp">
	group by a.itemid, c.itemdesc
	order by total desc--->
	
	<div class="row">
		<div class="col-md-8">
			<table>
				<!---<tr>
					<th>Date</th>
					<th>Item</th>
					<th>Sold Today</th>
				</tr>--->
				<cfoutput query="qOrders" group="date">
					<tr>
						<td colspan="3">#dateformat(date,"long")#</td>
						
					</tr>
					<cfoutput>
						<tr>
							<td width="20px"></td>
							<td>#itemdesc#</td>
							<td align="right">#total#</td>
						</tr>
					</cfoutput>
				</cfoutput>
			</table>
		</div>
	</div>
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

</body>
</html>


