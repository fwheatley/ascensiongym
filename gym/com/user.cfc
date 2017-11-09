<cfcomponent>
<!---<cffunction access="public" name="adduser" output="false" returntype="numeric" displayname="Insert User Security Data" hint="This method inserts a username and a hashed password into the security table. It returns the userID.">
	<cfargument required="true" name="username" type="string"/>
	<cfargument required="true" name="password" type="string"/>
	<cfargument required="true" name="personID" type="numeric"/>
	
	<cfquery>
	INSERT INTO security( username, password, personid)
	VALUES (
		<cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR" maxlength="50"/>,
		<cfqueryparam value="#hash(arguments.password)#" cfsqltype="CF_SQL_VARCHAR" maxlength="100"/>,
		<cfqueryparam value="#arguments.personID#" cfsqltype="CF_SQL_INTEGER"/>)
	</cfquery>
	  
	<cfquery name="getUserID" datasource="#application.dsn#">
		SELECT ID
		FROM user
		WHERE username = <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR" maxlength="50"/>
		AND password = <cfqueryparam value="#hash(arguments.password)#" cfsqltype="CF_SQL_VARCHAR" maxlength="100"/>
	</cfquery>
	<cfreturn getUserID.ID>
</cffunction>--->

<cffunction access="public" name="authenticate" output="false" returntype="Struct" displayname="Authenticates a user and returns a comma delimited list of roles">
	<cfargument name="userid" type="string" required="1"/>
	<cfargument name="password" type="string" required="1"/>
	
	<cfset var strLocal = structNew()>
	
	<cfquery name="authenticate">
		SELECT role.role, userrole.roleid, user.userid, user.userfname, user.userlname
		FROM user, userrole, role
		WHERE user.userid = userrole.userid
		  AND role.roleid = userrole.roleid
		  AND user.userid = <cfqueryparam value="#arguments.userid#" cfsqltype="CF_SQL_VARCHAR" maxlength="50">
		  AND user.pass = <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR" maxlength="50">
	</cfquery>

	<cfif authenticate.recordCount>
		<cfset strLocal.roleList = ValueList(authenticate.role)>
		<cfset strLocal.nUserId = authenticate.userid>
		<cfset strLocal.bLoginOk = 1>
		
		<cfset var x = addUserLog(arguments.userid, "login")>
	<cfelse>
		<cfset strLocal.roleList = "">
		<cfset strLocal.nPersonId = 0>
		<cfset strLocal.bLoginOk = 0>
	</cfif>

	<cfreturn strLocal />

</cffunction>

<cffunction access="public" name="addUserLog" output="false" returntype="boolean" displayname="Insert Userlog" hint="This method inserts into userlog.">
	<cfargument name="userName" type="string" required="1"/>
	<cfargument name="event" type="string" required="1"/>
	
	<cfset var strLocal = structNew()>
	
	<cfquery name="strLocal.qMaxSeq">
		select max(seq) as seq
		from userlog
		where userid = <cfqueryparam value="#arguments.userName#" cfsqltype="CF_SQL_VARCHAR" maxlength="50">
	</cfquery>
	
	<cfif len(strLocal.qMaxSeq.seq)>
		<cfset strLocal.nSeq = strLocal.qMaxSeq.seq + 1>
	<cfelse>
		<cfset strLocal.nSeq = 1>		
	</cfif>
	
	<cfset strLocal.myDateTime = CreateODBCDateTime(now())>
		
	<cfquery>
	 	INSERT INTO userlog(userid, seq, event, eventdate)
	 	VALUES (
			<cfqueryparam value="#arguments.userName#" cfsqltype="CF_SQL_VARCHAR" maxlength="50">,
			<cfqueryparam value="#strLocal.nSeq#" cfsqltype="CF_SQL_INTEGER"/>,
			<cfqueryparam value="#arguments.event#" cfsqltype="CF_SQL_VARCHAR" maxlength="50"/>,
			<cfqueryparam value="#strLocal.myDateTime#" cfsqltype="cf_sql_timestamp"> )
	</cfquery>
	
	<cfreturn 1/>
</cffunction>

<!---<cffunction access="public" name="changePassword" output="false" returntype="boolean" roles="Member" displayname="Change Password" hint="Changes a users password.">
	<cfargument name="memberID" type="numeric" required="true"/>
	<cfargument name="password" type="string" required="true"/>
	<cfquery name="changePassword">
	 UPDATE SECURITY
	 SET PASSWORD = <cfqueryparam value="#hash(arguments.password)#" cfsqltype="CF_SQL_VARCHAR" maxlength="100"/>
	 WHERE memberID = <cfqueryparam value="#arguments.memberID#" cfsqltype="CF_SQL_INTEGER" maxlength="10"/>
	  </cfquery>
	<cfreturn 1>
</cffunction>
--->

<cffunction access="public" name="getUsers" output="false" returntype="query" roles="Administrator" displayname="Get all Usernames" hint="This method returns all usernames and associated memberID.">

	<cfquery name="getUsers">
		SELECT userid, pass FROM user
	</cfquery>
	<cfreturn getUsers/>
</cffunction>

<cffunction access="public" name="getID" output="false" returntype="numeric" roles="Member" displayname="get Security ID" hint="It returns the securityID.">
	<cfargument required="true" name="username" type="string"/>

	<cfquery name="getID">
	 SELECT ID, personid
	 FROM user
	 WHERE USERNAME = <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR" maxlength="50"/>
	  </cfquery>
	<cfreturn getID.ID/>
</cffunction>

<cffunction access="public" name="getPerson" output="false" returntype="Struct" roles="Member" displayname="get Security ID" hint="It returns the securityID.">
	<cfargument required="true" name="userid" type="string" />

	<!--- create struct to store local variables only used in method --->
	<cfset var strLocal = structNew()>

	<cfquery name="strLocal.qPerson">
	 SELECT userid, userlname, userfname
	 FROM user
	 WHERE userid = <cfqueryparam value="#arguments.userid#" cfsqltype="CF_SQL_VARCHAR" maxlength="10"/>
	  </cfquery>
	<cfreturn strLocal />
</cffunction>

<cffunction access="public" name="getUserLogEvent" output="false" returntype="query" roles="Member" displayname="get last passed event in userlog by user" hint="It returns login history.">
	<cfargument name="event" type="string" required="1"/>
	
	<!--- create struct to store local variables only used in method --->
	<cfset var strLocal = structNew()>

	<cfquery name="strLocal.qLastUserLogEvent">
		select count(1) as cnt, a.userid, max(a.eventdate) as eventdate, b.userfname, b.userlname
		from userlog a, user b
		where a.userid = b.userid
		  and event = <cfqueryparam value="#arguments.event#" cfsqltype="CF_SQL_VARCHAR" maxlength="50">
		group by userid
		order by eventdate desc
	</cfquery>
	<cfreturn strLocal.qLastUserLogEvent />
</cffunction>

<cffunction access="public" name="getUsersRoles" output="false" returntype="string" displayname="ADMIN Authenticates a user and returns a comma delimited list of roles">
	<cfargument name="userName" type="string" required="1"/>
	
	<cfquery name="getUsersRoles">
		SELECT role.role
		FROM user, userrole, role
		WHERE 
			user.personid = userrole.personid AND
			userrole.roleid = role.roleid AND
			user.username = <cfqueryparam value="#arguments.userName#" cfsqltype="CF_SQL_VARCHAR" maxlength="50">
	</cfquery>
	<cfif getUsersRoles.recordCount>
		<cfreturn ValueList(getUsersRoles.role)/>
	<cfelse>
		<cfreturn 0/>
	</cfif>
</cffunction>
	
<cffunction access="public" name="joinRole" output="false" returntype="boolean" displayname="Insert Security Data" hint="This method inserts a username and a hashed password into the security table. It returns the securityID.">
	<cfargument required="true" name="role" type="string"/>
	<cfargument required="true" name="securityID" type="numeric"/>
		
	<cfquery>
	  INSERT INTO securityLink(
		role,
		securityID)
	 VALUES (
		<cfqueryparam value="#arguments.role#" cfsqltype="CF_SQL_VARCHAR" maxlength="50"/>,
		<cfqueryparam value="#arguments.securityID#" cfsqltype="CF_SQL_INTEGER"/>)
	  </cfquery>
	<cfreturn 1/>
</cffunction>

</cfcomponent>