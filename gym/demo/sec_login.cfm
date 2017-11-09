<!--- If an error message was generated display it. --->
<cfif isDefined("request.loginMessage")>
	<cfoutput><h3>#request.loginMessage#</h3></cfoutput>
</cfif>

<!--- Begin the login form layout. --->
<cfoutput><script language='JavaScript' src='#Application.webroot#_js/js_form.js'></script></cfoutput>
<cfsetting enablecfoutputonly="no">
<script>
	// theForm is passed in as an object onsubmit of the form.
	// first call the appropriate functions from the library.
	// The if statement is mandatory.  The variables get defined in the library.

	function submitForm(theForm) {
		// validate userName
		formRequired(theForm.j_username,'You need to enter a Username.');
		formIsAlphaNumeric(theForm.j_username,'Please enter a valid Username.');

		// validate password
		formRequired(theForm.j_password,'You need to enter a Password.');
		formIsAlphaNumeric(theForm.j_password,'Please enter a valid Password.');

		if(formSubmit) {
			return true;
		} else {
			formAlert();
			return false;
		}
	}
</script>
<form action="<cfoutput>#CGI.script_name#</cfoutput>" method="post" onsubmit="return submitForm(this)">
	<table width="100" border="0" cellspacing="0" cellpadding="3">
	  <tr> 
		<td>Username</td>
		<td><input name="j_username" type="text" tabindex="3" title="Username" size="25" maxlength="50"></td>
	  </tr>
	  <tr> 
		<td>Password</td>
		<td><input name="j_password" type="password" tabindex="5" title="Password" size="25" maxlength="15"></td>
	  </tr>
	  <tr> 
		<td height="25" colspan="2"><div align="center"> 
			<input name="Submit" type="submit" value="Log In">
		  </div></td>
	  </tr>
	</table>
</form>
<cfsetting enablecfoutputonly="yes">

<!--- Use cfabort to ensure all processing stops here. --->
<cfabort>