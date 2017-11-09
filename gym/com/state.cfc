<cfcomponent displayname="State Component" hint="Deals with states and provinces">
	
	<cffunction name="get" access="public" returntype="query">
		
		<cfquery blockfactor="65" name="getStates">
			Select STATE, NAME
			from state
			order by NAME
		</cfquery>
		<cfreturn getStates>
	</cffunction>
</cfcomponent>