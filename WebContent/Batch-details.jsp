<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ include file="header.jsp" %><br><br>

<sql:setDataSource var="cms" url="jdbc:mysql://localhost:3306/cms"
	driver="com.mysql.cj.jdbc.Driver" user="root" password="rootroot" />

<sql:query dataSource="${cms}" var="result">	
SELECT * FROM batch where batch_id=<%=request.getParameter("id") %>	
</sql:query>

<br> STUDENT DETAILS<hr>
<table border=1>
	<tr>
		<th>batch_id
		<th>batch_name
		<th>session_day
		<th>session_time
	</tr>

	<c:forEach var="row" items="${result.rows}">
		<tr>
			<td><c:out value="${row.batch_id}" />
			<td><c:out value="${row.batch_name}" />
			<td><c:out value="${row.session_day}" />
			<td><c:out value="${row.session_time}" />
		</tr>
	</c:forEach>

</table>