<cfset oUser = createObject("component","com.user")>
<cfset strPerson = oUser.getPerson(session.nUserId)>

<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="index.cfm"><cfoutput>#request.sSchoolName#</cfoutput></a> 
    <div class="navbar-brand"> <cfoutput>#strPerson.qPerson.userfname# #strPerson.qPerson.userlname#</cfoutput></div>
</div>
<!-- /.navbar-header -->

<ul class="nav navbar-top-links navbar-right">
	<li>
		<a<cfif variables.page EQ "logout.cfm"> class="active"</cfif> href="logout.cfm"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
	</li>
	<li>
		<a<cfif variables.page EQ "useradmin.cfm"> class="active"</cfif> href="useradmin.cfm"><i class="fa fa-files-o fa-fw"></i> User Admin</a>
	</li>
 </ul>
<!-- /.navbar-top-links -->