<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="mysqlds" driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost:3306/test" user="root" password="root"/>
 <sql:update dataSource="${mysqlds}" var="status" >
            
           
            INSERT INTO department(dept_name, start_date) VALUES (?,?);
            <sql:param value="${param.dept_name}"></sql:param>
            
            <sql:param value="${param.start_date}"></sql:param>
        </sql:update>
       <core:if test="(${status }==0)">
       <core:out value="error"></core:out>
      
      </core:if>
      <core:redirect url="read.jsp"></core:redirect>
    
      
</body>
</html>