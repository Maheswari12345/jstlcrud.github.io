
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read Page</title>
</head>
<body>

<a href="index.jsp">Home</a>
<center>
<h1>DEPARTMENT TABLE</h1></center>

<table border="1">
  <tr>
       <th>ID</th>
       <th>Department Name</th>
       <th>Start Date</th>
       <th>Actions</th>
  </tr>
  <sql:setDataSource var="mysqlds" driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost:3306/test" user="root" password="root"/>
  
     <sql:query var="rs" dataSource="${mysqlds}">select * from department</sql:query>
     <core:forEach items="${rs.rows}" var="dept">
      <tr>
           <td><core:out value="${dept.dept_id }"></core:out></td>
            <td><core:out value="${dept.dept_name}"></core:out></td>
             <td><core:out value="${dept.start_date }"></core:out></td>
             <td> <a href="edit.jsp?dept_id=${dept.dept_id}">Edit</a>|<a href="delete.jsp?dept_id=${dept.dept_id} ">Delete</a></td>
      
      <tr>
     
     </core:forEach>
</table>

</body>
</html>






