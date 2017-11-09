<!--- If form.email isDefined we need to process the form --->
<cfscript>
	if(isDefined("form.email")) {
		Member = createObject("component","#Application.cfcRoot#.member");
		Security = createObject("component","#Application.cfcRoot#.security");
		if(Member.isDuplicate(Application.dsn,form.username,form.email)) {
			variables.message="Either the username or email you entered already exist in the system ... Please Try Again.";
		} else {
			variables.memberID = Member.add(Application.dsn,form.email,form.firstName,form.lastName,form.streetAddress,form.streetAddress1,form.city,form.state,form.country,form.postalCode);
			variables.securityID = Security.addMember(Application.dsn,form.username,form.password,variables.memberID);
			Security.joinRole(Application.dsn,"Member",variables.securityID);
		}
	}
</cfscript>

<!--- the following block of code is for initialization only
	it should be removed in production code --->
<cfif isDefined("variables.memberID")>
	<cfquery name="theCount" datasource="#Application.dsn#">
		select count(id) as count
		from member
	</cfquery>
	<cfif theCount.count EQ 1>
	<cfscript>
		Security.joinRole(Application.dsn,"Administrator",variables.securityID);
	</cfscript>
	</cfif>
</cfif>
<!--- End initialization code --->

<cfif isDefined("variables.memberID")><cflocation url="index.cfm?newMember=1" addtoken="no"></cfif>

<!--- Invoke the state component to get the states in a query called state. --->

<cfinvoke component="#Application.cfcRoot#.state" method="get" returnvariable="state">
	<cfinvokeargument name="dsn" value="#Application.dsn#">
</cfinvoke>

<!--- Invoke the country component to return the query country. --->

<cfinvoke component="#Application.cfcRoot#.country" method="get" returnvariable="country">
	<cfinvokeargument name="dsn" value="#Application.dsn#">
</cfinvoke>

<!--- Begin the layout of the membership form ... First import the javascript form library --->

<cfsetting enablecfoutputonly="no">
<script language='JavaScript' src='../_js/js_form.js'></script>
<script>
	// theForm is passed in as an object onsubmit of the form.
	// first call the appropriate functions from the library.
	// The if statement is mandatory.  The variables get defined in the library.

	function submitForm(theForm) {
		// validate firstName
		formRequired(theForm.firstName,'You need to enter a First Name.');
		formIsAlphaNumeric(theForm.firstName,'Please enter a valid First Name');
		
		//validate lastName
		formRequired(theForm.lastName,'You need to enter a Last Name.');
		formIsAlphaNumeric(theForm.lastName,'Please enter a valid Last Name');
		
		//validate userName
		formRequired(theForm.userName,'You need to enter a Username.');
		formIsAlphaNumeric(theForm.userName,'Please enter a valid Username');
		
		// validate password and vpassword
		formRequired(theForm.password,'You need to enter a Password.');
		formIsAlphaNumeric(theForm.password,'Please enter a valid Password.');
		formRequired(theForm.vPassword,'You need to verify your Password.');
		formIsAlphaNumeric(theForm.vPassword,'Please enter a valid verification Password.');
		if(formSubmit) {
			formIsSame(theForm.vPassword,theForm.password,'Your password and verifictation password do not match.');
		};

		// validate email
		formRequired(theForm.email,'You need to enter an Email Address.');
		if(formSubmit) {
			formIsEmail(theForm.email,'Please enter a valid Email Address.');
		}
				
		if(formSubmit) {
			return true;
		} else {
			formAlert();
			return false;
		}
	}
</script>
<cfif isDefined("variables.message")><h3><cfoutput>#variables.message#</cfoutput></h3><cfelse><h3>Become a member</h3></cfif>
<form action="<cfoutput>#getURL()#</cfoutput>" method="post" name="newMember" onSubmit="return submitForm(this)">
<table width="567" border="0" align="center" cellpadding="0" cellspacing="3" id="formContainer">
        <tr> 
          <td width="84" nowrap> 
<div align="right">First Name</div></td>
          <td width="183"> 
            <input name="firstName"<cfif isDefined("form.firstName")> value="<cfoutput>#form.firstName#</cfoutput>"</cfif> type="text" tabindex="1" title="First Name" size="25" maxlength="50"></td>
          <td width="100" nowrap> 
            <div align="right">Last Name</div></td>
          <td width="185"> 
            <input name="lastName" type="text" tabindex="2" title="Last Name" size="25" maxlength="50"></td>
        </tr>
        <tr> 
          <td height="26" nowrap> 
<div align="right">Username</div></td>
          <td> <input name="userName" type="text" tabindex="3" title="Username" size="25" maxlength="50"></td>
          <td nowrap>
            <div align="right">Email</div></td>
          <td><input name="email" type="text" tabindex="4" title="Email" size="25" maxlength="50"></td>
        </tr>
        <tr> 
          <td nowrap>
<div align="right">Password</div></td>
          <td> <input name="password" type="password" tabindex="5" title="Password" size="25" maxlength="15"></td>
          <td nowrap>
            <div align="right">Verify Password</div></td>
          <td> <input name="vPassword" type="password" tabindex="6" title="Verify Password" size="25" maxlength="15"></td>
        </tr>
        <tr> 
          <td nowrap>
<div align="right">Street Address</div></td>
          <td colspan="3"><input name="streetAddress" type="text" tabindex="7" title="Street Address" size="73" maxlength="100"></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
          <td colspan="3"><input name="streetAddress1" type="text" tabindex="8" title="Street Address" size="73" maxlength="100"></td>
        </tr>
        <tr> 
          <td height="24" nowrap> 
<div align="right">City</div></td>
          <td> <input name="city" type="text" tabindex="9" title="City" size="25" maxlength="50"></td>
          <td nowrap>
            <div align="right">State/Province </div></td>
          <td>
			<SELECT NAME="state" size="1" id="state" style="width:150;" tabindex="10" title="State/Province">
			<OPTION VALUE="0" selected> Select State/Province </OPTION>
             <cfoutput query="state"><OPTION VALUE="#state.ID#"> #state.name# </OPTION>#chr(10)#</cfoutput> 
            </SELECT>
			</td>
        </tr>
        <tr> 
          <td nowrap>
<div align="right">Country </div></td>
          <td>
				<SELECT NAME="country" size="1" id="country" style="width:150;" tabindex="11" title="Country">
<OPTION VALUE="0" selected> Select Country </OPTION>
             <cfoutput query="country"><OPTION VALUE="#country.ID#"> #country.name# </OPTION>#chr(10)#</cfoutput>
            </SELECT>
		  </td>
          <td nowrap class="small">
            <div align="right">Postal Code</div></td>
          <td class="small"> <input name="postalCode" type="text" tabindex="12" title="Postal Code" size="25" maxlength="50"></td>
        </tr>
        <tr> 
          <td colspan="4"><div align="center">
              <input name="Submit" type="submit" value="Join">
            </div></td>
        </tr>
      </table>
  </form>
<cfsetting enablecfoutputonly="yes">