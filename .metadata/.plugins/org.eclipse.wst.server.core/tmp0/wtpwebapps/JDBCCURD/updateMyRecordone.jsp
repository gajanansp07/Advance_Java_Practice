<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%	
String email = request.getParameter("NAME");
if(email != null)
{
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con	= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin");
	
	//String mytest="UPDATE registration SET PASSWORD='ADMIN', COUNTRY='India' where email='ganesh@gmail.com'";
	String sql ="Update registration SET name=?, password=?, email=?, phone=?, gender=?, address=?, country=? where name="+email;
	out.println(email);
	PreparedStatement ps =con.prepareStatement(sql);
	
	String ename = request.getParameter("NAME");
	String epass = request.getParameter("PASSWORD");
    email = request.getParameter("EMAIL");
	String eph = request.getParameter("PHONE");
	String egn = request.getParameter("GENDER");
	String eadd = request.getParameter("ADDRESS");
	String econ = request.getParameter("COUNTRY");
	
	ps.setString(1, ename);
	ps.setString(2, epass);
	ps.setString(3, email);
	ps.setString(4, eph);
	ps.setString(5, egn);
	ps.setString(6, eadd);
	ps.setString(7, econ);
	
	int i = ps.executeUpdate();
	if(i>0)
		out.print("<h1 align='center'>Updated Succefull......</h1>");
	else
		out.print("<h1 align='center'>Error in Update......</h1>");
	}catch(Exception e){
		request.setAttribute("ERROR : ", e);
		out.print(e);
	}
}else{
	out.print("<h1 align='center'> Provide id to Update......</h1>");
}
%>

</body>
</html>