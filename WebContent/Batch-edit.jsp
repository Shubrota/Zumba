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

<center>Edit Student</center>


<form action="student-edit-save.jsp" method="post">	
	<input type="hidden" name="batch_id" value="${result.rows[0].batch_id}"> <br>
	First Name : <input name="batch_name" value="${result.rows[0].batch_name}"> <br>
	Last Name : <input name="session_day" value="${result.rows[0].session_day}"> <br>
	DOB : <input name="session_time" value="${result.rows[0].session_time}"> <br>
	
	<br><input type="submit" value="EDIT & SAVE"> <br>
	
	
</form>

<a href="index.jsp"> Back to Home</a>