<cfcomponent output="false">

	<!--- Hardcoded var setup STARTS --->
	<cfset VARIABLE.sCurrEnv = "DEV">

	<cfscript>
    request.homeURL = "http://"&CGI.SERVER_NAME;
    this.mappings['/root'] = ExpandPath('/');

	switch (VARIABLE.sCurrEnv)
	{
		case "DEV":
			REQUEST.sCFAppName = "www-dev";
			REQUEST.sAppTimeout = CreateTimeSpan(0,0,10,0);
			REQUEST.sClientStorage = "WEBSERVER"; 
			REQUEST.sSchema = "TST1CIS";
			REQUEST.sDSN = "TST1CIS";
		break;
		
		case "PROD":
			REQUEST.sCFAppName = "www";
			REQUEST.sAppTimeout = CreateTimeSpan(7,0,0,0);
			REQUEST.sClientStorage = "WEBSERVERNEW";
			REQUEST.sSchema = "PRODCIS";
			REQUEST.sDSN = "WEBSERVER";		
		break;
	}
	</cfscript>

	<cfset this.name = REQUEST.sCFAppName>
	<cfset this.applicationTimeout = REQUEST.sAppTimeout>
	<cfset this.clientManagement = true>
	<cfset this.clientStorage = "cookie">
	<cfset this.sessionManagement = false>
	<cfset this.scriptProtect = "none">
	
	<!--- Run when application starts up --->
	<cffunction name="onApplicationStart" returnType="boolean" output="false">
		<cfreturn true>
	</cffunction>

	<!--- Run when application stops --->
	<cffunction name="onApplicationEnd" returnType="void" output="false">
		<cfargument name="applicationScope" required="true">
	</cffunction>

	<!--- Run before the request is processed --->
	<cffunction name="onRequestStart" returnType="boolean" output="false">
		<cfargument name="thePage" type="string" required="true">
	

		<cfreturn true>
	</cffunction>

	<!--- Runs at end of request --->
	<cffunction name="onRequestEnd" returnType="void" output="false">
		<cfargument name="thePage" type="string" required="true">
	</cffunction>

	<!--- Runs on error --->
	<cffunction name="onError" returnType="void" output="false">
		<cfargument name="exception" required="true" />
		<cfargument name="eventname" type="string" required="true" />

		<cfdump var="#arguments#">
		<!---<cfinclude template="error_req.cfm">--->
		
		<cfabort>
	</cffunction>



	<!--- Runs when your session starts --->
	<cffunction name="onSessionStart" returnType="void" output="false">
	</cffunction>

	<!--- Runs when session ends --->
	<cffunction name="onSessionEnd" returnType="void" output="false">
		<cfargument name="sessionScope" type="struct" required="true">
		<cfargument name="appScope" type="struct" required="false">
	</cffunction>

	<!--- Fired when user requests a CFM that doesn't exist. --->
	<cffunction name="onMissingTemplate" returnType="boolean" output="false">
		<cfargument name="targetpage" required="true" type="string">
		
		<cflocation url="#REQUEST.sHomeURL#missing.cfm?page=#arguments.targetpage#" addtoken="true">
		<cfreturn true />
	</cffunction>
	
</cfcomponent>