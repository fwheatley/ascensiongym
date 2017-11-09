<cfset variables.page = "index.cfm">

<cfinclude template="header.cfm" >

<div id="wrapper">
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
 	<cfinclude template="topnav.cfm" >
	<cfinclude template="sidenav.cfm" >
</nav>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Dashboard</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->

	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-green">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-user fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">13</div>
							<div>Attendance</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<a href="citations.cfm">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
						</a>
					</div>
				</a>
			</div>
		</div>
        
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa  fa-dollar fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">124</div>
							<div>Gate</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-red">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-cutlery fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">13</div>
							<div>Concession</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
	</div>
    
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-5">
			<div class="chat-panel panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-comments fa-fw"></i>
					Data
				</div>
				<!-- /.panel-heading -->
                
				<div class="panel-body">
					<div class="list-group">
						<div class="list-group-item">
							<i class="fa fa-sign-out fa-fw"></i> 
							<span class="pull-right text-muted small"><em>Citations #1</em></span>
						</div>
					</div>
				</div>
				
				<div class="panel-footer">

				</div>
				
			</div>
		</div>


        
		<cfset qLastLogin = oUser.getUserLogEvent('login')>
<!---cnt, username, eventdate, fname, lname--->
		<div class="col-lg-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-bell fa-fw"></i> Login Activity
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="list-group">
						<cfoutput query="qLastLogin" >
							<div class="list-group-item">
								<i class="fa fa-sign-out fa-fw"></i> #qLastLogin.userfname# #qLastLogin.userlname# (#cnt#)
								<span class="pull-right text-muted small"><em>#dateformat(eventdate, "mm/dd/yyyy")# #timeformat(eventdate, "hh:mm:ss tt")#</em></span>
							</div>
						</cfoutput>
					</div>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
   

		</div>
		<!-- /.col-lg-4 -->
	</div>
	<!-- /.row -->
</div>
<!-- /#page-wrapper -->

<!---
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
 --->



</div>
<!-- /#wrapper -->

<cfset variables.index = "Y">
<cfinclude template="footer.cfm" >
