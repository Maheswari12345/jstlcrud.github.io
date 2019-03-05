<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="mysqlds" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/test" user="root" password="root" />

	<sql:query var="rs" dataSource="${mysqlds}">select * from department where dept_id="${param.dept_id}"
	
	</sql:query>
	<a href="index.jsp">Go Home</a>
	<form action="editaction.jsp">
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Department Name</th>
				<th>Start Date</th>

			</tr>

			<core:forEach items="${rs.rows}" var="dept" >
				<tr>
					<td><input type="text" value="${dept.dept_id }"
						name="dept_id"></td>
					<td><input type="text" value="${dept.dept_name}"
						name="dept_name"></td>
					<td><input type="date" value="${dept.start_date }"
						name="start_date"></td>
					<td><input type="submit" value="Update" /></td>
				<tr>`
			</core:forEach>

		</table>
	</form>
</body>
</html>