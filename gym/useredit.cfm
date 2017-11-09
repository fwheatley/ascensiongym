<!--- First handle security.  if the user is not Authenticated get the login page --->

<cfif not len(getAuthUser())>
	<cfinclude template="#Application.webroot#security/login.cfm">
</cfif>

<!--- Set a local variable that contains the username we want information for.  If the user is in the administrator group it is 
possible for url.member to be passed to get information	about other users. --->

<cfif isDefined("url.person") AND isUserInRole("Administrator")>
	<cfset variables.person = url.person>
<cfelse>
	<cfset variables.person = GetAuthUser()>
</cfif>

<!--- Invoke the state component to get a query called state. --->

<cfinvoke component="com.state" method="get" returnvariable="state"></cfinvoke>

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
		if(theForm.password.value != '' ||  theForm.vPassword.value !='') {
			formRequired(theForm.password,'You need to enter a Password.');
			formIsAlphaNumeric(theForm.password,'Please enter a valid Password.');
			formRequired(theForm.vPassword,'You need to verify your Password.');
			formIsAlphaNumeric(theForm.vPassword,'Please enter a valid verification Password.');
			if(formSubmit) {
				formIsSame(theForm.vPassword,theForm.password,'Your password and verifictation password do not match.');
			};
		}

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

<cfoutput> 
	<h2>Welcome #GetAuthUser()#!</h2> 
</cfoutput> 
 
ALL Logged-in Users see this message.<br> 
<br> 
<cfscript>	
	if (IsUserInRole("admin")) 
		WriteOutput("admin<br><br>"); 
    if (IsUserInRole("member")) 
		WriteOutput("member<br><br>"); 
    if (IsUserInRole("rental admin")) 
		WriteOutput("rental admin<br><br>"); 
    if (IsUserInRole("permit admin")) 
		WriteOutput("permit admin<br><br>"); 
    if (IsUserInRole("super admin")) 
		WriteOutput("super admin<br><br>"); 
</cfscript> 

<form action="<cfoutput>#GetURL()#</cfoutput>" method="post" enctype="application/x-www-form-urlencoded" name="Member" onSubmit="return submitForm(this)">
	<input type="hidden" name="memberID" value="<cfoutput>#user.userid#</cfoutput>">
	<table width="567" border="0" align="center" cellpadding="0" cellspacing="3" id="formContainer">
			<tr> 
				<td nowrap><div align="right">First Name</div></td>
				<td><input name="fname" type="text" tabindex="1" title="First Name" value="<cfoutput>#person.fname#</cfoutput>" size="25" maxlength="50"></td>
				<td nowrap><div align="right">Last Name</div></td>
				<td><input name="lname" type="text" tabindex="2" title="Last Name" value="<cfoutput>#person.lname#</cfoutput>" size="25" maxlength="50"></td>
			</tr>
			<tr> 
				<td nowrap><div align="right">Username</div></td>
				<td style="color : red;"> : <cfoutput>#person.userName# <input type="hidden" name="userName" value="#person.userName#"></cfoutput></td>
				<td nowrap><div align="right">Email</div></td>
				<td><input name="email" type="text" tabindex="4" title="Email" value="<cfoutput>#person.email#</cfoutput>" size="25" maxlength="50"></td>
			</tr>
			<tr> 
				<td nowrap><div align="right">Change Password</div></td>
				<td><input name="password" type="password" tabindex="5" title="Password" value="" size="25" maxlength="15"></td>
				<td nowrap><div align="right">Verify Password Change</div></td>
				<td><input name="vPassword" type="password" tabindex="6" title="Verify Password" value="" size="25" maxlength="15"></td>
			</tr>
			<tr> 
				<td nowrap><div align="right">Street Address</div></td>
				<td colspan="3"><input name="address1" type="text" tabindex="7" title="Street Address" value="<cfoutput>#person.address1#</cfoutput>" size="73" maxlength="100"></td>
			</tr>
			<tr> 
				<td>&nbsp;</td>
				<td colspan="3"><input name="address2" type="text" tabindex="8" title="Street Address" value="<cfoutput>#person.address2#</cfoutput>" size="73" maxlength="100"></td>
			</tr>
			<tr> 
				<td nowrap><div align="right">City</div></td>
				<td><input name="city" type="text" tabindex="9" title="City" size="25" value="<cfoutput>#person.city#</cfoutput>" maxlength="50"></td>
				<td nowrap><div align="right">State/Province </div></td>
				<td>
				<SELECT NAME="state" size="1" id="state" style="width:150;" tabindex="10" title="State/Province">
				<OPTION VALUE="0" selected> Select State/Province </OPTION>
				<cfoutput query="state">
					<OPTION VALUE="#state.state#"> #state.name# </OPTION>#chr(10)#
				</cfoutput>
				</SELECT>
				</td>
			</tr>
			<tr> 
				<td nowrap></td>
				<td> </td>
				<td nowrap class="small"><div align="right">Zip Code</div></td>
				<td class="small"> <input name="zip" type="text" tabindex="12" title="Postal Code" value="<cfoutput>#person.zip#</cfoutput>" size="25" maxlength="50"></td>
			</tr>
			<tr> 
				<td colspan="4"><div align="center"><input name="Submit" type="submit" value="Update Member Information"></div></td>
			</tr>
	</table>
</form>