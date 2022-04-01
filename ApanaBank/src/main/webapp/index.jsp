<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.js" type="text/javascript">
	$("#nav a").click(function(e){
    e.preventDefault();
    $(".toggle").hide();
    var toShow = $(this).attr('href');
    $(toShow).show();
});
</script>
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
	position: relative;
	left: 0;
	right: 0;
	top: 9%;
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
iframe {
    margin-top: 8%;
}
div#hedimg {
    background-image: url(Untitled.jpg);
}
</style>
</Head>
<Body>
	<div id="hedimg">
	</div>
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
				<li><a href="closeAcc.jsp" target="iframe_home"> Close Account </a></li>
				<li><a href="contactus.jsp" target="iframe_home"> Contact US </a></li>
				<li><a href="aboutus.jsp" target="iframe_home"> About Us </a></li>
				</ul>
		</nav>
	</header>      
	<iframe name="iframe_home" height="600px" width="100%" title="Iframe Example"></iframe>
</Body>
</Html>
