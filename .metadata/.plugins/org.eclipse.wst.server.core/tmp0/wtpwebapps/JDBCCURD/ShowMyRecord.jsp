<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>EMPLOYEE Details</h1>
	<form action="showRec.jsp" method="post">
		<label for="eid">Enter Employee id : </label>
		<input type="text" name="eid" id="eid" /><br />
		<input type="submit" value="Show Details">
	</form>

</body>
</html>