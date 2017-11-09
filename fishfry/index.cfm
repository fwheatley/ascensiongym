<cfset variables.sTitle = "Fish Fry">

<cfsetting showdebugoutput="false">
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


<cfparam name="client.bLoggedIn" default="0" >

<cfquery name="qUsers" datasource="fishfry">
select userid, userfname, userlname, pass
from users
</cfquery>

<cfif isdefined("form.submitlogin")>
	<cfquery name="qOneUser" dbtype="query">
	select * from qUsers 
	where userid = <cfqueryparam value="#form.userselect#" cfsqltype="cf_sql_varchar">
	  and pass =  <cfqueryparam value="#form.userpass#" cfsqltype="cf_sql_varchar">
	</cfquery>
	
	<cfif qOneUser.recordcount>
		<cfset client.bLoggedIn = 1>
		<cfset client.userid = form.userselect>
	<cfelse>
		<cfset client.userid = "">
		<cfset client.bLoggedIn = 0>		
	</cfif>
<cfelseif isdefined("form.submitlogout")>
	<!---	<!--- clear client variables --->
	<cfloop index="x" list="#GetClientVariablesList()#">
		<cfset deleted = DeleteClientVariable("#x#")>
	</cfloop>
	 --->
	
	<cfset client.userid = "">
	<cfset client.bLoggedIn = 0>

<cfelseif isdefined("form.next")>
	<!---<cfset subdate = CreateDateTime(Year(Now()), Month(Now()), Day(Now()), Hour(Now()), Minute(Now()), Second(Now()))> 
	<cfdump var="#form#">--->

	<cfquery name="qOrderid" datasource="fishfry">
	select max(orderid) as orderid from orders;
	</cfquery>
	
	<cfif qOrderid.recordcount AND len(qOrderid.orderid)>
		<cfset nOrderId = qOrderid.orderid + 1>
	<cfelse>
		<cfset nOrderId = 1>
	</cfif>
	
	<cfset dtNow =  CreateDateTime(Year(Now()), Month(Now()), Day(Now()), Hour(Now()), Minute(Now()), Second(Now()))>
	
	<cfquery name="insert_order" datasource="fishfry">
	insert into orders (orderid, orderdate, userid)
	values(<cfqueryparam value="#nOrderId#" cfsqltype="cf_sql_numeric">,
		   <cfqueryparam value="#dtNow#" cfsqltype="cf_sql_timestamp">,
		   <cfqueryparam value="#client.userid#" cfsqltype="cf_sql_varchar">)
	</cfquery>
	
	<cfoutput>
	<cfloop index="i" list="#Form.FieldNames#" delimiters=",">
		<cfif right(i, 3) EQ "Qty" AND #Form[i]#>
			<cfset sItem = left(i, len(i)-3)>
			<cfset qty = Form[i]>
					
			<cfquery name="insert_orderdet" datasource="fishfry">
			insert into ordersdet (orderid, itemid, qty)
			values (<cfqueryparam value="#nOrderId#" cfsqltype="cf_sql_numeric">,
					<cfqueryparam value="#sItem#" cfsqltype="cf_sql_varchar">,
			   		<cfqueryparam value="#qty#" cfsqltype="cf_sql_numeric">)
			</cfquery>
		</cfif>
	</cfloop>
	</cfoutput>
	
	<cflocation url="index.cfm" addtoken="true" >

</cfif>

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
						<option value="" >Select</option>
						<cfoutput query="qUsers">
						<option value="#userid#" >#userfname# #userlname#</option>
						</cfoutput>
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
.qty {
    width: 40px;
    height: 28px;
	text-align: center;
}
.inc {
	width: 30px;
    height: 30px;
}
.dec {
	width: 30px;
    height: 30px;
	font-weight:bold;	
}
#complete {
	font-size: 30px;
}
input.qtyplus { width:25px; height:25px;}
input.qtyminus { width:25px; height:25px;}

.submit-button {
	-webkit-box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
	-moz-box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
	box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
	color:#333;
	background-color:#FA2;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	border:none;
	font-family:'Helvetica Neue',Arial,sans-serif;
	font-size:16px;
	font-weight:700;
	height:32px;
	padding:4px 16px;
	text-shadow:#FE6 0 1px 0
}

</style>


<div class="content">
<div class="container">

	<!--- Food menu id
	ffishInc	ffishDec	Fried Fish
	bfishInc	bfishDec	Baked Fish
	shrimpInc	shrimpDec	Shrimp Bowl
	slawInc		slawDec		Slaw
	greenInc	greenDec	Green Beans
	tatorInc	tatorDec	Baked Potato
	friesInc	friesDec	French Fries
	onionInc	onionDec	Onion Rings
	macInc		macDec		Mac and Cheese
	pizzaInc	pizzaDec	Pizza
	boscoInc	boscoDec	Bosco Sticks 
	
	--->
	


	<!-- About Us -->
 	<div class="aboutus">
		<cfoutput>
		<form id='myform' method='POST' action='index.cfm?#client.urltoken#'>
		</cfoutput>
		<div class="row">
						
			<div class="col-md-4 menucontainer">
				<div class="menuitem">
					<input type='button' value='-' id='ffishDec' field='ffishQty' class='dec' />
					<input type='text' name='ffishQty' id='ffishQty' value='0' class='qty' />
					<input type='button' value='+' id='ffishInc' field='ffishQty' class='inc' />
					Fried Fish
				</div>
					
				<div class="menuitem">
					<input type='button' value='-' id='bfishDec' field='bfishQty' class='dec' />
					<input type='text' name='bfishQty' id='bfishQty' value='0' class='qty' />
					<input type='button' value='+' id='bfishInc' field='bfishQty' class='inc' />
					Baked Fish
				</div>
	
				<div class="menuitem">
					<input type='button' value='-' id='shrimpDec' field='shrimpQty' class='dec' />
					<input type='text' name='shrimpQty' id='shrimpQty' value='0' class='qty' />
					<input type='button' value='+' id='shrimpInc' field='shrimpQty' class='inc' />
					Shrimp Bowl
				</div>
				<br />

				<div class="menuitem">
					<input type='button' value='-' id='tacoDec' field='tacoQty' class='dec' />
					<input type='text' name='tacoQty' id='tacoQty' value='0' class='qty' />
					<input type='button' value='+' id='tacoInc' field='tacoQty' class='inc' />
					Fish Taco				
				</div>
									
				<div class="menuitem">
					<input type='button' value='-' id='pizzaDec' field='pizzaQty' class='dec' />
					<input type='text' name='pizzaQty' id='pizzaQty' value='0' class='qty' />
					<input type='button' value='+' id='pizzaInc' field='pizzaQty' class='inc' />
					Cheese Pizza
				</div>
	
				<!---<div class="menuitem">
					<input type='button' value='-' id='boscoDec' field='boscoQty' class='dec' />
					<input type='text' name='boscoQty' id='boscoQty' value='0' class='qty' />
					<input type='button' value='+' id='boscoInc' field='boscoQty' class='inc' />
					Bosco Sticks (2)				
				</div>--->
				
				<div class="menuitem">
					<input type='button' value='-' id='freefishDec' field='freefishQty' class='dec' />
					<input type='text' name='freefishQty' id='freefishQty' value='0' class='qty' />
					<input type='button' value='+' id='freefishInc' field='freefishQty' class='inc' />
					Free Fish
				</div>
			</div>
				
			<div class="col-md-4 menucontainer">
				<div class="menuitem">
					<input type='button' value='-' id='slawDec' field='slawQty' class='dec' />
					<input type='text' name='slawQty' id='slawQty' value='0' class='qty' />
					<input type='button' value='+' id='slawInc' field='slawQty' class='inc' />
					Slaw
				</div>
				
				<div class="menuitem">
					<input type='button' value='-' id='greenDec' field='greenQty' class='dec' />
					<input type='text' name='greenQty' id='greenQty' value='0' class='qty' />
					<input type='button' value='+' id='greenInc' field='greenQty' class='inc' />
					Green Beans
				</div>
				
				<div class="menuitem">
					<input type='button' value='-' id='tatorDec' field='tatorQty' class='dec' />
					<input type='text' name='tatorQty' id='tatorQty' value='0' class='qty' />
					<input type='button' value='+' id='tatorInc' field='tatorQty' class='inc' />
					Baked Potato
				</div>
	
				<div class="menuitem">
					<input type='button' value='-' id='friesDec' field='friesQty' class='dec' />
					<input type='text' name='friesQty' id='friesQty' value='0' class='qty' />
					<input type='button' value='+' id='friesInc' field='friesQty' class='inc' />
					French Fries
				</div>
					
				<div class="menuitem">
					<input type='button' value='-' id='onionDec' field='onionQty' class='dec' />
					<input type='text' name='onionQty' id='onionQty' value='0' class='qty' />
					<input type='button' value='+' id='onionInc' field='onionQty' class='inc' />
					Onion Rings
				</div>
								
				<div class="menuitem">
					<input type='button' value='-' id='macDec' field='macQty' class='dec' />
					<input type='text' name='macQty' id='macQty' value='0' class='qty' />
					<input type='button' value='+' id='macInc' field='macQty' class='inc' />
					Mac & Cheese
				</div>					
			</div>
			
			
			<div class="col-md-4 menucontainer">
				<div align="center">
					<input type='submit' value='Clear' id='clear' style="color:grey;" />
					<!---<input type='submit' value='Next' name="next" id="next" <cfif NOT client.bLoggedIn>disabled="disabled" style="color:grey;"</cfif> id='complete' />--->
				</div>
				<br />
				
				<div id='total'>Total:&nbsp;&nbsp;&nbsp;$0.00</div>
				
				<div id="ffishSub" class="subtotal"></div>
				<div id="bfishSub" class="subtotal"></div>
				<div id="shrimpSub" class="subtotal"></div>
				<div id="tacoSub" class="subtotal"></div>
				<div id="slawSub" class="subtotal"></div>
				<div id="greenSub" class="subtotal"></div>
				<div id="tatorSub" class="subtotal"></div>
				<div id="friesSub" class="subtotal"></div>
				<div id="onionSub" class="subtotal"></div>
				<div id="macSub" class="subtotal"></div>
				<div id="pizzaSub" class="subtotal"></div>
				<div id="pizza2Sub" class="subtotal"></div>
				<div id="freefishSub" class="subtotal"></div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-8 menucontainer" align="center">
				<br />
				<input type='submit' value='Next' name="next" id="next" <cfif NOT client.bLoggedIn>disabled="disabled" style="color:grey;"<cfelse>class="submit-button"</cfif> id='complete' />
				
				<br /><br />
			</div>			
		</div>
		</form>	
	</div> 
	
	<cfset dtToday = CreateDate( Year(Now()), Month(Now()), Day(Now()) )> 
	<cfset dtToday = dateadd("d", -1, dtToday)>
	<hr />
		
	<cfquery name="qOrders" datasource="fishfry">
	select a.itemid, sum(a.qty) as total, c.itemdesc
	from ordersdet a, orders b, items c
	where a.orderid = b.orderid
	  and a.itemid = c.itemid
	  and orderdate ><cfqueryparam value="#dtToday#" cfsqltype="cf_sql_timestamp">
	group by a.itemid, c.itemdesc
	order by total desc
	</cfquery>
	
	<div class="row">
		<div class="col-md-8">
			<table>
				<tr>
					<th>Item</th>
					<th>Sold Today</th>
				</tr>
				<cfoutput query="qOrders">
					<tr>
						<td>#itemdesc#</td>
						<td align="right">#total#</td>
					</tr>
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

	$('#clear').click(function(e){
		e.preventDefault();
		$('.inc').css("color","black");
		$('.dec').css("color","black");
		$('#ffishQty').val(0);
		$('#bfishQty').val(0);
		$('#shrimpQty').val(0);
		$('#slawQty').val(0);
		$('#greenQty').val(0);
		$('#tatorQty').val(0);
		$('#friesQty').val(0);
		$('#onionQty').val(0);
		$('#macQty').val(0);
		$('#pizzaQty').val(0);
		$('#tacoQty').val(0);
		$('#pizza2Qty').val(0);
		$('#freefishQty').val(0);
		
		$('.subtotal').hide();
		$("#total").html('Total:&nbsp;&nbsp;&nbsp;$0.00');

	});

	$('.inc').click(function(e){
		e.preventDefault();
		$('.inc').css("color","black");
		$('.dec').css("color","black");
		$(this).css("color","red");
		fieldName = $(this).attr('field');		
		var currentVal = parseInt($('input[name='+fieldName+']').val());
		if (!isNaN(currentVal)) {
			$('input[name='+fieldName+']').val(currentVal + 1);
		} else {
			$('input[name='+fieldName+']').val(0);
		}
		calc();
	});	
			
	$(".dec").click(function(e) {
		e.preventDefault();
		$('.inc').css("color","black");
		$('.dec').css("color","black");
		$(this).css("color","red");
		fieldName = $(this).attr('field');
		var currentVal = parseInt($('input[name='+fieldName+']').val());
		if (!isNaN(currentVal) && currentVal > 0) {
			$('input[name='+fieldName+']').val(currentVal - 1);
		} else {
			$('input[name='+fieldName+']').val(0);
		}
		calc();
	});

function calc(){
	var nTotal = 0;
	var ffishQty =  parseInt($('#ffishQty').val());
	var bfishQty =  parseInt($('#bfishQty').val());
	var shrimpQty =  parseInt($('#shrimpQty').val());
	var slawQty =  parseInt($('#slawQty').val());
	var greenQty =  parseInt($('#greenQty').val());
	var tatorQty =  parseInt($('#tatorQty').val());
	var friesQty =  parseInt($('#friesQty').val());
	var onionQty =  parseInt($('#onionQty').val());
	var macQty =  parseInt($('#macQty').val());
	var pizzaQty =  parseInt($('#pizzaQty').val());
	var tacoQty =  parseInt($('#tacoQty').val());
	var pizza2Qty =  parseInt($('#pizza2Qty').val());
	var freefishQty =  parseInt($('#freefishQty').val());
	
	$('.subtotal').hide();
	if (ffishQty > 0) {
		$("#ffishSub").html(ffishQty+' Fried Fish');
		$("#ffishSub").show();
	}
	if (bfishQty > 0) {
		$("#bfishSub").html(bfishQty+' Baked Fish');
		$("#bfishSub").show();
	}
	if (shrimpQty > 0) {
		$("#shrimpSub").html(shrimpQty+' Shrimp');
		$("#shrimpSub").show();
	}
	if (slawQty > 0) {
		$("#slawSub").html(slawQty+' Slaw');
		$("#slawSub").show();
	}
	if (greenQty > 0) {
		$("#greenSub").html(greenQty+' Green Beans');
		$("#greenSub").show();
	}
	if (tatorQty > 0) {
		$("#tatorSub").html(tatorQty+' Baked Potato');
		$("#tatorSub").show();
	}
	if (friesQty > 0) {
		$("#friesSub").html(friesQty+' French Fries');
		$("#friesSub").show();
	}
	if (onionQty > 0) {
		$("#onionSub").html(onionQty+' Onion Rings');
		$("#onionSub").show();
	}
	if (macQty > 0) {
		$("#macSub").html(macQty+' Mac & Cheese');
		$("#macSub").show();
	}
	if (pizzaQty > 0) {
		$("#pizzaSub").html(pizzaQty+' Cheese Pizza');
		$("#pizzaSub").show();
	}
	if (tacoQty > 0) {
		$("#tacoSub").html(tacoQty+' Fish Taco');
		$("#tacoSub").show();
	}
	if (pizza2Qty > 0) {
		$("#pizza2Sub").html(pizza2Qty+' Free Pizza');
		$("#pizza2Sub").show();
	}
	if (freefishQty > 0) {
		$("#freefishSub").html(freefishQty+' Free Fish');
		$("#freefishSub").show();
	}		
	
	
	
	
	nTotal = ffishQty*5+bfishQty*5+shrimpQty*5.5+slawQty*1.5+greenQty*1.5+tatorQty*2+friesQty*1.5+onionQty*2+macQty*2+pizzaQty*1.75+tacoQty*3+pizzaQty*0+freefishQty*0;
	nTotal = parseFloat(Math.round(nTotal * 100) / 100).toFixed(2);
	
	$("#total").html('Total:&nbsp;&nbsp;&nbsp;$'+nTotal);   
}

});
</script>

</body>
</html>


<!---

-- Table `fishfry`.`items`
CREATE TABLE IF NOT EXISTS `fishfry`.`items` (
  `itemid` VARCHAR(10) NOT NULL,
  `itemdesc` VARCHAR(45) NOT NULL,
  `itemprice` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`itemid`))

-- Table `fishfry`.`orders`
CREATE TABLE IF NOT EXISTS `fishfry`.`orders` (
  `orderid` INT(11) NOT NULL,
  `orderdate` DATETIME NOT NULL,
  `userid` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`orderid`),
  INDEX `fk_orders_users1_idx` (`userid` ASC))

-- Table `fishfry`.`ordersdet`
CREATE TABLE IF NOT EXISTS `fishfry`.`ordersdet` (
  `orderid` INT(11) NOT NULL,
  `itemid` VARCHAR(10) NOT NULL,
  `qty` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`, `itemid`),
  INDEX `fk_ordersdet_items1_idx` (`itemid` ASC))

-- Table `fishfry`.`users`
CREATE TABLE IF NOT EXISTS `fishfry`.`users` (
  `userid` VARCHAR(50) NOT NULL,
  `userfname` VARCHAR(50) NULL DEFAULT NULL,
  `userlname` VARCHAR(50) NULL DEFAULT NULL,
  'pass'  VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`))


 --->