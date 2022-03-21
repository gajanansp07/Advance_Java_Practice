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
	top: 5px;
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
	<header>
		<nav>
			<ul>
				<li><a href="home.jsp"> Home </a></li>
				<li><a href="newact.jsp"> NEW ACCOUNT </a></li>
				<li><a href="chkbal.jsp"> BALANCE </a></li>
				<li><a href="deposit.jsp"> DEPOSIT</a></li>
				<li><a href="withdraw.jsp"> WITHDRAW </a></li>
				<li><a href="tranfer.jsp"> TRANSFER </a></li>
				<li><a href="contactus.jsp"> Contact US </a></li>
				<li><a href="aboutus.jsp"> About Us </a></li>
				<li><a href="tandc.jsp"> Terms and Conditions </a></li>
			</ul>
		</nav>
	</header>
	      <iframe name="iframe_home" height="600px" width="100%" title="Iframe Example"></iframe>
</Body>
</Html>
