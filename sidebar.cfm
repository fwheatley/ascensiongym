<div id="sidebar">
	<cfoutput>
	<ul>
	<cfif request.sSite EQ "church">				
		<li class="firstmenu"><a href="#request.homeURL#/index.cfm">Parish Home</a></li>
		<li><a href="#request.homeURL#/welcome.cfm">Welcome Message</a></li>
		<li><a href="#request.homeURL#/newmember.cfm">New Member Info</a></li>
		<li><a href="#request.homeURL#/contactus1.cfm">Contact Us</a></li>
		<li><a href="#request.homeURL#/ministerschedule.cfm">Minister Schedule</a></li>
		<!---<li><a href="#request.homeURL#/committees/committees.cfm">Activities & Committees</a></li>--->
	 	<li><a href="#request.homeURL#/sacraments.cfm">Sacraments</a></li>
		<li><a href="#request.homeURL#/youthministry.cfm">Youth Ministry</a></li>
		<!---<li><a href="#request.homeURL#/photos.cfm">Photo Gallery</a></li>--->
		<li><a href="https://mail.ascension-parish.com/owa" target="_blank">Staff E-mail</a></li>
	 	<!---<li><a href="#request.homeURL#/school/index.cfm">Ascension SCHOOL SITE</a></li>--->
	 	<li><a href="#request.homeURL#/ere.cfm">ERE (Evening Religious Edu.)</a></li>
		<li><a href="#request.homeURL#/amenbible.cfm">A. Men Bible Study</a></li>
		<li><a href="#request.homeURL#/summerpicnic.cfm">Summer Festival</a></li>
	<cfelseif request.sSite EQ "school">
	 	<li class="firstmenu"><a href="index.cfm">School Home</a></li>
	 	<li><a href="#request.homeURL#/school/schoolnews.cfm">Newsletter</a></li>
		<li><a href="#request.homeURL#/school/welcome.cfm">Welcome Message</a></li>
	 	<li><a href="#request.homeURL#/school/aboutus.cfm">About Us </a></li>
	 	<li><a href="#request.homeURL#/school/contactus.cfm">Contact Us</a></li>
	 	<li><a href="#request.homeURL#/school/pdf/ascension13-14.pdf" target="_blank">Calendar</a></li>
	 	<li><a href="#request.homeURL#/school/pdf/lunch.pdf" target="_blank">Lunch Menu</a></li>
	 	<li><a href="#request.homeURL#/school/tuition.cfm">Tuition Rates</a></li>
	 	<li><a href="#request.homeURL#/school/admission.cfm">Admission Information </a></li>
	 	<li><a href="#request.homeURL#/school/jrkindergarten.cfm">3 Year Old Preschool /<br />Jr. Kindergarten </a></li>
	 	<li><a href="#request.homeURL#/school/pdf/Ascension School Parent and Student Handbook 2013.pdf" target="_blank">Parent/Student Handbook</a></li>
	 	<li><a href="http://power-school.ascension-parish.com/teachers/pw.html" target="_blank">PowerSchool Teachers</a></li>
	 	<li><a href="https://mail.ascension-parish.com/owa" target="_blank">Staff E-mail</a></li>
	 	<li><a href="#request.homeURL#/school/schoolboard.cfm">School Board Minutes </a></li>
	 	<li><a href="http://power-school.ascension-parish.com/public/home.html"> PowerSchool Parents Login</a></li>
		<li><a href="#request.homeURL#/students/index.cfm">The Longhorn </a></li>

	<cfelseif request.sSite EQ "committees">
		<li class="firstmenu"><a href="index.cfm">Committees Home</a></li>
	 	<li><a href="parish.cfm?">Parish Council</a></li>
	 	<li><a href="finance.cfm">Finance Committee</a></li>
	 	<li><a href="worship.cfm?">Worship Committee</a></li>
	  	<li><a href="building.cfm">Building & Grounds Committee</a></li>
		<li><a href="athletic.cfm">Athletic Ministry</a></li>
		<li><a href="school.cfm">School Board</a></li>
		<li><a href="pto.cfm">PTO Board</a></li>
		<li><a href="summer.cfm">Summer Picnic Committee</a></li>
	
	<cfelseif request.sSite EQ "athletics">
		<li class="firstmenu"><a href="index.cfm">Athletics Home</a></li>
		<li><a href="gym.cfm">Gym Schedule</a></li>
		<li><a href="football.cfm">Football</a></li>
		<li><a href="boysvball.cfm">Boys Volleyball</a></li>
	</cfif>
	</ul>
	</cfoutput>
	<br />
</div>