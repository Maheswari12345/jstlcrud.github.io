
		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert page</title>
</head>
<body>
<a href="index.jsp">Home</a>
	<h1 align="center">add a new record</h1>
	<form action="insertaction.jsp">
		<table>
			<tr>
				<th>column name</th>
				<th>value</th>
			</tr>
			
			<tr>
				<td>dept_name</td>
				<td><input type="text" name="dept_name" required="required">
				</td>
			</tr>
			<tr>
				<td>date</td>
				<td><input type="date" name="start_date" required="required">
				</td>
			</tr>
		
			<tr>
				<td><input type="reset" value="clear"></td>
				<td><input type="submit" value="submit"></td>
			</tr>

	

		</table>
	</form>

</body>
</html>