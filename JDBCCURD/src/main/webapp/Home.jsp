<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body{
background-color: antiquewhite;
}
    .topnav {
  background-color: #333;
  overflow: hidden;
}
    .topnav a {
  float: left;
  color: #96f7ea;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  border-radius: 2em;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: rgb(62, 90, 245);
  color: black;
  border-radius: 2em;
}
iframe {
    margin-top: 10%;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: rgb(62, 90, 245);
  color: #09f3d4;
  border-radius: 2em;
}
div#header {
    background-color: antiquewhite;
    text-align: center;
}
</style>
</head>
<body>
    <div id="header">
        <h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
    </div>
    <div class="topnav">
        <a class="active" href="Home.jsp">Home</a>
        <a href="aboutus.jsp" target="iframe_home" >AboutUs</a>
        <a href="contactus.jsp" target="iframe_home">ContactUS</a>
        <a href="register.jsp" target="iframe_home" >Register</a>
        <a href="login.jsp" target="iframe_home" >Login</a>
      </div>
      <iframe name="iframe_home" height="600px" width="100%" title="Iframe Example"></iframe>

</body>
</html>