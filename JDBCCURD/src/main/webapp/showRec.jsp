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
	String eid = request.getParameter("eid");
	out.println("<h1 align='center'> Employee Details <h1>");
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin");
	PreparedStatement ps = con.prepareStatement("SELECT * FROM registration where name=?");
	ps.setString(1, eid);
	ResultSet rs = ps.executeQuery();
	ResultSetMetaData rsm = rs.getMetaData();
	out.println("<table border='1' align='center'>");
		out.println("<tr>");
		int n=rsm.getColumnCount();
		for(int i=1;i<=n;i++)
			out.println("<td>"+rsm.getColumnName(i)+"</td>");
		out.println("</tr>");
		while(rs.next()){
			out.println("<tr>");
			for(int i=1;i<=n;i++)
				out.println("<td style='Color:blue;'>"+rs.getString(i)+"</td>");
			out.println("</tr>");
		}
	out.println("</table>");
	con.close();
	}catch(Exception e){
		out.println("Error : "+e);
	}finally{
		out.println("<a href='UserHome.jsp'>Back</a>");
	}
%>
</body>
</html>