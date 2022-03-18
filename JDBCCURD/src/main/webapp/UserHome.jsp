<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div#sub-menu {
    text-align: center;
}
a.uhome {
	background: #03e9f4;
    font-size: 2em;
    border: 2px solid gray;
    padding: 2px;
    border-radius: 15px;
    text-decoration: none;
}
a.uhome:hover {
    background-color: #333333;
    color: #96f7ea;
    border: 2px solid;
	box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4, 0 0 200px #03e9f4;
}
</style>
</head>
<body>
	<h1 align="center">WELCOME TO USER HOME PAGE</h1>
	<br>
	<div id="sub-menu">
	<a href="ShowMyRecord.jsp" class="uhome"  target="iframe_home">ShowMyRecord</a>
	<a href="UpdateRecord.jsp" class="uhome"  target="iframe_home">UpdateRecord</a>
	<a href="DeleteRecord.jsp" class="uhome" target="iframe_home">DeleteRecord</a>
	<a href="ShowAllEMployee.jsp" class="uhome" target="iframe_home">ShowAllRecords</a>
	</div>
	<a href="Home.jsp" target="_parent">Back</a>
</body>
</html>