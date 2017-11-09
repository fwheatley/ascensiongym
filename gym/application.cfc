<cfcomponent> 
<cfset This.name = "athletics"> 
<cfset This.Sessionmanagement="True"> 
<cfset This.loginstorage="session"> 
<cfset This.datasource = "athletics">
 
<cffunction name="OnRequestStart"> 
	<cfargument name = "request" required="true"/> 

	<cfset request.sSchoolName = "Ascension Athletics">
	
	<cflogin>
		<cfif NOT IsDefined("cflogin")> 
			<cfinclude template="login.cfm"> 
			<cfabort> 
		<cfelse> 
 			<cfif cflogin.name IS "" OR cflogin.password IS ""> 
				<cfoutput> 
  				<h2>You must enter text in both the User Name and Password fields.</h2> 
				</cfoutput> 
				<cfinclude template="loginform.cfm"> 
				<cfabort> 
			<cfelse> 
				<cfscript>
				oUser = createObject("component","com.user");
				strUser=oUser.authenticate(cflogin.name,cflogin.password);
				session.nUserId = cflogin.name;
				//session.nPersonId = strUser.nPersonId;
				</cfscript>
				<cfif strUser.bLoginOk>
					<cfif session.nUserId NEQ "fwheatley">
						<cfmail from="admin@frankwheatley.net" subject="Ascension gym login" to="frank@wheatley.net" >
						Login: <cfoutput>#cflogin.name#</cfoutput><br />
						<cfoutput>#now()#</cfoutput><br /><br /><br />
						</cfmail>
					</cfif>

					<cfloginuser name="#cflogin.name#" password="#cflogin.password#" roles="#strUser.roleList#">
					<cfset session.bLoggedIn = 1>
					<cflocation url="index.cfm"> 
				<cfelse> 
					<cfoutput> 
					<H2>Your login information is not valid.<br>Please Try again</H2> 
					<cfset session.bLoggedIn = 0>
					</cfoutput>     
					<cfinclude template="login.cfm"> 
					<cfabort> 
				</cfif> 
			</cfif>     
		</cfif> 
	</cflogin> 
	
	<cfif isdefined("session.nPersonId") AND session.nPersonId EQ 1>
		<cfsetting showdebugoutput="true" >
	<cfelse>
		<cfsetting showdebugoutput="false" >
	</cfif>
</cffunction> 
</cfcomponent>