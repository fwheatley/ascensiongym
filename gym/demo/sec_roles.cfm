<!--- First handle security.  if the user is not Authenticated
	or the user is not in the Administrator role get the login
	page --->

<cfif not len(getAuthUser()) OR NOT isUserInRole("Administrator")>
	<cfinclude template="#Application.webroot#security/login.cfm">
</cfif>

<cfscript>
	if(isDefined("form.action") AND form.action neq "") {
		Role = createObject("component","#Application.cfcroot#.role");
		switch(form.action)
		{
		  case "add":
				isDuplicate = Role.isDuplicate(Application.dsn,form.role);
				if(not isDuplicate) {
					status=Role.add(Application.dsn,form.role);
				} else {
					variables.error="That would create a duplicate role.";
				}
				break;
		  case "update":
				status = Role.update(Application.dsn,form.id,form.role);
				break;
		  case "delete":
				status = Role.delete(Application.dsn,form.role);
				break;
		}
	}
</cfscript>

<cfinvoke component="#Application.cfcroot#.role" method="getRoles" returnvariable="getRoles">
	<cfinvokeargument name="dsn" value="#Application.dsn#">
</cfinvoke>

<cfsetting enablecfoutputonly="no">
<cfif isDefined("variables.error")><h3><cfoutput>#variables.error#</cfoutput></h3></cfif>
<cfif isDefined("variables.status") AND variables.status><h3><cfoutput>Success</cfoutput></h3>
<cfelseif isDefined("variables.status") AND NOT variables.status><h3><cfoutput>Error</cfoutput></h3></cfif>
<form action="<cfoutput>#CGI.script_name#</cfoutput>" name="addRole" method="post" enctype="application/x-www-form-urlencoded">
<input type="hidden" name="action" value="add">
<input type="text" name="role" value="">
<input type="Submit" value="Add">
</form>
<cfoutput query="getRoles">
<form action="#CGI.script_name#" name="role#getRoles.currentrow#" method="post" enctype="application/x-www-form-urlencoded">
<input type="text" name="role" value="#getRoles.role#">
<input type="hidden" name="ID" value="#getRoles.ID#">
<input type="hidden" name="action" value="">
<input type="Button" value="Update" onClick="this.form.action.value='update';this.form.submit();">
<input type="Button" value="Delete" onClick="this.form.action.value='delete';this.form.submit();">
</form>
</cfoutput>
<cfsetting enablecfoutputonly="yes">