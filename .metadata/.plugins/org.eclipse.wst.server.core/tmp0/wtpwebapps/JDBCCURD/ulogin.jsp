<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String Name = request.getParameter("email");
String Password = request.getParameter("pass");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
//out.println("Loaded....");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin"); 
//out.println("Connected....");
PreparedStatement ps = con.prepareStatement("select * from registration where Name=? and Password=?");
ps.setString(1,Name);
ps.setString(2, Password);
ResultSet rs = ps.executeQuery();

if(rs.next())
	response.sendRedirect("UserHome.jsp");
else
	out.println("<h1 align='center'>Not Authorized parson</h1>");

}catch(Exception e){
	out.println(e);
}
%>
</body>
</html>