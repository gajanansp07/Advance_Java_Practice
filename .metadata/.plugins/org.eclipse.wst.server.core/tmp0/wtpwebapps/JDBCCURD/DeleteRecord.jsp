<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.delrec {
    margin-top: 121px;
}
.delemp {
    padding: 2em;
}
</style>
</head>
<body>
	<div class="delrec" align="center">
	<form action="delRec.jsp" method="post" target="iframe_home">
	<div class="delemp">
	<label for="email">Enter Employee id : </label>
	<input type="text" name="name" id="email" /></div>
	<div class="delemp">
	<input type="submit" value="Delete">
	</div>
	</form>
	</div>
</body>
</html>