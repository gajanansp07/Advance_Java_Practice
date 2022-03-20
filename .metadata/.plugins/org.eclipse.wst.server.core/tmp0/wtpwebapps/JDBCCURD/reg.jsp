<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String Name = request.getParameter("ename");
	String Password = request.getParameter("epas");
	String Email = request.getParameter("email");
	String Phone = request.getParameter("ephone");
	String Gender = request.getParameter("gender");
	String Address = request.getParameter("add");
	String Country = request.getParameter("country");

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		out.println("Driver Loaded.....");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "admin", "admin");
		out.println("Connection Established.....");
		PreparedStatement ps = con.prepareStatement("insert into registration values(?,?,?,?,?,?,?)");
		ps.setString(1, Name);
		ps.setString(2, Password);
		ps.setString(3, Email);
		ps.setString(4, Phone);
		ps.setString(5, Gender);
		ps.setString(6, Address);
		ps.setString(7, Country);

		int n = ps.executeUpdate();
		out.println("<br> N = " + n);
		if (n != 0)
			out.println(n + "Record Inserted.....");
		else
			out.println("Not Ok");
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>