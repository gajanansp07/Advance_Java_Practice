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
<h1 align="center"> All Employee Details </h1>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from registration");
ResultSetMetaData rsm = rs.getMetaData();
int n=rsm.getColumnCount();
out.println("<table align='center' border='1'><tr>");
for(int i=1;i<=n;i++)
	out.println("<th>"+rsm.getColumnName(i)+"</th>");
out.println("</tr>");
while(rs.next()){
	out.println("<tr>");
	for(int i=1;i<=n;i++)
		out.println("<td>"+rs.getString(i)+"</td>");
	out.println("</tr>");
	}
	con.close();
}catch(Exception e){
	out.println(e);
}finally{
	out.println("<a href='UserHome.jsp'>Back</a>");
}
%>

</body>
</html>