<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ include file="header.jsp" %>


<sql:setDataSource var="cms" url="jdbc:mysql://localhost:3306/cms"
	driver="com.mysql.cj.jdbc.Driver" user="root" password="root" />

<sql:query dataSource="${cms}" var="result">	SELECT * FROM batch	</sql:query>

<br> STUDENT LIST
<table border=1>
	<tr>		
		<th>Session Name
		<th>SHOW DETAILS
		<th>EDIT
		
	</tr>

	<c:forEach var="row" items="${result.rows}">
		<tr>			
			<td><c:out value="${row.first_name}" />
			<td><a href="Batch-details.jsp?id=${row.batch_id}" > SHOW DETAILS </a>
			<td><a href="Batch-edit.jsp?id=${row.batch_id}" > EDIT </a>
			
		</tr>
	</c:forEach>

</table>

