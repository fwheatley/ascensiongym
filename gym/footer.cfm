    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
 
	
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

	<cfif isdefined("variables.flot") AND variables.flot EQ "Y">
		<!-- Flot Charts JavaScript -->
	    <script src="js/plugins/flot/excanvas.min.js"></script>
	    <script src="js/plugins/flot/jquery.flot.js"></script>
	    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
	    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
	    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	    <script src="js/plugins/flot/flot-data.js"></script>
	</cfif>

	<cfif isdefined("variables.index") AND variables.index EQ "Y">
    	<!-- Morris Charts JavaScript -->
    	<!---<script src="js/plugins/morris/raphael.min.js"></script>
    	<script src="js/plugins/morris/morris.min.js"></script>
    	<script src="js/plugins/morris/morris-data.js"></script>--->
	</cfif>
	
	<cfif isdefined("variables.morris") AND variables.morris EQ "Y">
		<!-- Morris Charts JavaScript -->
	    <script src="js/plugins/morris/raphael.min.js"></script>
	    <script src="js/plugins/morris/morris.min.js"></script>
	    <script src="js/plugins/morris/morris-data.js"></script>
	</cfif>

	<cfif isdefined("variables.tables") AND variables.tables EQ "Y">
	    <!-- DataTables JavaScript -->
	    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
	    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

	    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
	    <script>
	    $(document).ready(function() {
	        $('#dataTables-example').dataTable();
	    });
	    </script>
	</cfif>
	
    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>