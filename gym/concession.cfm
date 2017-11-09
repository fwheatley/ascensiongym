<cfset variables.page = "gate.cfm">

<cfinclude template="header.cfm" >

<div id="wrapper">
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
<cfinclude template="topnav.cfm" >
<cfinclude template="sidenav.cfm" >
</nav>

<cfscript>
//oGym = createObject("component","com.gym");
//qGate = oGym.getGateItems();

//if ( isdefined("form.btnSaveGate") ) {
//	if ( isdefined("form.homeid") AND len(form.homeid) EQ 0 ) {
//		form.homeid = 0;
//	}
//	strAddCitation = oCitation.addCitation(form.actiondate, form.homeid, form.license, form.citationtypeid, 1, session.nPersonID, form.correctiondate);	
//}

//qAllCitations = oCitation.getAllCitations(1);
//qHomeList = oHome.getHomeList();
</cfscript>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Concession</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-10">
			<div class="panel panel-default">
				<div class="panel-heading">
					Recent Citations
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover" id="dataTables-citations">
							<thead>
								<tr>
									<th>ID</th>
									<th>Edit</th>
									<th>Issue Date</th>
									<th>Address</th>
									<th>license</th>
									<th>Citation Type</th>
									<th>Issued By</th>
									<th>Followup Date</th>
								</tr>
							</thead>
							<tbody>
<!---								<cfoutput query="qAllCitations">
								<tr>
									<td>#citationid#</td>
									<td id="#citationid#"><i class="fa fa-pencil-square-o fa-2x"></i></td>
									<td>#dateformat(citationdate,"long")#</td>
									<td>#streetnum# #street#</td>
									<td>#license#</td>
									<td>#citationtypedesc#</td>
									<td>#fname# #lname#</td>
									<td>#dateformat(correctiondate,"long")#</td>
								</tr>
								</cfoutput>	--->							
							</tbody>
						</table>
					</div>
<!---<cfdump var="#qAllCitations#">--->

				</div>
			</div>
		</div>

    </div>
    
    
 	<div class="aboutus">
		<cfoutput>
		<form id='myform' method='POST' action='index.cfm'>
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
				<input type='submit' value='Next' name="next" id="next" <cfif NOT session.bLoggedIn>disabled="disabled" style="color:grey;"<cfelse>class="submit-button"</cfif> id='complete' />
				
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
    
    
    
    
    
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<cfset variables.tables = "Y">
<cfinclude template="footer.cfm" >

<style>
ul.pagination {
    margin-top: 5px;
}

.show-grid [class^="col-"] {
    border: 3px solid #fff;
}

.data-entry {
	padding-top: 10px;
   	padding-bottom: 10px;
    border-bottom: 1px solid #ccc;
}

.panel-body {
`	padding-left: 15px;
	padding-right: 15px;
	padding-top: 15px;
	padding-bottom: 0px;
}
</style>

<script type="text/javascript">
$(function() {
	oCitations = $('#dataTables-citations').dataTable( {
		"lengthMenu": [ 10, 25, 50 ],
		"pageLength": 10,
		"order": [[ 2, "desc" ], [ 0, "desc" ]],
		"columnDefs": [
			{
				"targets": [ 0 ],
				"visible": false,
				"searchable": false
			}
		]
	});

	oCitationTypes = $('#dataTables-citationtypes').dataTable( {
		"lengthMenu": [ 5, 10, 25 ],
		"pageLength": 5,
		"order": [[ 2, "desc" ], [ 0, "asc" ]]
	});

	oHomeList = $('#dataTables-homelist').dataTable( {
		"sDom": '<"row view-filter"<"col-sm-12"<"pull-left"f><"pull-right"l><"clearfix">>>t<"row view-pager"<"col-sm-12"<"text-center"p>>>',
		"pagingType": "simple_numbers",
		//"info": false,
		//"lengthChange": false,
		"lengthMenu": [ 5, 10, 25 ],
		"pageLength": 5,
        "columnDefs": [
            {
                "targets": [ 0 ],
                "visible": false,
                "searchable": false
            },
            {
                "targets": [ 2 ],
                "visible": false,
                "searchable": false
            },
            {
                "targets": [ 3 ],
                "visible": false,
                "searchable": false
            },
            {
                "targets": [ 4 ],
                "visible": false,
                "searchable": false
            }
        ]
    } );

	$( "#actiondate" ).datepicker({
		showOn: "button",
		buttonImage: "images/cal.png",
		buttonImageOnly: true,
		buttonText: "Select date"
	});
	$("#actiondate").datepicker('setDate', new Date());  //not sure why we have to call again

	$( "#correctiondate" ).datepicker({
		showOn: "button",
		buttonImage: "images/cal.png",
		buttonImageOnly: true,
		buttonText: "Select date"
	});
	$("#correctiondate").datepicker('setDate', 30);  //not sure why we have to call again

	$('#addCitation').hide();
	$('#saveCitation').hide();
	$('#btnCloseCitation').hide();
	$('#citationtypelist').hide();
	$('#homelist').hide();	

	$('#btnAddCitation').click(function() {
		$('#addCitation').show();
		$('#saveCitation').show();	
		$('#btnAddCitation').hide();
		$('#btnCloseCitation').show();
		$('#lookupaddress').show();	
	});

	$('#btnCloseCitation').click(function() {
		$('#addCitation').hide();
		$('#saveCitation').hide();	
		$('#btnAddCitation').show();
		$('#btnCloseCitation').hide();
		$('#citationtypelist').hide();
		$('#homelist').hide();
	});

	$('#lookupaddress').click(function() {
		$('#homelist').show();
		$('#lookupaddress').hide();	
	});

	$('#lookupcitationtype').click(function() {
		$('#citationtypelist').show();
		$('#lookupcitationtype').hide();	
	});
                
	$('#dataTables-homelist tbody').on( 'click', 'td', function () {
		var rowID = $(this).attr('id');
		$('#homeid').val(rowID);
		
		var sAddress = $(this).html();
		$('#address').html(sAddress);
		
		$('#homelist').hide();
		$('#lookupaddress').show();	
	} );

	$('#dataTables-citationtypes tbody').on( 'click', 'td', function () {
		var rowID = $(this).attr('id');
		$('#citationtypeid').val(rowID);
		
		var sCitationTypeDesc = $(this).html();
		$('#citationtype').html(sCitationTypeDesc);
		
		$('#citationtypelist').hide();
		$('#lookupcitationtype').show();	
	} );
});
</script>

<cfsetting showdebugoutput="true" >