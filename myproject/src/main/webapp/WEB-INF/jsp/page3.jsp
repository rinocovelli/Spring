<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"
	type="text/javascript"></script>
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
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js" ></script>
	
</head>
<body>
	<a href="#" id="popover">the popover link</a>
	<div class="dropdown">
		<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
			data-toggle="dropdown">
			Topics <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Java</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Data Mining</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#"> Data Communication/Networking </a></li>
			<li role="presentation" class="divider"></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Separated link</a></li>
		</ul>
	</div>



	<div id="popover-head" class="hide">some title</div>
	<div id="popover-content" class="hide">
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
				<td><form:select id="city" path="city" items="${listOfCity}" required="true" multiple="false" size="${size}" /></td>
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
				<td colspan="2">
				<button id="close" type="button" value="Close popover" onclick="closePopover()" >Close popover</button>
			</tr>

		</table>
	</form:form>
	
	</div>


</body>
<script type="text/javascript">

	$(document).ready(function(){
		$("#showHideToggle").click(function(){
			$("#city").fadeIn();
		
		});
		
		$(function ()
				 { $("[data-toggle='popover']").popover();
				 });
		

		$(".popover-show").click(function(){
			debugger;
			$(".popover-show").popover('show');
		});
		
		$('#popover').popover({ 
		    html : true,
		    title: function() {
		      return $("#popover-head").html();
		    },
		    content: function() {
		      return $("#popover-content").html();
		    }
		});
		
		$("#close").click(function(){
			$('#popover').popover('hide');
		});
		
		$("#showHideToggle").click(function(){
			$("#city").fadeIn();
		});
		
	});
	

	function closePopover(){
		$('#popover').popover('hide');
	}



</script>
</html>
