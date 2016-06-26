<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<table class="page" cellpadding="2" cellspacing="2" align="center">
		<tr>
			<td class="header" height="30" colspan="2"><tiles:insertAttribute
					name="header" /></td>
		</tr>
		<tr>
			<td class="menu"><tiles:insertAttribute name="menu" /></td>
			<td><tiles:insertAttribute name="body" /></td>
		</tr>
		<tr>
			<td class="footer" colspan="2"><tiles:insertAttribute
					name="footer" /></td>
		</tr>
	</table>
</body>
</html>