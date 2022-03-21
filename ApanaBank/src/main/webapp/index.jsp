<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type=text/css>
body {
	height: 125vh;
	margin-top: 80px;
	padding: 30px;
	background-size: cover;
	font-family: sans-serif;
}

header {
	background-color: orange;
	position: fixed;
	left: 0;
	right: 0;
	top: 150px;
	height: 30px;
	display: flex;
	align-items: center;
	box-shadow: 0 0 25px 0 black;
}

header * {
	display: inline;
}

header li {
	margin: 20px;
}

header li a {
	color: blue;
	text-decoration: none;
}
</style>
</Head>
<Body>
	<header name="heder" height="150px" width="100%">
	<div id="hedimg">
	</div>
		<nav>
			<ul>
				<li><a href="index.jsp" target="_parent"> Home </a></li>
				<li><a href="newact.jsp" target="iframe_home"> NEW ACCOUNT </a></li>
				<li><a href="chkbal.jsp" target="iframe_home"> BALANCE </a></li>
				<li><a href="deposit.jsp" target="iframe_home"> DEPOSIT</a></li>
				<li><a href="withdraw.jsp" target="iframe_home"> WITHDRAW </a></li>
				<li><a href="tranfer.jsp" target="iframe_home"> TRANSFER </a></li>
				<li><a href="contactus.jsp" target="iframe_home"> Contact US </a></li>
				<li><a href="aboutus.jsp" target="iframe_home"> About Us </a></li>
				<li><a href="tandc.jsp" target="iframe_home"> Terms and Conditions </a></li>
			</ul>
		</nav>
	</header>
	      <div id="iframe_home" height="500px" width="100%" title="Iframe Example"></div>
</Body>
</Html>
