<cfset variables.page = "gate.cfm">

<cfinclude template="header.cfm" >

<style>
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

.qty {
    width: 40px;
    height: 28px;
	text-align: center;
	margin-right: 10px;
    margin-left: 10px;
}

#total {
	font-size: 32px;
	font-weight: bold;
	color: black;
    line-height: 45px;
	margin-top:0px;
	width:320px;
	float: right; 
}

</style>

<cfif isdefined("form.next")>
	<cfdump var="#form#">
</cfif>

<cfscript>
oGym = createObject("component","com.gym");
qGate = oGym.getItemByType("gatecsaa");
</cfscript>

<div id="wrapper">
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		<cfinclude template="topnav.cfm" >
		<cfinclude template="sidenav.cfm" >
	</nav>

	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Gate</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						Gate Options
					</div>

					<div class="panel-body">
						<form id="myform" method="POST" action="gate.cfm">
						
						<div class="row">
							<div class="col-md-5">
								<cfoutput query="#qGate#">
									<div class="menuitem">
										<button type="button" class="dec btn-danger btn-circle btn" id='#qGate.itemid#Dec' field='#qGate.itemid#Qty' value="#qGate.itemprice#">
											<i class="fa fa-minus"></i>
										</button>
										<input type='text' name='#qGate.itemid#Qty' id='#qGate.itemid#Qty' value='0' class='qty' />
										<button type="button" class="inc btn-success btn-circle btn" id='#qGate.itemid#Inc' field='#qGate.itemid#Qty' value="#qGate.itemprice#">
											<i class="fa fa-plus"></i>
										</button>
										#qGate.itemdesc# <!--- #dollarformat(qGate.itemprice)#--->
									</div>
									<br />
								</cfoutput>
							</div>
							<div class="col-md-4 menucontainer">
								<div align="center">
									<input type='submit' value='Clear' id='clear' style="color:grey;" />
								</div>
								<br />
							
								<div id='total' align="center">Total:&nbsp;&nbsp;&nbsp;$0.00</div>
								
								<cfoutput query="#qGate#">
									<div id="#qGate.itemid#Sub" class="subtotal">#qGate.itemdesc#</div>	
								</cfoutput>
															
							</div>
						</div>	
						
						<div class="row">
							<div class="col-md-4" align="center">
								<input type='submit' value='Next' name="next" id="next" class="submit-button" id='complete' />
							</div>
						</div>
						
						</form>
					</div>			
				</div>
			</div>
		</div>
	</div>
</div>
	
	
		<cfset dtToday = CreateDate( Year(Now()), Month(Now()), Day(Now()) )>
		<cfset dtToday = dateadd("d", -1, dtToday)>
		<hr />
<!---	
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
	
</div>

<cfinclude template="footer.cfm" >

<script>
$(document).ready(function() {
	$('.subtotal').hide();
	
	$("tr:odd").addClass("odd");

	$('#clear').click(function(e){
		e.preventDefault();
		$('.inc').css("color","white");
		$('.dec').css("color","white");
		
		<cfoutput query="#qGate#">
		var sItemId = '##'+#qGate.itemid#+'Qty';
		$(sItemId).val(0);
		</cfoutput>
		
		$('.subtotal').hide();
		$("#total").html('Total:&nbsp;&nbsp;&nbsp;$0.00');

	});

	$('.inc').click(function(e){
		e.preventDefault();
		$('.inc').css("color","white");
		$('.dec').css("color","white");
		$(this).css("color","black");
		fieldName = $(this).attr('field');
		fieldValue = $(this).val();

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
		$('.inc').css("color","white");
		$('.dec').css("color","white");
		$(this).css("color","black");
		fieldName = $(this).attr('field');
		fieldValue = $(this).val();
		var currentVal = parseInt($('input[name='+fieldName+']').val());
		if (!isNaN(currentVal) && currentVal > 0) {
			$('input[name='+fieldName+']').val(currentVal - 1);
		} else {
			$('input[name='+fieldName+']').val(0);
		}
		calc();
	});

function calc(){
	var nSubTotal = 0;
	var nTotal = 0;
	
	$('.subtotal').hide();
	
	<cfoutput query="#qGate#">
	var sItemId = '##'+#qGate.itemid#+'Qty';
	var sItemDesc = '#qGate.itemdesc#';
	var sItemId =  parseInt($(sItemId).val());

	if (sItemId > 0) {
		var sItemSub = '##'+#qGate.itemid#+'Sub';
		$(sItemSub).html(sItemId+' #qGate.itemdesc#');
		$(sItemSub).show();
		nSubTotal = sItemId*#qGate.itemprice#;
	}
	nTotal = nTotal + nSubTotal;
	nSubTotal = 0;
	</cfoutput>
	
//	nTotal = ffishQty*5+slawQty*1.5;
//	nTotal = parseFloat(Math.round(nTotal * 100) / 100).toFixed(2);
	
	$("#total").html('Total:&nbsp;&nbsp;&nbsp;$'+nTotal);   
}

});
</script>


