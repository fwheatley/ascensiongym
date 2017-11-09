<!--- if getAuthUser() has no length the user needs to be looking at a login page. --->
<cfif not len(getAuthUser())>
<!--- if url.newMember isDefined this user just signed up and needs a confirmation --->
	<cfif isDefined("url.newMember")>
		<cfset request.loginmessage = "You are now a member ... Please login.">
	<cfelse>
		<cfset request.loginmessage = "You must be a member to access that area ... Please login.">
	</cfif>
	<cfinclude template="#Application.machineRoot#security/login.cfm">
</cfif>

<!--- If a user is logged in they are considered a Member so display content --->
<cfoutput><h3>Member</h3></cfoutput>