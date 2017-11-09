<cfcomponent>

	<cffunction access="public" name="getItemByType" output="false" returntype="query" roles="Member" displayname="Get Itemr Info" hint="">
		<cfargument required="true" name="itemtype" type="string"/>
		<cfquery name="getItem">
			SELECT item.itemid, item.itemtype, item.itemdesc, item.itemprice
			FROM item
			WHERE item.itemtype = <cfqueryparam value="#arguments.itemtype#" cfsqltype="CF_SQL_VARCHAR" maxlength="50">
			ORDER BY item.itemorder
		</cfquery>
		<cfreturn getItem>
	</cffunction>


<!---
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
 --->


</cfcomponent>