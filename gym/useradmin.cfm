<cfset variables.page = "useradmin.cfm">

<cfinclude template="header.cfm" >
	
<cfscript>
	// this function gets called to determine the form actions.
	function getURL() {
		theURL = CGI.script_name;
		if(CGI.query_string NEQ '') {
			theURL=theURL & '?#CGI.query_string#';
		}
		return theURL;
	}
</cfscript>
	
<div id="wrapper">
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
	<cfinclude template="topnav.cfm" >
	<cfinclude template="sidenav.cfm" >
	</nav>

	<!-- Page Content -->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">User Administration</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>

		<div class="row">
			<div class="col-lg-12">
				<cfif not len(getAuthUser()) OR NOT isUserInRole("Administrator")>
					<cfset request.loginmessage = "<br>You must be authorized to access that area ... Please login.">
				</cfif>
				
				<cfscript>
				user = createObject("component","com.user");
				role = createObject("component","com.role");
				getUsers = user.getUsers();
				getRoles = role.getRoles();
				</cfscript>
		
				<!--- Begin output of Admin area --->
				<h3>Member Admin Area</h3>
				
				<!--- provide a select box populated with the getMembers query returned from the invocation	of the security object. This gives the Administrator the ability to select a user to edit.--->
				<p>Select a username </p>
				<form name="selectUserForm">
					<select name="selectUser" onChange="MM_jumpMenu('parent',this,0)">
					<cfif isDefined("url.member") AND url.member NEQ "">
						<!--- Get a specific users data --->
						<cfset variables.theName=url.member>
					<cfelse>
						<!--- Get a the logged in users data --->
						<cfset variables.theName=getAuthUser()>
					</cfif>
					<cfoutput query="getUsers">
						<option value="#CGI.script_name#?member=#getUsers.userid#" <cfif variables.theName EQ getUsers.userid>SELECTED</cfif>>#getUsers.userid#</option>
					</cfoutput>
					</select>
				</form>

				<!--- Since each of these pages are written to be sulf sufficient all we need to do is include the edit.cfm template to provide the full functionality of	the edit page.--->
				<cfinclude template="useredit.cfm">
				
				<!--- if form.roles isdefined we need to update the users roles. --->
				<cfif isDefined("form.FIELDNAMES")>
					<cfscript>
					oRole = createObject("component","#Application.cfcroot#.role");
					oSecurity = createObject("component","#Application.cfcroot#.security");
					roles = oRole.getRoles(Application.dsn);
					securityID = oSecurity.getID(Application.dsn,member.username);
					temp = oRole.clear(Application.dsn,securityID);
					
					form.roles = ValueList(roles.role);
					</cfscript>
					
					<!--- for each role that was checked we need to assign it to the Member. --->
					<cfscript>
					for(i=1;i LTE listLen(form.roles);i=i+1) {
						if(isDefined("form.#GetToken(form.roles,i,',')#")) {
							Role.join(Application.dsn,GetToken(form.roles,i,','),securityID);
						}
					}
					</cfscript>
				</cfif>
				
				<!--- Invoke the security component to get a query of this members roles. --->
				<cfinvoke component="com.user" method="getUsersRoles" returnvariable="getUsersRoles">
				<cfinvokeargument name="userName" value="#variables.theName#">
				</cfinvoke>
					
				<!--- Output the interface for the roles --->
				<form name="Roles" action="admin.cfm<cfif isDefined("url.member")>?member=<cfoutput>#url.member#</cfoutput></cfif>" method="post" enctype="application/x-www-form-urlencoded">
				<div align="center">
					<input type="hidden" name="id" value="<cfoutput>#session.nUserId#</cfoutput>">
					<cfscript>
					rows=ceiling(getRoles.recordcount/3);
					counter=1;
					</cfscript>
					<table cellpadding="3" cellspacing="3">
						<cfloop index="i" from="1" to="#variables.rows#">
							<cfoutput>
							<tr>
								<td align="right">&nbsp;<cfif counter LTE getRoles.recordcount>#getRoles.role[counter]# <input name="#getRoles.role[counter]#" type="checkbox"<cfif ListFindNoCase(getUsersRoles, getRoles.role[counter])> CHECKED</cfif>><cfset counter=counter+1></cfif></td>
								<td align="right">&nbsp;<cfif counter LTE getRoles.recordcount>#getRoles.role[counter]# <input name="#getRoles.role[counter]#" type="checkbox"<cfif ListFindNoCase(getUsersRoles, getRoles.role[counter])> CHECKED</cfif>><cfset counter=counter+1></cfif></td>
								<td align="right">&nbsp;<cfif counter LTE getRoles.recordcount>#getRoles.role[counter]# <input name="#getRoles.role[counter]#" type="checkbox"<cfif ListFindNoCase(getUsersRoles, getRoles.role[counter])> CHECKED</cfif>><cfset counter=counter+1></cfif></td>
							</tr>
							</cfoutput>
						</cfloop>
					</table>
				
					<input type="submit" value="Update Roles">
				
				</div>
				</form>
<cfoutput>#hash('stregis1953')#</cfoutput>

			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<cfinclude template="footer.cfm" >