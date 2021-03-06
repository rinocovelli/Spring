<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
    <!-- Bootstrap core CSS -->
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery UI CSS -->
    <link href="//code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" type="text/css" rel="stylesheet">
    <!-- Bootstrap styling for Typeahead -->
    <link href="dist/css/tokenfield-typeahead.css" type="text/css" rel="stylesheet">
    <!-- Tokenfield CSS -->
    <link href="dist/css/bootstrap-tokenfield.css" type="text/css" rel="stylesheet">
    <script src="dist/bootstrap-tokenfield.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>


<title></title>

</head>
<body>
	<h2>Page 1</h2>
	<form:form id="myform" method="POST" action="login.html" modelAttribute="user" >
		<table>
			<tr>
				<td>Name (required)</td>
				<td><form:input id="name" path="name" required="true" /></td>
			</tr>
			<tr>
				<td>Surname (required)</td>
				<td><form:input id="surname" path="surname"  required="true"  /></td>
			</tr>
			<tr>
				<td>Zip code (required)</td>
				<td><form:input id="zipCode"  path="zipCode" required="true"  /></td>
			</tr>
			<tr>
				<td>City (required)</td>
				<td><form:select id="city" path="city" items="${listOfCity}" required="true" multiple="true" /></td>
			</tr>
			
			<tr>
				<td>Colors (required)</td>
				<td><form:input type="text" class="form-control" id="tokenfield" value="red,green,blue" path ="" required="true" lkpType="CMS" /></td>
			</tr>
			
			<tr>
				<td></td>
				<td><label class="cmsValidationError" ></label></td>
			</tr>
			
			<tr>
				<td colspan="2"><input id="myButton" type="submit" value="Save Changes" /></td>
			</tr>

		</table>
	</form:form>
</body>
<script type="text/javascript">

	$(document).ready(function(){
		
		 $("#myform").validate({
			errorPlacement: function(error, element) {
				debugger;
			    if (element.attr("lkpType") == "CMS" )
			        error.insertAfter(".cmsValidationError");
			    else
			        error.insertAfter(element);
			}	
		});
		
		
		$("#myButton").click(function(){
			debugger;
			if($("#myform").valid())
				console.log("Risultato validazione ok ");
			else
				console.log("Risultato validazione ko ");
		});
		
// 		jQuery.validator.addMethod('selectcheck', function (value) {
// 			debugger;
// 	        return (value != '0');
// 	    }, "year required");
		
		$('#tokenfield').tokenfield({
			  autocomplete: {
			    source: ['red','blue','green','yellow','violet','brown','purple','black','white'],
			    delay: 100
			  },
			  showAutocompleteOnFocus: true
			})
		
	});



</script>
</html>
