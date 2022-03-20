<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
td {
    padding: 10px;
}
</style>
</head>
<body>
	<h1 id="jd_log_hdng" align="center">Employee Login</h1>
	<form action="ulogin.jsp" method="post">
	<table align="center">
		<tr>
			<td>User Id : </td>
			<td><input type="text" name="email"> </td>
		</tr>
		<tr>
			<td>Password : </td>
			<td><input type="text" name="pass"> </td>
		</tr>
		<tr align="center"> <td colspan=2> <input type="submit" value="Login" id="login"> </td> </tr>
	</table>
	</form>
</body>
</html>