<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int cid = Integer.parseInt(request.getParameter("cid"));
String fname = request.getParameter("fname");
String fhname = request.getParameter("fhname");
String lname = request.getParameter("lname");
String uname = request.getParameter("uname");
String upass = request.getParameter("upass");
long amt = Long.parseLong(request.getParameter("uamt"));
String uadd = request.getParameter("uadrs");
String uph = request.getParameter("uph");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin");
String sql ="insert into account (cust_id, first_name, father_husband_name, last_name, user_name, password, balance, address, phno) values (?,?,?,?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1, cid);
ps.setString(2, fname);
ps.setString(3,fhname);
ps.setString(4, lname);
ps.setString(5, uname);
ps.setString(6, upass);
ps.setLong(7, amt);
ps.setString(8, uadd);
ps.setString(9, uph);

int i = ps.executeUpdate();
if(i>0)
	out.print("<h1 align='center'>Account Created Sucessful....</h1>");
else
	out.print("<h1>Error in Account Creation. </h1>");
}catch(Exception e){
	out.print(e);
}
%>
</body>
</html>